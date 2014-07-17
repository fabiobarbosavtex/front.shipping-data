define = vtex.define || define
require = vtex.require || require

define ->
    class CheckoutMock
        constructor: (addressBookComponent) ->
          @addressBookComponent = addressBookComponent
          @orderForm = {
            "orderFormId": "39e56efa527e4811a1e0322f34176c56",
            "salesChannel": "1",
            "loggedIn": false,
            "canEditData": false,
            "userProfileId": "2f217ab3-d389-49a8-88e3-72bf372a4343",
            "userType": null,
            "value": 25240,
            "messages": [],
            "items": [
              {
                "id": "30433",
                "productId": "24461",
                "refId": null,
                "name": "Cooler Termoelétrico Mobicool 8 Litros, Capacidade para Transportar 10 Latas de 350ml, 12 Volts, Verde - T08 DC",
                "skuName": "Cooler Termoelétrico Mobicool 8 Litros, Capacidade para Transportar 10 Latas de 350ml, 12 Volts, Verde - T08 DC",
                "tax": 0,
                "price": 24800,
                "listPrice": 37900,
                "sellingPrice": 24800,
                "isGift": false,
                "additionalInfo": {
                  "brandName": "Mobicool",
                  "brandId": "4643",
                  "offeringInfo": null
                },
                "preSaleDate": null,
                "productCategoryIds": "/345/489/1243/",
                "defaultPicker": null,
                "handlerSequence": 0,
                "handling": false,
                "quantity": 1,
                "seller": "1",
                "imageUrl": "/arquivos/ids/162546-55-55/30433_292_292.jpg",
                "detailUrl": "/30433-mini-geladeira-termoeletrica-8-litros-dc-azul/p",
                "components": [],
                "bundleItems": [],
                "attachments": [],
                "itemAttachment": {
                  "name": null,
                  "content": {}
                },
                "attachmentOfferings": [],
                "offerings": [],
                "priceTags": [],
                "availability": "available",
                "measurementUnit": "un",
                "unitMultiplier": 1.0000
              },
              {
                "id": "30433",
                "productId": "24461",
                "refId": null,
                "name": "PINGENTE CACHORRINHO ESMALTADO OURO - VERMELHO - WOOF",
                "skuName": "PINGENTE CACHORRINHO ESMALTADO OURO - VERMELHO - WOOF",
                "tax": 0,
                "price": 24800,
                "listPrice": 37900,
                "sellingPrice": 24800,
                "isGift": false,
                "additionalInfo": {
                  "brandName": "Woof",
                  "brandId": "4643",
                  "offeringInfo": null
                },
                "preSaleDate": null,
                "productCategoryIds": "/345/489/1243/",
                "defaultPicker": null,
                "handlerSequence": 0,
                "handling": false,
                "quantity": 1,
                "seller": "1",
                "imageUrl": "/arquivos/ids/162546-55-55/30433_292_292.jpg",
                "detailUrl": "/30433-mini-geladeira-termoeletrica-8-litros-dc-azul/p",
                "components": [],
                "bundleItems": [],
                "attachments": [],
                "itemAttachment": {
                  "name": null,
                  "content": {}
                },
                "attachmentOfferings": [],
                "offerings": [],
                "priceTags": [],
                "availability": "available",
                "measurementUnit": "un",
                "unitMultiplier": 1.0000
              },
              {
                "id": "12345",
                "productId": "67890",
                "refId": null,
                "name": "Bola de Borracha",
                "skuName": "Bola de Borracha",
                "tax": 0,
                "price": 1500,
                "listPrice": 2000,
                "sellingPrice": 1500,
                "isGift": false,
                "additionalInfo": {
                  "brandName": "Clas",
                  "brandId": "268",
                  "offeringInfo": null
                },
                "preSaleDate": null,
                "productCategoryIds": "/345/",
                "defaultPicker": null,
                "handlerSequence": 0,
                "handling": false,
                "quantity": 1,
                "seller": "2",
                "imageUrl": "/arquivos/ids/162546-55-55/30433_292_292.jpg",
                "detailUrl": "/30433-mini-geladeira-termoeletrica-8-litros-dc-azul/p",
                "components": [],
                "bundleItems": [],
                "attachments": [],
                "itemAttachment": {
                  "name": null,
                  "content": {}
                },
                "attachmentOfferings": [],
                "offerings": [],
                "priceTags": [],
                "availability": "available",
                "measurementUnit": "un",
                "unitMultiplier": 1.0000
              }
            ],
            "selectableGifts": [],
            "products": [],
            "totalizers": [
              {
                "id": "Items",
                "name": "Total dos Itens",
                "value": 24800
              },
              {
                "id": "Shipping",
                "name": "Total do Frete",
                "value": 440
              }
            ],
            "shippingData": {
              "attachmentId": "shippingData",
              "address": {
                "addressType": "residential",
                "receiverName": "Breno",
                "addressId": "-1398459349978",
                "postalCode": "******030",
                "city": "Rio ** *******",
                "state": "RJ",
                "country": "BRA",
                "street": "Rua  *****ção",
                "number": "*****",
                "neighborhood": "Bot*****",
                "complement": "*******",
                "reference": null,
                "geoCoordinates": []
              },
              "logisticsInfo": [
                {
                  "itemIndex": 0,
                  "selectedSla": "normal",
                  "slas": [
                    {
                      "id": "normal",
                      "name": "normal",
                      "deliveryIds": [
                        {
                          "courierId": "1a574b3",
                          "warehouseId": "1_1",
                          "dockId": "1_2_1",
                          "courierName": "Mundo",
                          "quantity": 1
                        }
                      ],
                      "shippingEstimate": "17d",
                      "shippingEstimateDate": null,
                      "lockTTL": null,
                      "availableDeliveryWindows": [],
                      "deliveryWindow": null,
                      "price": 440,
                      "listPrice": 440,
                      "tax": 0
                    },
                    {
                      "id": "Expressa",
                      "name": "Expressa",
                      "deliveryIds": [
                        {
                          "courierId": "55",
                          "warehouseId": "1_1",
                          "dockId": "1_2_1",
                          "courierName": "Sedex",
                          "quantity": 1
                        }
                      ],
                      "shippingEstimate": "15bd",
                      "shippingEstimateDate": null,
                      "lockTTL": null,
                      "availableDeliveryWindows": [],
                      "deliveryWindow": null,
                      "price": 440,
                      "listPrice": 440,
                      "tax": 0
                    }
                  ],
                  "shipsTo": [
                    "BRA",
                    "COL",
                    "PER"
                  ],
                  "itemId": "30433"
                },
                {
                  "itemIndex": 1,
                  "selectedSla": "normal",
                  "slas": [
                    {
                      "id": "normal",
                      "name": "normal",
                      "deliveryIds": [
                        {
                          "courierId": "1a574b3",
                          "warehouseId": "1_1",
                          "dockId": "1_2_1",
                          "courierName": "Mundo",
                          "quantity": 1
                        }
                      ],
                      "shippingEstimate": "17d",
                      "shippingEstimateDate": null,
                      "lockTTL": null,
                      "availableDeliveryWindows": [],
                      "deliveryWindow": null,
                      "price": 440,
                      "listPrice": 440,
                      "tax": 0
                    },
                    {
                      "id": "Expressa",
                      "name": "Expressa",
                      "deliveryIds": [
                        {
                          "courierId": "55",
                          "warehouseId": "1_1",
                          "dockId": "1_2_1",
                          "courierName": "Sedex",
                          "quantity": 1
                        }
                      ],
                      "shippingEstimate": "15bd",
                      "shippingEstimateDate": null,
                      "lockTTL": null,
                      "availableDeliveryWindows": [],
                      "deliveryWindow": null,
                      "price": 440,
                      "listPrice": 440,
                      "tax": 0
                    }
                  ],
                  "shipsTo": [
                    "BRA",
                    "COL",
                    "PER"
                  ],
                  "itemId": "30433"
                },
                {
                  "itemIndex": 2,
                  "selectedSla": "PAC",
                  "slas": [
                    {
                      "id": "PAC",
                      "name": "PAC",
                      "deliveryIds": [
                        {
                          "courierId": "1a574b3",
                          "warehouseId": "1_1",
                          "dockId": "1_2_1",
                          "courierName": "Mundo",
                          "quantity": 1
                        }
                      ],
                      "shippingEstimate": "10d",
                      "shippingEstimateDate": null,
                      "lockTTL": null,
                      "availableDeliveryWindows": [],
                      "deliveryWindow": null,
                      "price": 440,
                      "listPrice": 440,
                      "tax": 0
                    },
                    {
                      "id": "Sedex",
                      "name": "Sedex",
                      "deliveryIds": [
                        {
                          "courierId": "55",
                          "warehouseId": "1_1",
                          "dockId": "1_2_1",
                          "courierName": "Sedex",
                          "quantity": 1
                        }
                      ],
                      "shippingEstimate": "5bd",
                      "shippingEstimateDate": null,
                      "lockTTL": null,
                      "availableDeliveryWindows": [],
                      "deliveryWindow": null,
                      "price": 1590,
                      "listPrice": 1590,
                      "tax": 0
                    }
                  ],
                  "shipsTo": [
                    "BRA",
                    "COL",
                    "PER"
                  ],
                  "itemId": "12345"
                }
              ],
              "availableAddresses": [
                {
                  "addressType": "residential",
                  "receiverName": "Breno",
                  "addressId": "-1398459349978",
                  "postalCode": "******030",
                  "city": "Rio ** *******",
                  "state": "RJ",
                  "country": "BRA",
                  "street": "Rua  *****ção",
                  "number": "*****",
                  "neighborhood": "Bot*****",
                  "complement": "*******",
                  "reference": null,
                  "geoCoordinates": []
                },
                {
                  "addressType": "residential",
                  "receiverName": "Bre** *****ans",
                  "addressId": "-1398459453857",
                  "postalCode": "******800",
                  "city": "Oli***",
                  "state": "PE",
                  "country": "BRA",
                  "street": "Ave**** *** ****** *** ***pa)",
                  "number": "*****",
                  "neighborhood": "Rio ****",
                  "complement": "",
                  "reference": null,
                  "geoCoordinates": []
                }
              ]
            },
            "clientProfileData": {
              "attachmentId": "clientProfileData",
              "email": "breno@mailinator.com",
              "firstName": "Bre**",
              "lastName": "Cal*****",
              "document": "*1*3*5*6*1*",
              "documentType": "cpf",
              "phone": "*********2587",
              "corporateName": null,
              "tradeName": null,
              "corporateDocument": null,
              "stateInscription": null,
              "corporatePhone": null,
              "isCorporate": false
            },
            "paymentData": {},
            "marketingData": null,
            "sellers": [
              {
                "id": "1",
                "name": "WalmartV5",
                "logo": "http://portal.vtexcommerce.com.br/arquivos/logo.jpg"
              },
              {
                "id": "2",
                "name": "RiHappy",
                "logo": "http://portal.vtexcommerce.com.br/arquivos/logo.jpg"
              }
            ],
            "clientPreferencesData": {
              "attachmentId": "clientPreferencesData",
              "locale": "pt-BR",
              "optinNewsLetter": true
            },
            "storePreferencesData": {
              "countryCode": "BRA",
              "checkToSavePersonDataByDefault": true,
              "templateOptions": {
                "toggleCorporate": false
              },
              "timeZone": "E. South America Standard Time",
              "currencyCode": "BRL",
              "currencyLocale": 1046,
              "currencySymbol": "R$",
              "currencyFormatInfo": {
                "currencyDecimalDigits": 2,
                "currencyDecimalSeparator": ",",
                "currencyGroupSeparator": ".",
                "currencyGroupSize": 3,
                "startsWithCurrencySymbol": true
              }
            },
            "giftRegistryData": null,
            "openTextField": null,
            "ratesAndBenefitsData": {
              "attachmentId": "ratesAndBenefitsData",
              "rateAndBenefitsIdentifiers": [
                {
                  "id": "195",
                  "name": "Formula 4",
                  "featured": false,
                  "description": "Formula 4"
                }
              ]
            }
          }

        orchestrate: () =>
            # Update addresses
            if (@orderForm.shippingData)
              addressData = @orderForm.shippingData
              addressData.deliveryCountries = _.uniq(_.reduceRight(
                addressData.logisticsInfo, (memo, l) ->
                  return memo.concat(l.shipsTo)
                , []
              ))
              $(@addressBookComponent).trigger 'updateAddresses', addressData

            # Update shipping options
            if @orderForm.shippingData and @orderForm.sellers
              window.shippingOptionsData = @getShippingOptionsData()              
              $(@addressBookComponent).trigger 'updateShippingOptions', shippingOptionsData

            # When a new addresses is saved
            $(@addressBookComponent).on 'newAddress', (ev, addressObj) =>
              # Do an AJAX to save in your API
              # When you're done, update with the new data
              updated = false
              for address in @orderForm.shippingData.availableAddresses
                if address.addressId is addressObj.addressId
                  address = _.extend(address, addressObj)
                  updated = true
                  break;

              if not updated
                @orderForm.shippingData.availableAddresses.push(addressObj)

              @orderForm.shippingData.address = addressObj
              setTimeout( =>
                $(@addressBookComponent).trigger('updateAddresses', @orderForm.shippingData)
              , 400)

            # When a new address is selected on the list, do something
            $(@addressBookComponent).on 'addressSelected', (ev, addressObj) =>
              console.log('Address selected:', addressObj)
              console.log @orderForm.shippingData.availableAddresses

            $(@addressBookComponent).on 'postalCode', (ev, postalCode) ->
              console.log('New postal code:', postalCode)


        ###
        Returns:
          [
            {
              items: [],
              selectedSla: '',
              seller: {},
              slas: []
            }
          ]
        ###
        getShippingOptionsData: () =>
          logisticsInfo = []
          for li in @orderForm.shippingData.logisticsInfo
            item = @orderForm.items[li.itemIndex]
            
            seller = _.find @orderForm.sellers, (s) ->
              return parseInt(s.id) is parseInt(item.seller)
            
            if seller
              current = _.extend({}, li, {seller:seller}, {item: item})
              logisticsInfo.push(current)

          logisticsBySeller = _.groupBy logisticsInfo, (so) -> return so.seller.id
          logisticsInfoArray = _.map logisticsBySeller, (logistic) ->
            composedLogistic =
              items: []
              seller: {}
              selectedSla: ''
              slas: []

            for logi in logistic
              composedLogistic.items.push(logi.item)
              composedLogistic.seller = logi.seller
              for sla in logi.slas
                sla.isScheduled = sla.availableDeliveryWindows and sla.availableDeliveryWindows.length > 0
                sla.businessDays = (sla.shippingEstimate+'').indexOf('bd') isnt -1
                sla.shippingEstimateDays = parseInt((sla.shippingEstimate+'').replace(/bd|d/,''), 10)
                sla.isSelected = (sla.id is logi.selectedSla)
                sla.valueLabel = if sla.price > 0 then _.intAsCurrency sla.price else i18n.t('global.free')
                sla.taxValueLabel = if sla.tax > 0 then _.intAsCurrency sla.tax else i18n.t('global.free')
              composedLogistic.slas = logi.slas
              selectedSla = _.find logi.slas, (sla) -> sla.name is logi.selectedSla
              composedLogistic.selectedSla = selectedSla

            return composedLogistic

          return logisticsInfoArray

        if @maxShippingEstimate isnt undefined and not @isScheduled
          if @businessDays
            maxWorkingDays = i18n.t('shippingData.workingDay' + (if @maxShippingEstimate > 1 then 's' else ''))
          else
            maxWorkingDays = i18n.t('shippingData.day' + (if @maxShippingEstimate > 1 then 's' else ''))
          @maxEstimateLabel = i18n.t('shippingData.upTo') + ' '
          @maxEstimateLabel += @maxShippingEstimate + ' ' + maxWorkingDays
          @maxEstimateOptionText(@name + ' - ' + @valueLabel + ' - ' + @maxEstimateLabel)
        if @shippingEstimate isnt undefined
          if @businessDays
            workingDays = i18n.t('shippingData.workingDay' + (if @shippingEstimate > 1 then 's' else ''))
          else
            workingDays = i18n.t('shippingData.day' + (if @shippingEstimate > 1 then 's' else ''))
          @estimateLabel = @shippingEstimate + ' ' + workingDays
        @label = @name + ' - ' + @valueLabel