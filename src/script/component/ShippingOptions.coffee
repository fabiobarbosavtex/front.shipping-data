define ['flight/lib/component',
        'shipping/script/setup/extensions',
        'shipping/script/mixin/withi18n',
        'shipping/script/mixin/withLogisticsInfo',
        'shipping/script/mixin/withValidation',
        'shipping/templates/shippingOptions',
        'shipping/templates/deliveryWindows'],
  (defineComponent, extensions, withi18n, withLogisticsInfo, withValidation, shippingOptionsTemplate, deliveryWindowsTemplate) ->
    ShippingOptions = ->
      @defaultAttrs
        data:
          shippingOptions: []
          logisticsInfo: []
          loading: false
          multipleSellers: false
          items: []
          sellers: []
          loadingShippingOptions: false

        isScheduledDeliveryAvailable: false
        pickadateFiles: ['shipping/script/libs/pickadate/picker',
                         'shipping/script/libs/pickadate/picker-date',
                         'link!shipping/script/libs/pickadate/classic.css',
                         'link!shipping/script/libs/pickadate/classic-date.css']

        shippingOptionSelector: '.shipping-option-item'
        pickadateSelector: '.datepicker'
        pickadateValueSelector: '.scheduled-sla-value'
        selectDeliveryDateSelector: '.scheduled-sla-select'
        pickadateValueContainer: '.scheduled-sla-value-container'
        deliveryWindowsTemplateSelector: '.scheduled-sla-time'
        deliveryWindowSelector: '.delivery-windows input[type=radio]'
        changeSlaSelector: '#change-sla-items-list'

      # Render this component according to the data object
      @render = ->
        options = @attr.renderOptions
        data = @attr.data

        requiredFiles = if @attr.isScheduledDeliveryAvailable then @attr.pickadateFiles else []
        vtex.curl requiredFiles, =>
          if options and options.template is 'deliveryWindows'
            # Pega o sla em questão
            data = @attr.data.shippingOptions[options.index].selectedSla

            dust.render deliveryWindowsTemplate, data, (err, output) =>
              return unless @attr.data.active
              output = $(output).i18n()
              @getDeliveryWindowsSelector(options.index).html(output)
              @attr.renderOptions = null
          else
            dust.render shippingOptionsTemplate, data, (err, output) =>
              return unless @attr.data.active
              output = $(output).i18n()
              @$node.html(output)

              @$node.find(".shipping-option-item input")
                .focus(-> $(this).parent().addClass("focus"))
                .blur(-> $(".shipping-option-item").removeClass("focus"))

              if options?.focusOnSelectedDelivery
                @$node.find(".shipping-option-item input[checked='checked']").focus()
                @attr.renderOptions = null

              # Caso tenha entrega agendada
              if @attr.isScheduledDeliveryAvailable
                @attr.locale = i18n.lng()
                # Coloca a tradução correta no pickadate
                if @attr.locale isnt 'en'
                  $.extend( $.fn.pickadate.defaults, vtex.pickadate[@attr.locale] )

                _.each @attr.data.shippingOptions, (so) =>
                  if so.selectedSla.isScheduled and
                    @getPickadateSelector(so.index).length > 0
                      # Instancia o picker apenas com as datas possíveis de entrega
                      @getPickadateSelector(so.index).pickadate
                        disable: [true].concat(so.selectedSla.deliveryDates)
                        container: '.shipping-option-'+so.index + ' ' + @attr.pickadateValueContainer
                      # Pega a instancia do picker
                      picker = @getPickadateSelector(so.index).pickadate('picker')
                      # Seleciona a data selecionada
                      if so.selectedSla.deliveryWindow.startDateUtc
                        picker.set 'select',
                          new Date(so.selectedSla.deliveryWindow.startDateUtc)
                        @getSelectDeliveryDateSelector(so.index)?.hide()
                        @getPickadateValueSelector(so.index)?.text(picker.get('value'))
                      else
                        picker.clear()

                      # Ao selecionar uma data, o evento é disparado
                      picker.on 'set', (context) =>
                        if context.select
                          @trigger('scheduleDateSelected.vtex', [so.index])

      @getDeliveryWindowsSelector = (shippingOptionIndex) ->
        $('.shipping-option-'+shippingOptionIndex + ' ' + @attr.deliveryWindowsTemplateSelector)

      @getPickadateSelector = (shippingOptionIndex) ->
        $('.shipping-option-'+shippingOptionIndex + ' ' + @attr.pickadateSelector)

      @getPickadateValueSelector = (shippingOptionIndex) ->
        $('.shipping-option-'+shippingOptionIndex + ' ' + @attr.pickadateValueSelector)

      @getSelectDeliveryDateSelector = (shippingOptionIndex) ->
        $('.shipping-option-'+shippingOptionIndex + ' ' + @attr.selectDeliveryDateSelector)

      @scheduleDateSelected = (ev, index) ->
        # Pega a data seleciona no pickadate
        picker = @getPickadateSelector(index)
        date = picker.pickadate('get', 'select')?.obj

        # Por default, pegamos a primeira delivery window para esta data
        shippingOptions = @attr.data.shippingOptions[index]
        @updateLogisticsInfoModel(shippingOptions, shippingOptions.selectedSla.id, @getCheapestDeliveryWindow(shippingOptions, new Date(date)))

        @getPickadateValueSelector(index).text(picker.pickadate('get', 'value'))
        @getSelectDeliveryDateSelector(index)?.hide()

        # Renderizamos as novas delivery windows para a data selecionada
        @attr.renderOptions =
          template: 'deliveryWindows'
          index: index
        @render()

      @openPickadateHandler = (ev, data) ->
        ev.stopPropagation()
        shippingOptionIndex = $(data.el).data('shipping-option')
        @openPickadate(shippingOptionIndex)

      @openPickadate = (shippingOptionIndex) ->
        picker = @getPickadateSelector(shippingOptionIndex).pickadate('open')

      @deliveryWindowSelected = (ev, data) ->
        # Pega o indice da delivery window
        deliveryWindowIndex = $(data.el).attr('value')
        # Pega shipping option
        shippingOptionIndex = $(data.el).data('shipping-option')
        shippingOptions = @attr.data.shippingOptions[shippingOptionIndex]

        # Pega o sla em questão
        sla = shippingOptions.selectedSla

        # Pega a delivery window através do seu indíce
        deliveryWindow = sla.deliveryWindowsForDate[deliveryWindowIndex]

        # Atualizamos o modelo
        @updateLogisticsInfoModel(shippingOptions, sla.id, deliveryWindow)

      @selectShippingOptionHandler = (ev, data) ->
        ev.preventDefault()
        if $(data.el).hasClass('active') then return
        selectedSla = $('input', data.el).attr('value')
        shippingOptionIndex = $('input', data.el).data('shipping-option')
        shippingOptions = @attr.data.shippingOptions[shippingOptionIndex]
        @selectShippingOption(shippingOptions, selectedSla)

      @selectShippingOptionMultipleSellersHandler = (ev, data) ->
        ev.preventDefault()
        selectedSla = $(data.el).val()
        shippingOptionIndex = $(data.el).data('shipping-option')
        shippingOptions = @attr.data.shippingOptions[shippingOptionIndex]
        @selectShippingOption(shippingOptions, selectedSla)

      @selectShippingOption = (shippingOptions, selectedSla) ->
        @updateLogisticsInfoModel(shippingOptions, selectedSla)

        # Atualizamos o modelo
        @attr.data.shippingOptions = @getShippingOptionsData(@attr.data.logisticsInfo, @attr.data.items, @attr.data.sellers)
        @updateShippingOptionsLabels(@attr.data.shippingOptions).then =>
          @attr.renderOptions =
            focusOnSelectedDelivery: true
          @render()

      @validateShippingOptions = ->
        return _.all @attr.data.shippingOptions, (so) =>
          if so.selectedSla.isScheduled
            if so.selectedSla.deliveryWindow.startDateUtc?
              return true
            else
              selector = @getSelectDeliveryDateSelector(so.index)
              selector.trigger('click')
              return false
          return true

      @enable = (ev, logisticsInfo, items, sellers) ->
        ev?.stopPropagation()
        @attr.data.active = true
        @attr.data.loadingShippingOptions = false

        @attr.data.items = _.map items, (item, i) ->
          item.index = i
          return item

        @attr.data.logisticsInfo = logisticsInfo
        @attr.data.sellers = sellers
        @attr.data.shippingOptions = @getShippingOptionsData(logisticsInfo, @attr.data.items, sellers)
        @updateShippingOptionsLabels(@attr.data.shippingOptions).then =>
          @render()

      @disable = (ev) ->
        ev?.stopPropagation()
        @attr.data.active = false
        @$node.html('')

      @startLoadingShippingOptions = (ev) ->
        ev?.stopPropagation()
        @attr.data.loadingShippingOptions = true
        @render()

      # Bind events
      @after 'initialize', ->
        @on 'enable.vtex', @enable
        @on 'disable.vtex', @disable
        @on 'scheduleDateSelected.vtex', @scheduleDateSelected
        @on 'startLoading.vtex', @startLoadingShippingOptions
        @on 'click',
          'shippingOptionSelector': @selectShippingOptionHandler
          'deliveryWindowSelector': @deliveryWindowSelected
          'pickadateValueContainer': @openPickadateHandler
        @on 'change',
          'changeSlaSelector': @selectShippingOptionMultipleSellersHandler

        @setValidators [
          @validateShippingOptions
        ]

        @setLocalePath 'shipping/script/translation/'

    return defineComponent(ShippingOptions, withi18n, withLogisticsInfo, withValidation)
