(function(){
var define = vtex.define || window.define;

define(function () {
  return {
    "shipping": {
      "title": "Adresse de livraison",
      "goToPayment": "Aller au paiement",
      "addressList": {
        "header": "Choisir une adresse de livraison",
        "selected": "Sélectionné(e)(s)",
        "select": "Sélectionner",
        "editSelectedAddress": "Modifier l'adresse actuelle",
        "anotherAddress": "Livraison à une autre adresse",
        "deliverAtAddressOf": "Livrer à l'adresse de :"
      },
      "addressForm": {
        "header": "Nouvelle adresse",
        "postalCodeBRA": "CEP",
        "postalCodeCAN": "Code postal",
        "postalCodeUSA": "ZIP",
        "postalCodeARG": "Código Postal (CP)",
        "postalCodeURY": "Código Postal (CP)",
        "postalCodePER": "Código Postal (CP)",
        "postalCodeMEX": "Código Postal",
        "postalCode": "Code postal",
        "street": "Rue",
        "addressLine1": "Ligne d'adresse 1",
        "addressLine2": "Ligne d'adresse 2",
        "number": "Numéro",
        "exteriorNumber": " Numéro extérieur",
        "interiorNumber": " Numéro intérieur",
        "complement": "Informations supplémentaires (ex. : apt. 201)",
        "reference": "Près de",
        "district": "District",
        "neighborhood": "Quartier",
        "commercial": "Adresse commerciale",
        "city": "Ville",
        "locality": "Localité/Lieu-dit",
        "state": "État",
        "region": "Région",
        "community": "Communauté",
        "colony": "Colonie",
        "direction": "Direction",
        "department": "Département",
        "municipality": "Municipalité",
        "province": "Province",
        "delegation": "Délégation",
        "type": "Type d’addresse",
        "receiver": "Récepteur",
        "deliveryCountry": "Pays de livraison",
        "cancelEditAddress": "Annuler et retourner à la liste d’adresses ",
        "searchForAnotherAddress": "Chercher une autre adresse"
      },
      "addressSearch": {
        "address": "Adresse",
        "dontKnowPostalCode": "Je ne sais pas mon code postal",
        "knowPostalCode": "Utilisez mon code postal",
        "addressExampleARG": "Eg: Cerrito, 1350, Buenos Aires",
        "addressExampleBRA": "Eg: Av Dr Cardoso de Melo, 1750, São Paulo",
        "addressExampleCHL": "Eg: Apoquindo, 3039, Santiago",
        "addressExampleCOL": "Eg: Calle 93 # 14-20, Bogotá",
        "addressExampleECU": "Eg: Av Amazonas River, N 37-61, Quito",
        "addressExamplePER": "Eg: Av. José Pardo, 850, Miraflores, Lima",
        "addressExamplePRY": "Eg: Avenida Eusebio Ayala, 100, Assunção",
        "addressExampleURY": "Eg: Bulevar Artigas, 1394, Montevidéu",
        "addressExampleUSA": "Eg: 225 East 41st Street, New York",
        "addressNotDetailed": "Les informations de cette adresse ne sont pas suffisantes.",
        "whatAboutMoreInfo": "Pourquoi ne pas nous passer plus d’informations ? (ex. : numéro)",
        "incompleteAddressData": "Nous n’avons pas trouver votre",
        "searchPostalCode": "Utilisez le service de codes postaux pour faire votre recherche.",
        "shipsTo": "Livrer à"
      },
      "countrySelect": {
        "chooseDeliveryCountry": "Choisissez le pays de livraison "
      },
      "postalCodeInput": {
        "dontUse": "Cette adresse n’a pas de code postal",
        "use": "Ajouter le code postal"
      },
      "shippingOptions": {
        "shippingOptions": "Choisir le mode de livraison",
        "chooseShippingOption": "Veuillez sélectionner un mode de livraison",
        "followingProducts": "Produits de",
        "shippingOption": "Option d’envoi",
        "shippingEstimate": "Estimative",
        "ofSeller": "du vendeur",
        "deliveryDate": "Date d’envoi",
        "chooseScheduledDate": "Choisir votre  date d’envoi",
        "deliveryHour": "Horaire de livraison",
        "workingDay": " Jusqu’à __ compter __ jour ouvré",
        "workingDay_plural": " Jusqu’à __ compter __ jours ouvrés",
        "day": " Jusqu’à __ compter __ jour",
        "day_plural": "Jusqu’à__compter__ jour",
        "fromToHour": "de__de__ à __à__",
        "priceFrom": "de"
      },
      "shippingSummary": {
        "shipping": "Livraison:",
        "chooseOtherShippingOption": "Choisir un autre mode de livraison",
        "atAddressOf": "À l’adresse de :"
      }
    },
    "validation": {
      "defaultMessage": "Valeur non valide semble-t-il.",
      "type": {
        "email": "Cette valeur devrait être une email valide.",
        "url": "Cette valeur devrait être  une URL valide.",
        "urlstrict": "Cette valeur devrait être  une URL valide.",
        "number": "Cette valeur devrait être  un numéro valide.",
        "digits": "Cette valeur devrait contenir des chiffres.",
        "dateIso": "Cette valeur devrait être  une date valide (AAAA-MM-JJ).",
        "alphanum": "Cette valeur devrait être  alphanumérique.",
        "phone": "Cette valeur devrait être  un numéro de téléphone valide."
      },
      "notnull": "Cette valeur ne devrait pas être  nulle.",
      "notblank": "Cette valeur ne devrait pas être vide.",
      "required": "Cette valeur est nécessaire.",
      "regexp": "Cette valeur semble être non valide.",
      "min": "Cette valeur devrait être  supérieure ou égale à %.",
      "max": "Cette valeur devrait être  inférieure ou égale à %.",
      "range": "Cette valeur devrait être  entre % et %.",
      "minlength": "Valeur trop courte. Elle devrait avoir % de caractères ou plus.",
      "maxlength": "Valeur trop longue. Elle devrait avoir % de caractères ou moins.",
      "rangelength": "Longueur de valeur non valide. Elle devrait avoir entre % et % de caractères de long.",
      "mincheck": "Vous devez sélectionner au moins % de choix.",
      "maxcheck": " Vous devez sélectionner % des choix ou moins.",
      "rangecheck": "You must select between % et % de choix.",
      "equalto": "Cette valeur devrait être  identique.",
      "postalcode": "Veuillez saisir un code postal valide.",
      "alphanumponc": " Veuillez saisir des numéros, tirets, points et barres obliques.",
      "minwords": "Cette valeur devrait avoir % de mots au moins.",
      "maxwords": "Cette valeur devrait avoir % de mots maximum.",
      "rangewords": "Cette valeur devrait avoir entre % et % mots.",
      "greaterthan": "Cette valeur devrait être  supérieure à %.",
      "lessthan": "Cette valeur devrait être  inférieure à %.",
      "beforedate": "Cette date devrait être  avant %.",
      "afterdate": "This date devrait être  après %.",
      "americandate": "Cette valeur devrait être  une date valide (MM/JJ/AAAA)."
    },
    "countries": {
      "ARG": "Argentina",
      "BOL": "Bolivia",
      "BRA": "Brazil",
      "CAN": "Canada",
      "CHL": "Chile",
      "COL": "Colombia",
      "ECU": "Equator",
      "GTM": "Guatemala",
      "MEX": "Mexico",
      "PER": "Peru",
      "PRY": "Paraguay",
      "URY": "Uruguay",
      "USA": "USA"
    },
    "global": {
      "free": "Gratuit",
      "cancel": "Annuler",
      "loading": "Chargement en cours",
      "edit": "Modifier",
      "save": "Enregistrer",
      "waiting": "En attente de plus d’informations",
      "notRequired": "Facultatif"
    }
  }
});
})();
