define = vtex.define || window.define
require = vtex.curl || window.require

define ['flight/lib/component',
        'shipping/setup/extensions',
        'shipping/models/Address',
        'shipping/mixin/withi18n'],
  (defineComponent, extensions, Address, withi18n) ->
    AddressForm = ->
      @defaultAttrs
        API: null
        data:
          address: null
          availableAddresses: []
          country: false
          postalCode: ''
          deliveryCountries: []
          disableCityAndState: false
          labelShippingFields: false
          showPostalCode: false
          showAddressForm: false
          showDontKnowPostalCode: true
          showSelectCountry: false
          addressSearchResults: {}
          countryRules: {}
          useGeolocation:
            'BRA': false
            'ARG': false
            'CHL': false
            'COL': false
            'PER': false
            'ECU': false
            'PRY': false
            'URY': false
            'USA': false

        templates:
          form:
            baseName: 'countries/addressForm'
          selectCountry:
            name: 'selectCountry'
            template: 'shipping/template/selectCountry'

        addressFormSelector: '.address-form-new'
        postalCodeSelector: '#ship-postal-code'
        forceShippingFieldsSelector: '#force-shipping-fields'
        stateSelector: '#ship-state'
        citySelector: '#ship-city'
        deliveryCountrySelector: '#ship-country'
        cancelAddressFormSelector: '.cancel-address-form a'
        submitButtonSelector: '.submit .btn-success.address-save'
        addressSearchBtSelector: '.address-search-bt'
        addressSearchSelector: '#address-search'
        mapCanvasSelector: '#map-canvas'
        clearAddressSearchSelector: '.clear-address-search'

        # Google maps variables
        map = null
        marker = null

      # Render this component according to the data object
      @render = ->
        data = @attr.data

        deps = [
          'shipping/translation/' + @attr.locale,
          @attr.templates.selectCountry.template
        ]
        require deps, (translation) =>
          if data.showSelectCountry
            @extendTranslations(translation)
            dust.render @attr.templates.selectCountry.name, data, (err, output) =>
              output = $(output).i18n()
              @$node.html(output)

          else if data.showAddressForm
            rules = @getCountryRule()
            data.statesForm = rules.states
            data.regexes = rules.regexes
            data.useGeolocation = rules.useGeolocation

            dust.render @attr.templates.form.name, data, (err, output) =>
              @extendTranslations(translation)
              output = $(output).i18n()
              @$node.html(output)

              if data.loading
                $('input, select, .btn', @$node).attr('disabled', 'disabled')

              if rules.citiesBasedOnStateChange
                @changeCities()
                if data.address.city
                  @select('citySelector').val(data.address.city)

              if rules.usePostalCode
                @select('postalCodeSelector').inputmask
                  mask: rules.masks.postalCode
                if data.labelShippingFields
                  @select('postalCodeSelector').addClass('success')

              @select('addressFormSelector').parsley
                errorClass: 'error'
                successClass: 'success'
                errors:
                  errorsWrapper: '<div class="help error-list"></div>'
                  errorElem: '<span class="help error"></span>'
                validators:
                  postalcode: =>
                    validate: (val) =>
                      rules = @attr.data.countryRules[@attr.data.country]
                      return rules.regexes.postalCode.test(val)
                    priority: 32

      # Helper function to get the current country's rules
      @getCountryRule = ->
        @attr.data.countryRules[@attr.data.address.country]

      # Validate the postal code input
      # If successful, this will call the postal code API
      @validatePostalCode = (ev, data) ->
        postalCode = data.el.value
        rules = @getCountryRule()
        if rules.regexes.postalCode.test(postalCode)
          @attr.data.throttledLoading = true
          @attr.data.postalCodeQuery = postalCode
          @attr.data.address?.postalCode = postalCode
          @attr.data.loading = true if rules.queryPostalCode
          @render()
          if rules.queryPostalCode
            @getPostalCode postalCode

      @clearAddressSearch = ->
        @trigger('clearSelectedAddress.vtex')
        @attr.data.postalCodeQuery = null
        @attr.data.address = null
        @attr.data.isSearchingAddress = true
        @render()

      # Call the postal code API
      @getPostalCode = (postalCode) ->
        @attr.API.getAddressInformation({
          postalCode: postalCode.replace(/-/g, '')
          country: @attr.data.country
        }).then(@handleAddressSearch.bind(this), @handleAddressSearchError.bind(this))

      # TODO getAddressFromGoogle

      @handleAddressSearch = (address) ->
        @attr.data.throttledLoading = false
        @attr.data.loading = false
        @attr.data.showAddressForm = true
        @attr.data.isSearchingAddress = false
        @attr.data.showDontKnowPostalCode = false
        @attr.data.labelShippingFields = address.neighborhood isnt '' and
          address.street isnt '' and
          address.state isnt '' and
          address.city isnt ''
        @attr.data.disableCityAndState = address.state isnt '' and address.city
        @attr.data.address = new Address(address)
        @render()

        # Montando dados para send attachment
        attachment =
          address: @attr.data.address,
          clearAddressIfPostalCodeNotFound: @getCountryRule()?.usePostalCode
        @attr.API?.sendAttachment('shippingData', attachment)

      @handleAddressSearchError = ->
        @attr.data.isSearchingAddress = false
        @attr.data.throttledLoading = false
        @attr.data.showAddressForm = true
        @attr.data.labelShippingFields = false
        @attr.data.disableCityAndState = false
        @attr.data.loading = false
        @render()

        # Montando dados para send attachment
        attachment =
          address: @attr.data.address,
          clearAddressIfPostalCodeNotFound: @getCountryRule()?.usePostalCode
        @attr.API?.sendAttachment('shippingData', attachment)

      # Able the user to edit the suggested fields
      # filled by the postal code service
      @forceShippingFields = ->
        @attr.data.labelShippingFields = false
        @render()

      # Get the current address typed in the form
      @getCurrentAddress = ->
        disabled = @select('addressFormSelector')
          .find(':input:disabled').removeAttr('disabled')

        serializedForm = @select('addressFormSelector')
          .find('select,textarea,input').serializeArray()

        disabled.attr 'disabled', 'disabled'
        addressObj = {}
        $.each serializedForm, ->
          #addressObj[@name] = @value
          addressObj[@name] = if (@value? and (@value isnt "")) then @value else null

        if addressObj.addressTypeCommercial
          addressObj.addressType = 'commercial'
        else
          addressObj.addressType = 'residential'

        addressObj.geoCoordinates = @attr.data.geoCoordinates

        return addressObj

      # Submit address to the server
      @submitAddress = (ev) ->
        if @select('addressFormSelector').parsley('validate')
          @attr.data.address = @getCurrentAddress()
          @trigger 'loading.vtex', true

          # limpa campo criado para busca do google
          if @attr.data.address.addressSearch is null
            delete @attr.data.address["addressSearch"]

          # Submit address object to API
          @attr.API.sendAttachment("shippingData", address: @attr.data.address)
        ev.preventDefault()

      # Select a delivery country
      # This will load the country's form and rules
      @selectCountry = (country) ->
        @attr.data.country = country
        @attr.data.showAddressForm = true
        @attr.data.showSelectCountry = false

        @attr.templates.form.name = @attr.templates.form.baseName + country
        @attr.templates.form.template = 'shipping/template/' + @attr.templates.form.name

        deps = [@attr.templates.form.template,
                @attr.templates.selectCountry.template,
                'shipping/rule/Country'+country]

        return require deps, (formTemplate, selectedCountryTemplate, countryRule) =>
          @attr.data.countryRules[country] = new countryRule()

      @addressMapper = (address) ->
        _.each @getCountryRule().googleDataMap, (rule) =>
          _.each address.address_components, (component) =>
            if _.intersection(component.types, rule.types).length > 0
              @attr.data[rule.value] = component[rule.length]

        @attr.data.geoCoordinates = [
          address.geometry.location.lng()
          address.geometry.location.lat()
        ]

        @render()

      @createMap = (location) ->
        mapOptions =
          zoom: 14
          center: location

        if not @attr.map?
          @attr.map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions)

        @attr.map.panTo(location)
        @attr.map.setZoom(14)

        if @attr.marker?
          @attr.marker.setMap(null)
          @attr.marker = null

        @attr.marker = new google.maps.Marker(position: location)
        @marker.setMap(@map)
        @select('mapCanvasSelector').fadeIn(500)

      @startGoogleAddressSearch = ->
        window.setTimeout( =>
          addressListResponse = []
          @select('addressSearchSelector').typeahead
            minLength: 3,
            matcher: -> true
            source: (query, process) ->
              geocoder = new google.maps.Geocoder()
              geocoder.geocode address: query, (response, status) =>
                if status is "OK" and response.length > 0
                  addressListResponse = response
                  itemsToDisplay = []
                  _.each response, (item) ->
                    itemsToDisplay.push item.formatted_address                  
                  process(itemsToDisplay)

            updater: (address) =>
              addressObject = _.find addressListResponse, (item) ->
                item.formatted_address is address
              @addressMapper(addressObject)
              @createMap(addressObject.geometry.location)          
        , 100)

      # Handle the selection event
      @selectedCountry = ->
        @clearAddressSearch()
        country = @select('deliveryCountrySelector').val()

        if country
          @selectCountry(country).then(@render.bind(this), @handleCountrySelectError.bind(this))

      @getDeliveryCountries = (logisticsInfo) =>
        _.uniq(_.reduceRight(logisticsInfo, (memo, l) ->
          return memo.concat(l.shipsTo)
        , []))

      # Close the form
      @cancelAddressForm = ->
        @attr.data.showAddressForm = false
        @attr.data.showSelectCountry = false
        @attr.data.loading = false
        @render()
        @trigger('showAddressList.vtex')

      # Change the city select options when a state is selected
      # citiesBasedOnStateChange should be true in the country's rule
      @changeCities = (ev, data) ->
        rules = @getCountryRule()
        return if not rules.citiesBasedOnStateChange

        state = @select('stateSelector').val()
        @select('citySelector').find('option').remove().end()

        for city of rules.map[state]
          elem = '<option value="'+city+'">'+city+'</option>'
          @select('citySelector').append(elem)

      # Change postal code according to the state selected
      # postalCodeByState should be true in the country's rule
      @changePostalCodeByState = (ev, data) ->
        rules = @getCountryRule()
        return if not rules.postalCodeByState

        state = @select('stateSelector').val()
        for city, postalCode of rules.map[state]
          break

        @select('postalCodeSelector').val(postalCode)
        @trigger('postalCode.vtex', postalCode)

      # Change postal code according to the city selected
      # postalCodeByCity should be true in the country's rule
      @changePostalCodeByCity = (ev, data) ->
        rules = @getCountryRule()
        return if not rules.postalCodeByCity

        state = @select('stateSelector').val()
        city = @select('citySelector').val()
        postalCode = rules.map[state][city]

        @select('postalCodeSelector').val(postalCode)
        @trigger('postalCode.vtex', @getCurrentAddress())

      # Set to a loading state
      # This will disable all fields
      @loading = (ev, data) ->
        @attr.data.loading = true
        @render()

      # Store new country rules in the data object
      @addCountryRule = (ev, data) ->
        _.extend(@attr.data.countryRules, data)

      # Call two functions for the same event
      @onChangeState = (ev, data) ->
        @changeCities(ev, data)
        @changePostalCodeByState(ev, data)

      @orderFormUpdated = (ev, data) ->
        if data.shippingData
          @attr.data.availableAddresses = data.shippingData.availableAddresses ? []
          @attr.data.deliveryCountries = @getDeliveryCountries(data.shippingData.logisticsInfo)
          @attr.data.address = new Address(data.shippingData.address, @attr.data.deliveryCountries)

      # Handle the initial view of this component
      @enable = (ev, address) ->
        ev?.stopPropagation()

        @attr.data.isSearchingAddress = not address
        @attr.data.address = new Address(address, @attr.data.deliveryCountries)

        if @attr.data.deliveryCountries.length > 1 and @attr.data.isSearchingAddress
          @attr.data.showSelectCountry = true

        @selectCountry(@attr.data.address.country).then(@render.bind(this), @handleCountrySelectError.bind(this))

      @handleCountrySelectError = (reason) ->
        console.error("Unable to load country dependencies", reason)

      @disable = (ev) ->
        if ev then ev.stopPropagation()
        @$node.html('')

      # Bind events
      @after 'initialize', ->
        @on 'enable.vtex', @enable
        @on 'disable.vtex', @disable
        @on 'loading.vtex', @loading
        @on window, 'orderFormUpdated.vtex', @orderFormUpdated
        @on window, 'localeSelected.vtex', @localeUpdate
        @on window, 'newCountryRule', @addCountryRule # TODO -> MELHORAR AQUI
        @on 'updateAddresses.vtex', @cancelAddressForm
        @on 'cancelAddressForm.vtex', @cancelAddressForm
        @on 'click',
          'forceShippingFieldsSelector': @forceShippingFields
          'cancelAddressFormSelector': @cancelAddressForm
          'submitButtonSelector': @submitAddress
          'addressSearchBtSelector': @searchAddress
          'clearAddressSearchSelector': @clearAddressSearch
        @on 'change',
          'deliveryCountrySelector': @selectedCountry
          'stateSelector': @onChangeState
          'citySelector': @changePostalCodeByCity
        @on 'keyup',
          'postalCodeSelector': @validatePostalCode

        if vtexjs?.checkout?.orderForm?
          @orderFormUpdated null, vtexjs.checkout.orderForm

    return defineComponent(AddressForm, withi18n)