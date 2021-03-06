(function(){
var define = vtex.define || window.define;

define(function () {
  return {
    "shipping": {
      "title": 'Dirección de envío',
      "goToPayment": 'Ir para el Pago',
      "errors": {
        "shippingOptions": "Se produjo un error en el cálculo de los detalles del envío. Por favor, inténtelo de nuevo."
      },
      "addressList": {
        "header": 'Elija la dirección de entrega',
        "selected": 'Selecionado',
        "select": 'Selecionar',
        "editSelectedAddress": 'Editar dirección',
        "anotherAddress": 'Enviar a otra dirección',
        "deliverAtAddressOf": 'Enviar a dirección de:'
      },
      "addressForm": {
        "header": 'Registrar nueva dirección',
        "postalCodeBRA": 'CEP',
        "postalCodeCAN": 'Código Postal',
        "postalCodeUSA": 'ZIP',
        "postalCodeARG": 'Código Postal (CP)',
        "postalCodeURY": 'Código Postal (CP)',
        "postalCodePER": 'Código Postal (CP)',
        "postalCodeMEX": 'Código Postal',
        "postalCode": 'Código Postal (CP)',
        "street": 'Calle',
        "addressLine1": 'Dirección Línea 1',
        "addressLine2": 'Dirección Línea 2',
        "number": 'Número',
        "exteriorNumber": 'No. Exterior',
        "interiorNumber": 'No. Interior',
        "complement": 'Piso o Departamento (ej: 2A)',
        "reference": 'Punto o calle acerca',
        "district": 'Distrito',
        "neighborhood": 'Barrio',
        "commercial": 'Dirección de Trabajo',
        "city": 'Ciudad',
        "locality": 'Localidad',
        "state": 'Estado',
        "region": 'Región',
        "community": 'Comuna',
        "colony": 'Colonia',
        "direction": 'Dirección',
        "department": 'Departamento',
        "municipality": 'Municipio',
        "delegation": 'Delegación',
        "province": "Provincia",
        "type": 'Tipo de dirección',
        "receiver": 'Nombre de la persona que va a recibir',
        "deliveryCountry": 'País de entrega',
        "cancelEditAddress": 'Regresar a la lista de direcciones',
        "searchForAnotherAddress": "Buscar otra dirección"
      },
      "addressSearch": {
        "address": 'Dirección',
        "dontKnowPostalCode": 'No conozco mi Código Postal',
        "knowPostalCode": 'Buscar pelo mi Código Postal',
        "addressExampleARG": 'Ej: Av. del Libertador 1473, Buenos Aires',
        "addressExampleBOL": 'Ej: Av Arce, 2556, La Paz',
        "addressExampleBRA": 'Ej: Av Paulista, 1578, São Paulo',
        "addressExampleCAN": 'Ej: 450 Wilbrod St, Ottawa',
        "addressExampleCHL": 'Ej: Los Militares, 6191, Santiago',
        "addressExampleCOL": 'Ej: Calle 93 # 14-20, Bogotá',
        "addressExampleECU": 'Ej: Av Rio Amazonas, N 37-61, Quito',
        "addressExampleGTM": 'Ej: 6A Calle 6, Guatemala',
        "addressExampleMEX": 'Ej: Calle de Tacuba 8, Ciudad de México',
        "addressExamplePER": 'Ej: Av. José Pardo, 850, Miraflores, Lima',
        "addressExamplePRT": 'Ej: Av. da França 20, Porto',
        "addressExamplePRY": 'Ej: Avenida Eusebio Ayala, 100, Assunção',
        "addressExampleUNI": 'Ej: 225 East 41st Street, New York',
        "addressExampleURY": 'Ej: Bulevar Artigas, 1394, Montevidéu',
        "addressExampleUSA": 'Ej: 225 East 41st Street, New York',
        "addressNotDetailed": 'La dirección no posee datos suficientes',
        "whatAboutMoreInfo": 'Que tal dar mas información? (ej: número)',
        "incompleteAddressData": 'No encontramos su',
        "searchPostalCode": 'Utilice el servicio de correo para consultario.',
        "shipsTo": "Entregar en"
      },
      "countrySelect": {
        "chooseDeliveryCountry": 'Elija el país de entrega'
      },
      "postalCodeInput": {
        "dontUse": 'La dirección no tiene un código postal',
        "use": 'Añadir un código postal'
      },
      "shippingOptions": {
        "shippingOptions": 'Elija las opciones de envío',
        "chooseShippingOption": 'Elija el tipo de envío',
        "followingProducts": 'Productos del',
        "shippingOption": 'Tipo de envío',
        "shippingEstimate": 'Estimado',
        "ofSeller": 'del vendedor ',
        "deliveryDate": 'Fecha de entrega',
        "chooseScheduledDate": 'Elija la fecha de entrega',
        "deliveryHour": 'Hora de entrega',
        "businessDay": 'Hasta __count__ día hábil',
        "businessDay_plural": 'Hasta __count__ días hábiles',
        "day": 'Hasta __count__ día',
        "day_plural": 'Hasta __count__ días',
        "fromToHour": 'Desde las __from__ hasta las __to__',
        "priceFrom": 'a partir de'
      },
      "shippingSummary": {
        "shipping": 'Envio:',
        "chooseOtherShippingOption": 'Eligir un nuevo tipo de envío',
        "atAddressOf": 'A dirección de:'
      }
    },
    "validation": {
      "defaultMessage": 'Este valor parece ser inválido.',
      "type": {
        "email": 'Este valor debe ser un correo válido.',
        "url": 'Este valor debe ser una URL válida.',
        "urlstrict": 'Este valor debe ser una URL válida.',
        "number": 'Este valor debe ser un número válido.',
        "digits": 'Este valor debe ser un dígito válido.',
        "dateIso": 'Este valor debe ser una fecha válida (YYYY-MM-DD).',
        "alphanum": 'Este valor debe ser alfanumérico.',
        "phone": 'Este valor debe ser un número telefónico válido.'
      },
      "notnull": 'Este valor no debe ser nulo.',
      "notblank": 'Este valor no debe estar en blanco.',
      "required": 'Este valor es requerido.',
      "regexp": 'Este valor es incorrecto.',
      "min": 'Este valor no debe ser menor que %s.',
      "max": 'Este valor no debe ser mayor que %s.',
      "range": 'Este valor debe estar entre %s y %s.',
      "minlength": 'Este valor es muy corto. La longitud mínima es de %s caracteres.',
      "maxlength": 'Este valor es muy largo. La longitud máxima es de %s caracteres.',
      "rangelength": 'La longitud de este valor debe estar entre %s y %s caracteres.',
      "mincheck": 'Debe seleccionar al menos %s opciones.',
      "maxcheck": 'Debe seleccionar %s opciones o menos.',
      "rangecheck": 'Debe seleccionar entre %s y %s opciones.',
      "equalto": 'Este valor debe ser idéntico.',
      "postalcode": 'Introduzca un código postal válido, por favor.',
      "alphanumponc": 'Introduzca sólo números, guiones, puntos y barras, por favor.',
      "minwords": 'Este valor debe tener al menos %s palabras.',
      "maxwords": 'Este valor no debe exceder las %s palabras.',
      "rangewords": 'Este valor debe tener entre %s y %s palabras.',
      "greaterthan": 'Este valor no debe ser mayor que %s.',
      "lessthan": 'Este valor no debe ser menor que %s.',
      "beforedate": 'Esta fecha debe ser anterior a %s.',
      "afterdate": 'Esta fecha debe ser posterior a %s.',
      "americandate": 'Este valor debe ser una fecha válida (MM/DD/YYYY).'
    },
    "countries": {
      "ARG": 'Argentina',
      "BOL": 'Bolivia',
      "BRA": 'Brasil',
      "CAN": 'Canadá',
      "CHL": 'Chile',
      "COL": 'Colombia',
      "ECU": 'Ecuador',
      "GTM": 'Guatemala',
      "MEX": 'México',
      "PER": 'Peru',
      "PRY": 'Paraguay',
      "URY": 'Uruguay',
      "USA": 'Estados Unidos'
    },
    "global": {
      "free": 'Gratis',
      "cancel": 'Cancelar',
      "loading": 'Cargando',
      "edit": 'Cambiar',
      "save": 'Guardar',
      "waiting": 'Aún falta llenar con los datos',
      "notRequired": 'Opcional'
    }
  }
});
})();
