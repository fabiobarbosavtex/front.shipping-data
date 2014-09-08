define = vtex.define || window.define
require = vtex.curl || window.require

define ->
  class CountryPRY
    constructor: () ->
      @country = 'PRY'
      @abbr = 'PY'
      @states = []
      @cities = {}
      @map =
        "Alto Paraguay": {
          "Bahia Negra": "9060", "Fuerte Olimpo": "9000", "Isla Margarita": "9190", "La Victoria": "9200", "Lagerenza": "9100", "Puerto Guarani": "9080", "Puerto La Esperanza": "9180"
        }, "Alto Parana": {
          "Ciudad Del Este": "7000", "Domingo Martinez De Irala": "7600", "Dr. Juan Leon Mallorquin": "7430", "Hernandarias": "7220", "Itaquyry": "7330", "Juan E. Oleary": "7480", "Los Cedrales": "7690", "Mbaracayu": "7300", "Minga Guazu": "7420", "Minga Pora": "7320", "Naranjal": "7570", "Presidente Franco": "7700", "Puerto Bertoni": "7000", "San Alberto": "7310", "San Cristobal": "7550", "Santa Rita": "7540", "Santa Rosa Del Monday": "7530", "Yguazu": "7510", "Ñacunday": "7580"
        }, "Amambay": {
          "Bella Vista": "8650", "Capitan Bado": "8660", "Pedro Juan Caballero": "8500"
        }, "Distrito Capital": {
          "Asunción": "1119"
        }, "Boqueron": {
          "Capitan Joel Estigarribia": "9490", "Colonia Neuland": "9470", "Dr. Pedro P. Peña": "9550", "Filadelfia": "9300", "General Eugenio A. Garay": "9500", "Loma Plata": "9370", "Mariscal Estigarribia": "9400", "Teniente 1ro. Irala Fernandez": "9390"
        }, "Caaguazu": {
          "3 De Febrero": "3690", "Caaguazu": "3400", "Carayao": "3920", "Cecilio Baez": "3880", "Colonia Genaro Romero": "3300", "Coronel Oviedo": "3300", "Dr. Jose E. Estigarribia": "3660", "Dr. Juan Manuel Frutos": "3600", "Jose Domingo Ocampos": "3640", "La Pastora": "3950", "Mcal. F. Solano Lopez": "3700", "Nueva Australia": "3300", "Nueva Londres": "3960", "R.i. 3 Corrales": "3860", "Raul A. Oviedo": "3680", "Repatriacion": "3540", "San Antonio Cordillera": "3970", "San Joaquin": "3710", "San Jose De Los Arroyos": "3970", "Santa Rosa Del Mbutu": "3890", "Simon Bolivar": "3900", "Yhu": "3750"
        }, "Caazapa": {
          "Abai": "5840", "Buena Vista": "5990", "Caazapa": "5600", "Col. Mayor Nicolas Arguello": "5600", "Colonia San Cosme": "5600", "Compañía San Francisco": "5720", "Dr. Moises Bertoni": "5680", "Estacion Gral. Patricio Colman": "5880", "Estacion Yuty": "5720", "General Higinio Morinigo": "5960", "Isla Saca": "5700", "Maciel": "5670", "San Juan Nepomuceno": "5880", "Santa Barbara": "5600", "Santa Luisa": "5600", "Santa Rosa De Lima": "5720", "Tabai": "5820", "Yacubo": "5880", "Yegros": "5700", "Yuty": "5720"
        }, "Canendiyu": {
          "Colonia Anahi": "7890", "Colonia Catuete": "7840", "Corpus Christi": "7850", "Curuguaty": "7930", "General Francisco Alvarez": "7980", "Itarara": "7910", "La Paloma": "7970", "Nueva Esperanza": "7990", "Salto Del Guaira": "7800", "Ygatimi": "7920", "Ypejhu": "7900"
        }, "Central": {
          "Aregua": "2000", "Capiata": "2560", "Fernando De La Mora": "2300", "Guarambare": "2670", "Ita": "2710", "Itagua": "2740", "Jose Augusto Saldivar": "2630", "Lambare": "2420", "Limpio": "2020", "Loma Pyta": "2050", "Luque": "2060", "Mariano Roque Alonso": "2040", "Nueva Italia": "2700", "San Antonio": "2650", "San Lorenzo": "2160", "Villa Elisa": "2610", "Villeta": "2680", "Ypacarai": "2770", "Ypane": "2660", "Zeballos Cue": "1720", "Ñemby": "2540"
        }, "Concepcion": {
          "Belen": "8800", "Concepcion": "8700", "Horqueta": "8820", "Loreto": "8960", "Paso Barreto": "8860", "Paso Mbutu": "8870", "Puerto Fonciere": "8880", "San Carlos": "8930", "San Lazaro": "8940", "Vallemi": "8950", "Yby – Yau": "8900"
        }, "Cordillera": {
          "1° De Marzo": "3180", "Alfonso Tranquera": "3120", "Altos": "3240", "Arroyos Y Esteros": "3190", "Atyra": "3280", "Caacupe": "3000", "Caraguatay": "3150", "Col. G. Bernardino Caballero": "3280", "Compañía San Antonio": "3120", "Emboscada": "3210", "Eusebio Ayala": "3090", "Isla Pucu": "3110", "Itacurubi De La Cordillera": "3080", "Itapiru": "3190", "Juan De Mena": "3170", "Loma Grande": "3230", "Mbocayaty Del Yhaguy": "3140", "Nueva Colombia": "3220", "Piribebuy": "3040", "San Bernardino": "3290", "San Jose Obrero": "3120", "Santa Elena": "3130", "Tobati": "3250", "Valenzuela": "3070", "Yaguarete Cua": "3230"
        }, "Guaira": {
          "Barrio Estacion": "5000", "Borja": "5210", "Capitan Mauricio Jose Troche": "5520", "Colonia Carlos Pfannl": "5350", "Colonia San Roque González": "5960", "Coronel Martinez": "5160", "Dr. Bottrell": "5560", "Felix Perez Cardozo": "5150", "General Eugenio A. Garay": "5320", "Independencia": "5350", "Itape": "5180", "Iturbe": "5250", "Jose Fasardi": "5290", "Mbocayaty": "5570", "Natalicio Talavera": "5500", "Paso Yobay": "5350", "Pindoyu": "5960", "San Salvador": "5200", "Tebicuary": "5190", "Villarrica": "5000", "Yataity": "5140", "Ñumi": "5280"
        }, "Itapua": {
          "Alto Vera": "6680", "Barrio San Roque": "6000", "Bella Vista": "6310", "Cambyreta": "6200", "Capitan Meza": "6410", "Capitan Miranda": "6990", "Carlos Antonio Lopez": "6550", "Carmen Del Parana": "6960", "Centro De Fronteras": "6000", "Colonia Federico Chavez": "6690", "Colonia Samu-u": "6230", "Colonia Triunfo": "6630", "Coronel Bogado": "6920", "Curuñai": "6920", "Edelira": "6490", "Encarnacion": "6000", "Fram": "6980", "General Artigas": "6820", "General Delgado": "6860", "Hohenau": "6290", "Isla Alta": "6820", "Jesus": "6260", "Jose L. Oviedo": "6690", "La Paz": "6280", "Mayor Julio Otaño": "6570", "Natalio": "6500", "Nueva Alborada": "6230", "Obligado": "6360", "Pirapo": "6400", "San Cosme Y Damian": "6890", "San Dionisio": "6860", "San Juan Del Parana": "6980", "San Luis Del Parana": "6980", "San Pedro Del Parana": "6700", "San Rafael Del Parana": "6530", "Tomas Romero Pereira": "6630", "Trinidad": "6250", "Yatytay": "6510"
        }, "Misiones": {
          "Ayolas": "4830", "Colonia Alejo Garcia": "4830", "Itayuru": "4700", "San Ignacio": "4750", "San Juan Bautista - Misiones": "4700", "San Miguel": "4970", "San Patricio": "4880", "San Ramon": "4810", "Santa Maria": "4950", "Santa Rosa": "4890", "Santiago": "4860", "Villa Florida": "4990", "Yabebyry": "4820", "Yacuti": "4700"
        }, "Paraguari": {
          "Acahay": "4190", "Caapucu": "4300", "Caballero": "4500", "Carapegua": "4050", "Cerro Leon": "4000", "Colonia G. Cesar Barrientos": "4470", "Colonia Santa Isabel": "4530", "Escobar": "4550", "La Colmena": "4470", "Mbuyapey": "4340", "Paraguari": "4000", "Pirayu": "4570", "Quiindy": "4240", "Quyquyho": "4320", "San Roque Gonzalez": "4150", "Sapucai": "4530", "Tebicuarymi": "4460", "Valle Apua": "4240", "Yaguaron": "4620", "Ybycui": "4390", "Ybytymi": "4480"
        }, "Pte. Hayes": {
          "Benjamin Aceval": "9800", "Chaco-i": "9680", "Colonia Falcon": "9690", "Dr. Francia (beteretecue)": "9800", "Fortin Esteban Martinez": "9940", "Fortin General Bruguez": "9790", "Fortin General Caballero": "9890", "Nanawa": "9950", "Pozo Colorado": "9600", "Puerto Pinasco": "9700", "Villa Hayes": "9900"
        }, "San Pedro": {
          "25 De Diciembre": "8150", "Antequera": "8050", "Chore": "8360", "Colonia Friesland": "8450", "Colonia Navidad": "8120", "Colonia Volendam": "8340", "General Aquino": "8090", "General Resquin": "8490", "Guayaibi": "8350", "Itacurubi": "8130", "Lima": "8430", "Nueva Germania": "8470", "Puerto Rosario": "8080", "Puerto Ybapobo": "8140", "San Estanislao": "8210", "San Jose Del Rosario": "8170", "San Pablo": "8060", "San Pedro": "8000", "Tacuati": "8460", "Union": "8180", "Villa Del Rosario": "8070", "Yataity Del Norte": "8190"
        }, "Ñeembucu": {
          "Alberdi": "2980", "Barrio Burrerita": "2800", "Barrio Obrero": "2800", "Cerrito": "2910", "Desmochado": "2890", "General Jose Eduvigis Diaz": "2870", "Guazu Cua": "2930", "Humaita": "2840", "Isla Umbu": "2850", "Laureles": "2920", "Mayor Jose De J. Martinez": "2880", "Paso De Patria": "2860", "Pilar": "2800", "San Juan B. De Ñeembucu": "2950", "Tacuaras": "2940", "Villa Franca": "2990", "Villa Oliva": "2970", "Villalbin": "2900"
        }

      @usePostalCode = false
      @queryByPostalCode = false
      @citiesBasedOnStateChange = true
      @postalCodeByState = false
      @postalCodeByCity = true
      @geocodingAvailable = false
      @queryByGeocoding = false
      @deliveryOptionsByPostalCode = true
      @deliveryOptionsByGeocordinates = false

      @regexes =
        postalCode: new RegExp(/^([\d]{4})$/)

      @masks =
        postalCode: '9999'

      @requiredFields = ['addressType', 'addressId', 'receiverName',
                         'postalCode', 'street', 'city', 'state',
                         'country']

      for state of @map
        @states.push(state)
        @cities[state] = _.map(@map[state], (k, v) -> return v )
