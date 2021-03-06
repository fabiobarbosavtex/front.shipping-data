window.console or= log: ->

vtex.require = vtex.curl || require

require.config({
  paths: {
    'shipping': '../',
    'state-machine': '//io.vtex.com.br/front-libs/state-machine/2.3.2-vtex/',
    'flight': '//io.vtex.com.br/front-libs/flight/1.1.4-vtex/',
    'link': '../script/plugin/link'
  }
})

require ["shipping/script/ShippingData"], (ShippingData) ->
    # Flags
    window.shippingUsingGeolocation = true
    mockShippingData = true
    _API = window.vtexjs.checkout
    console.log _API
    console.log ShippingData
    window.vtex.i18n.init()

    # Start shipping data
    vtexjs.checkout.getOrderForm().done ->
      ShippingData.attachTo "#shipping-data",
        API: _API