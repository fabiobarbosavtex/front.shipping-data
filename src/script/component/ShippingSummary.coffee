define ['flight/lib/component',
        'shipping/script/setup/extensions',
        'shipping/script/mixin/withi18n',
        'shipping/script/mixin/withLogisticsInfo',
        'shipping/templates/shippingSummary'],
(defineComponent, extensions, withi18n, withLogisticsInfo, template) ->
  ShippingSummary = ->
    @defaultAttrs
      data:
        active: false
        address: {}
        multipleSellers: false

      maskedInfoSelector: '.client-masked-info'

    # Render this component according to the data object
    @render = ->
      dust.render template, @attr.data, (err, output) =>
        return unless @attr.data.active
        output = $(output).i18n()
        @$node.html(output)

    @enable = (ev, locale, shippingData, items, sellers, rules, canEditData, giftRegistryData) ->
      ev?.stopPropagation()
      @attr.data.active = true

      @setLocale(locale)
      @attr.data.items = items
      @attr.data.sellers = sellers
      @attr.data.canEditData = canEditData
      @attr.data.postalCodeByInput = rules?.postalCodeByInput
      @attr.data.address = shippingData.address
      if rules?.masks?.postalCode? and @attr.data.address?.postalCode?
        @attr.data.address.postalCode = _.maskString(@attr.data.address.postalCode, rules.masks.postalCode)
      @attr.data.isGift = @attr.data.address?.addressType is "giftRegistry"
      @attr.data.giftRegistryData = giftRegistryData
      @attr.data.logisticsInfo = shippingData.logisticsInfo
      @attr.data.isStateUpperCase = rules?.isStateUpperCase
      @attr.data.shippingOptions = @getShippingOptionsData(shippingData.logisticsInfo, items, sellers)
      @updateShippingOptionsLabels(@attr.data.shippingOptions).then =>
        @render() if @attr.data.active

    @disable = (ev) ->
      @attr.data.active = false
      ev?.stopPropagation()
      @$node.html('')

    @addressSelected = (ev, address) ->
      ev?.stopPropagation()
      @attr.data.address = address
      @render() if @attr.data.active

    @deliverySelected = (ev, logisticsInfo, items, sellers) ->
      ev?.stopPropagation()
      @attr.data.logisticsInfo = logisticsInfo
      @attr.data.shippingOptions = @getShippingOptionsData(logisticsInfo, items, sellers)
      @updateShippingOptionsLabels(@attr.data.shippingOptions).then =>
        @render() if @attr.data.active

    @showMaskedInfoMessage = (ev) ->
      ev?.preventDefault()
      $(window).trigger('showMessage.vtex', ['maskedInfo'])

    # Bind events
    @after 'initialize', ->
      @on 'enable.vtex', @enable
      @on 'disable.vtex', @disable
      @on 'addressSelected.vtex', @addressSelected
      @on 'deliverySelected.vtex', @deliverySelected
      @on 'click',
        maskedInfoSelector: @showMaskedInfoMessage

      @setLocalePath 'shipping/script/translation/'

  return defineComponent(ShippingSummary, withi18n, withLogisticsInfo)