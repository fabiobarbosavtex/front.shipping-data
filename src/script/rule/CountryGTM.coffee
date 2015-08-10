define ->
  class CountryGTM
    constructor: () ->
      @country = 'GTM'
      @abbr = 'GT'
      @states = []
      @cities = []

      `this.map = {
        "Guatemala": {
          "ZONA 1  GUATEMALA": "1001",
          "ZONA 2  GUATEMALA": "1002",
          "ZONA 3  GUATEMALA": "1003",
          "ZONA 4  GUATEMALA": "1004",
          "ZONA 5  GUATEMALA": "1005",
          "ZONA 6  GUATEMALA": "1006",
          "ZONA 7  GUATEMALA": "1007",
          "ZONA 8  GUATEMALA": "1008",
          "ZONA 9  GUATEMALA": "1009",
          "ZONA 10  GUATEMALA": "1010",
          "ZONA 11  GUATEMALA": "1011",
          "ZONA 12  GUATEMALA": "1012",
          "ZONA 13  GUATEMALA": "1013",
          "ZONA 14  GUATEMALA": "1014",
          "ZONA 15  GUATEMALA": "1015",
          "ZONA 16  GUATEMALA": "1016",
          "ZONA 17  GUATEMALA": "1017",
          "ZONA 18  GUATEMALA": "1018",
          "ZONA 19  GUATEMALA": "1019",
          "ZONA 21  GUATEMALA": "1021",
          "SANTA CATARINA PINULA": "1051",
          "SAN JOSE PINULA": "1052",
          "SAN JOSE DEL GOLFO": "1053",
          "PALENCIA": "1054",
          "CHINAUTLA": "1055",
          "SAN PEDRO AYAMPUC": "1056",
          "MIXCO": "1057",
          "SAN PEDRO SACATEPEQUEZ": "1058",
          "SAN JUAN SACATEPEQUEZ": "1059",
          "SAN RAYMUNDO": "1060",
          "CHUARRANCHO": "1061",
          "FRAIJANES": "1062",
          "AMATITLAN": "1063",
          "VILLA NUEVA": "1064",
          "VILLA CANALES": "1065",
          "PETAPA": "1066",
          "CANALITOS (ZONA 21)": "1067",
          "EL FISCAL (PALENCIA)": "1068",
          "BOCA DEL MONTE (VILLA CANALES)": "1069",
          "VUELTA GRANDE (SAN RAYMENDO)": "1070",
          "TRAPICHE GRANDE (CHUARRANCHO)": "1071",
          "SANTA ELENA BARILLAS (VILLA CANALES)": "1072",
          "PUERTA PARADA (SANTA CATARINA PINURA)": "1073"
        },
        "El Progreso": {
          "EL PROGRESO": "2000",
          "GUASTATOYA": "2001",
          "MORAZAN": "2002",
          "SAN AGUSTIN ACASAGUASTLAN": "2003",
          "SAN CRISTOBAL ACASAGUASTLAN": "2004",
          "EL JICARO": "2005",
          "SANSARE": "2006",
          "SANARATE": "2007",
          "SAN ANTONIO LA PAZ": "2008",
          "TULUMAJILLO (SAN AGUSTIN ACASAGUASTLAN)": "2009",
          "ESTACION JALAPA (SANSARE)": "2010",
          "TULUNAJE (SAN AGUSTIN ACASAGUASTLAN)": "2011",
          "ESTANCIA DE LA VIRGEN (SAN CRISTOBAL ACASAGUASTLAN)": "2012",
          "PASO DE LOS JALAPAS (EL JICARO)": "2013",
          "SANTA RITA (GUASTOTOYA)": "2014",
          "EL RANCHO (SAN AGUSTIN ACASAGUASTLAN)": "2015"
        },
        "Sacatepequez": {
          "SACATEPEQUEZ": "3000",
          "ANTIGUA GUATEMALA": "3001",
          "JOCOTENANGO": "3002",
          "PASTORES": "3003",
          "SUMPANGO": "3004",
          "SANTO DOMINGO XENACOJ": "3005",
          "SANTIAGO SACATEPEQUEZ": "3006",
          "SAN BARTOLOME MILPAS ALTAS": "3007",
          "SAN LUCAS SACATEPEQUEZ": "3008",
          "SANTA LUCIA MILPAS ALTAS": "3009",
          "MAGDALENA MILPAS ALTAS": "3010",
          "SANTA MARIA DE JESUS": "3011",
          "CIUDAD VIEJA": "3012",
          "SAN MIGUEL DUEÑAS": "3013",
          "ALOTENANGO": "3014",
          "SAN ANTONIO AGUAS CALIENTES": "3015",
          "SANTA CATARINA BARAHONA": "3016",
          "SANTA MARIA CAUQUE ( SANTIAGO SACATEPEQUEZ)": "3017"
        },
        "Chimaltenango": {
          "CHIMALTENANGO": "4001",
          "SAN JOSE POAQUIL": "4002",
          "SAN MARTIN JILOTEPEQUE": "4003",
          "COMALAPA": "4004",
          "SANTA APOLONIA": "4005",
          "TECPAN GUATEMALA": "4006",
          "PATZUN": "4007",
          "POCHUTA": "4008",
          "PATZICIA": "4009",
          "ACATENANGO": "4011",
          "YEPOCAPA": "4012",
          "SAN ANDRES ITZAPA": "4013",
          "PARRAMOS": "4014",
          "ZARAGOZA": "4015",
          "EL TEJAR": "4016"
        },
        "Escuintla": {
          "ESCUINTLA": "5001",
          "SANTA LUCIA COTZUMALGUAPA": "5002",
          "LA DEMOCRACIA": "5003",
          "SIQUINALA": "5004",
          "MASAGUA": "5005",
          "TIQUISATE": "5006",
          "LA GOMERA": "5007",
          "SAN JOSE": "5008",
          "IZTAPA": "5009",
          "PALIN": "5010",
          "SAN VICENTE PACAYA": "5011",
          "NUEVA CONCEPCION": "5012",
          "OBERO (MASGUA)": "5013",
          "BRITO (GUANAGAZAPA)": "5014",
          "SANTA ANA MIXTAN NUEVA CONCEPCION)": "5015",
          "EL NARANJO (MASAGUA)": "5016",
          "SAN ANDRES OSUNA (ESCUINTLA)": "5017",
          "CUYUTA (MASAGUA)": "5018",
          "EL PORVENIR (TIQUISATA)": "5019",
          "SIPACATE (LA GOMERA)": "5020"
        },
        "Santa Rosa": {
          "CUILAPA": "6001",
          "BARBERENA": "6002",
          "SANTA ROSA DE LIMA": "6003",
          "CASILLAS": "6004",
          "SAN RAFAEL LAS FLORES": "6005",
          "ORATORIO": "6006",
          "SAN JUAN TECUACO": "6007",
          "CHIQUIMULILLA": "6008",
          "TAISCO": "6009",
          "SANTA MARIA IXHUATAN": "6010",
          "GUAZACAPAN": "6011",
          "SANTA CRUZ NARANJO": "6012",
          "PUBLO NUEVO VIÑAS": "6013",
          "NUEVA SANTA ROSA": "6014",
          "EL AHUMADO (CHIQUIMULILLA)": "6015",
          "LOS CERRITOS (CHIQUIMULILLA)": "6016",
          "CASAS VIEJAS (CHIQUIMULILLA)": "6017",
          "AYARZA(CASILLAS)": "6018",
          "EL MOLINO (CUILAPA)": "6019",
          "NANCINTA (CHIQUIMULILLA)": "6020",
          "SAN MIGUEL AROCHE (CHUIQUIMULILLA)": "6021",
          "LOS ESCLAVOS (CUILAPA)": "6022",
          "EL SERINAL (BARBERENA)": "6023",
          "MONTERICO (TAXISCO)": "6024",
          "SAN JUAN DE ARANA (CUILAPA)": "6025",
          "EL RINCONCITO (SANTA ROSA DE LIMA)": "6026",
          "CERRO GORDO (SANTA ROSA DE LIMA)": "6027"
        },
        "Solola": {
          "Sololá": "7001",
          "San José Chacaya": "7002",
          "Santa María Visitación": "7003",
          "Santa Lucía Utatlán": "7004",
          "Nahualá": "7005",
          "Santa Catarina Ixtahuacán": "7006",
          "Santa Clara La Laguna": "7007",
          "Concepción": "7008",
          "San Andrés Semetabaj": "7009",
          "Panajachel": "7010",
          "Santa Catarina Palopó": "7011",
          "San Antonio Palopó": "7012",
          "San Lucas tolimán": "7013",
          "Santa Cruz La Laguna": "7014",
          "San Pablo La Laguna": "7015",
          "San Marcos La Laguna": "7016",
          "San Juan La Laguna": "7017",
          "San Pedro La Laguna": "7018",
          "Santiago Atitlán": "7019",
          "Los Encuentros Sololá": "7020",
          "Godínez (San Andrés Semetabaj)": "7021",
          "Agua Escondida (San Antonio Palopó)": "7022",
          "Argueta (Sololá)": "7023",
          "Pixbaj (Sololá)": "7024"
        },
        "Totonicapan": {
          "TOTONICAPAN": "8001",
          "SAN CRISTOBAL TOTONICAPAN": "8002",
          "SAN FRANCISCO EL ALTO": "8003",
          "SAN ANDRES XECUL": "8004",
          "MOMOSTENANGO": "8005",
          "SANTA MARIA CHIQUIMULA": "8006",
          "SANTA LUCIA LA REFORMA": "8007",
          "SAN BARTOLO": "8008"
        },
        "Quetzaltenango": {
          "QUETZALTENANGO": "9001",
          "SALCAJA": "9002",
          "OLINTEPEQUE": "9003",
          "SAN CARLOS SIJA": "9004",
          "SIBILIA": "9005",
          "CABRICAN": "9006",
          "CAJOLA": "9007",
          "SAN MIGUEL SIGUILA": "9008",
          "OSTUNCALCO": "9009",
          "SAN MATEO": "9010",
          "CONCEPCION CHIQUIRICHAPA": "9011",
          "SAN MARTIN SACATEPEQUEZ": "9012",
          "ALMOLONGA": "9013",
          "CANTEL": "9014",
          "HUITLA": "9015",
          "ZUNIL": "9016",
          "COLOMBA": "9017",
          "SAN FRANCISCO LA UNION": "9018",
          "EL PALMAR": "9019",
          "COATEPEQUE": "9020",
          "GENOVA": "9021",
          "FLORES COSTA CUCA": "9022",
          "LA ESPERANZA": "9023",
          "PALESTINA DE LOS ALTOS": "9024",
          "SANTA MARIA DE JESUS ( ZUNIL)": "9025",
          "CHIQUIBAL (SAN CARLOS SIJA)": "9026",
          "LAS PALMAS COATEPEQUE": "9027",
          "CUICALBA(SIBILIA)": "9028",
          "SAN JOSE CHIQUILAJA(QUETZALTENANGO)": "9029",
          "EL EDEN (PALESTINA DE LOS ALTOS)": "9030",
          "CHUATUJ (SAN CARLOS SIJA)": "9031",
          "EL TAMBOR (EL PALMAR)": "9032",
          "LAS MERCEDES (COLOMBA)": "9033",
          "PALMIRA (COLOMBA)": "9034"
        },
        "Suchitepequez": {
          "MAZATENANGO": "10001",
          "CUYOTENANGO": "10002",
          "SAN FRANCISCO ZAPATITLAN": "10003",
          "SAN BERNARDINO": "10004",
          "SAN JOSE EL IDOLO": "10005",
          "SANTO DOMINGO SUCHITEPEQUEZ": "10006",
          "SAN LORENZO": "10007",
          "SAMAYAO": "10008",
          "SAN PABLO JOCOPILAS": "10009",
          "SAN ANTONIO SUCHITEPEQUEZ": "10010",
          "SAN MIGUEL PANAN": "10011",
          "SAN GEBRIEL": "10012",
          "CHICACAO": "10013",
          "PATULUL": "10014",
          "SANTA BARBARA": "10015",
          "SAN JUAN BAUTISTA": "10016",
          "SANTO TOMAS LA UNION": "10017",
          "ZUNULITO": "10018",
          "PUEBLO NUEVO": "10019",
          "RIO BRAVO": "10020",
          "COCALES ( PATUTUL)": "10021",
          "CHOCOLA( SAN PABLO JOCOPILAS)": "10022",
          "TAHUEXCO ( MAZATENANGO)": "10023",
          "GUATALON (RIO BRAVO)": "10024",
          "PALO GORDO (SAN ANTONIO SUCHI)": "10025",
          "SAN RAFAEL PANAN (SANTA BARBARA)": "10026",
          "BRACITOS (MAZATENANGO)": "10027",
          "BOLIVIA (SANTO DOMINGO SUCHI)": "10028",
          "MONTERREY (SANTO DOMINGO SUCHI)": "10029",
          "LA MAQUINA ( CUYOTENANGO)": "10030"
        },
        "Retalhuleu": {
          "Retalhuleu (cabecera deptal.)": "11001",
          "San Sebastián": "11002",
          "Santa Crúz Mulua": "11003",
          "San Martín Zapotitlán": "11004",
          "San Felipe": "11005",
          "San Andrés Villa Seca": "11006",
          "Champerico": "11007",
          "Nuevo San Carlos": "11008",
          "El Asintal": "11009",
          "Caballo blanco (Retalhuelu)": "11010",
          "Candelaria Xolhuitz (Nvo. Sn. Carlos)": "11011",
          "Sinavba (El asintal)": "11012",
          "El Xab (El Asintal)": "11013",
          "La Máquina(Sn. Andrés Villa Seca)": "11014"
        },
        "San Marcos": {
          "SAN MARCOS": "12001",
          "SAN PEDRO SACATEPEQUEZ": "12002",
          "SAN ANTONIO SACATEPEQUEZ": "12003",
          "COMITANCILLO": "12004",
          "SAN MIGUEL IXTAGUACAN": "12005",
          "CONCEPCION TUTUAPA": "12006",
          "TANACA": "12007",
          "SIBINAL": "12008",
          "TAJUMULCO": "12009",
          "TEJUTLA": "12010",
          "SAN RAFAEL PIE DE LA CUESTA": "12011",
          "NUEVO PROGRESO": "12012",
          "EL TUMBADOR": "12013",
          "EL RODEO": "12014",
          "MALACATAN": "12015",
          "CATARINA": "12016",
          "TOCUN UMAN": "12017",
          "OCOS": "12018",
          "SAN PABLO": "12019",
          "EL QUETZAL": "12020",
          "LA REFORMA": "12021",
          "PAJAPITA": "12022",
          "IXCHIGUAN": "12023",
          "SAN JOSE OJOTEPAN": "12024",
          "SAN CRITOBAL CUCHO": "12025",
          "SIPACANA": "12026",
          "ESQUIPULAS PALO GORDO": "12027",
          "RIO BLANCO": "12028",
          "SAN LORENZO": "12029",
          "EL CARMEN (MALACATAN)": "12030",
          "ZANJON SAN LORENZO (TECUN UMAN)": "12031",
          "SAN JERONIMO ( EL TUMBEDOR)": "12032",
          "SRCHIL ( SAN MARCOS)": "12033",
          "LA DEMOCRACIA ( EL TUMBADOR)": "12034",
          "SAN FRANCISCO (EL RODEO)": "12035",
          "EL AMPARO ( EL TUMBADOR)": "12036",
          "SAN SEBASTIAN ( SAN MARCOS)": "12037",
          "LOS LIMINES (OCOS)": "12038",
          "LA BLANCA ( OCOS)": "12039",
          "EL CICLO ( EL TUMBADOR)": "12040",
          "SAN JOSE IXTAL (NUEVO PROGRESO)": "12041",
          "PLATANARES( OCOS)": "12042",
          "LAS DELICIAS ( EL TUMBADOR)": "12043",
          "CALAPTE (IXCHIGUAN)": "12044",
          "TOCAHE ( SAN PABLO)": "12045",
          "LA CONQUISTA ( NUEVO PROGRESO)": "12046",
          "CHAMPOLLAP (SAN PEDRO SAC)": "12047",
          "PIEDRA GRANDE (SAN PEDRO GRANDE)": "12048",
          "SANTA LUICIA IXTACAMAL (SAN MARCOS)": "12049",
          "EL SITIO (CATARINA)": "12050"
        },
        "Huehuetenango": {
          "Huehuetenango": "13001",
          "Chiantla": "13002",
          "Malacatancito": "13003",
          "Cuilco": "13004",
          "Nentón": "13005",
          "San Pedro Necta": "13006",
          "Jacaltenango": "13007",
          "Soloma": "13008",
          "Ixtahuacán": "13009",
          "Santa Bárbara": "13010",
          "La Libertad": "13011",
          "La Democracia": "13012",
          "San Miguel Acatán": "13013",
          "San Rafael La Independencia": "13014",
          "Todos Santos Cuchumatán": "13015",
          "San Juan Atitán": "13016",
          "Santa Eulalia": "13017",
          "San Mateo Ixtatán": "13018",
          "Colotenango": "13019",
          "San Sebastián Huehuetenango": "13020",
          "Tectitán": "13021",
          "Concepción": "13022",
          "Juan Ixcoy": "13023",
          "San Antonio Huista": "13024",
          "San Sebastián costán": "13025",
          "Barillas": "13026",
          "Aguacatán": "13027",
          "San Rafael Petzal": "13028",
          "San Gaspar Ixchil": "13029",
          "Santiago Chimaltenango": "13030",
          "Santa Ana Huista": "13031",
          "Gracias a Dios (Nentón)": "13032",
          "San Lorenzo (Huehuetenango)": "13033",
          "San Martín Cuchumatán (Todos Santos Cuchumatán)": "13034",
          "San Marcos Huista (Jacaltenango)": "13035",
          "Petatán (Concepción)": "13036",
          "Paquix (Chiantla)": "13037",
          "Michicoy (San Pedro Necta)": "13038",
          "San Andrés Huista (Jacaltenango)": "13039",
          "Chalum (La Libertad)": "13040",
          "La Mesilla": "13041"
        },
        "Quiche": {
          "SANTA CRUZ DEL QUICHE": "14001",
          "QUICHE": "14002",
          "CHINIQUE": "14003",
          "ZACUALPA": "14004",
          "CHAJUL": "14005",
          "CHICHICASTENANGO": "14006",
          "PATZITE": "14007",
          "SAN ANTONIO LLOTENANGO": "14008",
          "SAN PEDRO JOCOPILAS": "14009",
          "CUNEN": "14010",
          "SAN JUAN COTZAL": "14011",
          "JOYABAJ": "14012",
          "NEBAJ": "14013",
          "SAN ANDRES SAJCABAJA": "14014",
          "USPANTAN": "14015",
          "SACAPULAS": "14016",
          "SAN BARTOLOME JOCOTENANGO": "14017",
          "CANILLA": "14018",
          "PLAYA GRANDE (IXCAN)": "14019",
          "CHICAMAN": "14020",
          "SANTA ROSA CHUJUYUB (SANTA CRUZ DELQUICHE)": "14021",
          "PACHALUM": "14022",
          "CANTABAL": "14023",
          "SAN JOSE LA 20 (USPANTAN)": "14024",
          "XACBAL": "14025"
        },
        "Baja Verapaz": {
          "SALAMA": "15001",
          "SAN MIGUEL CHICAJ": "15002",
          "RABINAL": "15003",
          "CUBULCO": "15004",
          "GRANADOS": "15005",
          "EL CHOL": "15006",
          "SAN JERONIMO": "15007",
          "PURULHA": "15008",
          "LOS AMATES (EL CHOL)": "15009",
          "LA CANOA (SALAMA)": "15010",
          "SALTIN (GRANADOS)": "15011",
          "SAN GABRIEL PANTZUY (S MIGUEL CHIHAJ)": "15012"
        },
        "Alta Verapaz": {
          "Cobán": "16001",
          "Santa Cruz Verapaz": "16002",
          "San Cristobal Verapaz": "16003",
          "Tactic": "16004",
          "Tamahú": "16005",
          "Tucurú": "16006",
          "Panzos": "16007",
          "Senahú": "16008",
          "San Pedro Carchá": "16009",
          "San Juan Chamelco": "16010",
          "Lanquín": "16011",
          "Cahabón": "16012",
          "Chisec": "16013",
          "Chahal": "16014",
          "Fray Bartolomé de las Casas": "16015",
          "La Tinta (Panzós)": "16016",
          "Telemán (Panzós)": "16017",
          "Pancajché (Tucurú)": "16018",
          "(Fray Bartolomé de las Casas)": "16019",
          "Boloncho (Fray Bartolomé de las Casas)": "16020",
          "Campur (San Pedro Caarchá)": "16021",
          "Las Casas": "16022",
          "Salacuín": "16023",
          "El Rosario": "16024",
          "Las Conchas": "16025",
          "RAXRUHA (CHISEC)": "16026"
        },
        "Peten": {
          "FLORES": "17001",
          "SAN JOSE": "17002",
          "SAN BENITO": "17003",
          "SAN ANDRES": "17004",
          "LA LIBERTAD": "17005",
          "SAN FRANCISCO": "17006",
          "SANTA ANA": "17007",
          "DOLORES": "17008",
          "SAN LUIS": "17009",
          "SAYAXCHE": "17010",
          "MECHOR DE MENCOS": "17011",
          "POPTUM": "17012",
          "TIKAL (FLORES)": "17013",
          "DOS LAGUNAS ( FLORES)": "17014",
          "SANTO TORIBIO (DOLORES)": "17015",
          "PASO CABALLOS (SAN ANDRES)": "17016",
          "UAXACTUN (FLORES)": "17017",
          "CARMELITA (SAN ANDRES)": "17018",
          "MACHAQUILA (DOLORES)": "17019",
          "EL CHAL (DOLORES)": "17020",
          "MACACHE (DOLORES)": "17021",
          "EL REMATE (FLORES)": "17022",
          "LA FELICIDAD ( SAYAXCHE)": "17023",
          "EL NARANJO (LA LIBERTAD)": "17024",
          "SACPUY (SAN ANDRES)": "17025",
          "PAXCAMAN (FLORES)": "17026",
          "LAS CRUCES (LA LIBERTAD)": "17027",
          "SABANETA (DOLORES)": "17028",
          "SANTA ELENA": "17029"
        },
        "Izabal": {
          "PUERTO BARRIOS": "18001",
          "LIVINGSTON": "18002",
          "EL ESTOR": "18003",
          "MORALES": "18004",
          "LOS AMATES": "18005",
          "PLAYITAS (MORALES": "18006",
          "EL RICO (LOS AMANTES)": "18007",
          "CAYUGA (MORALES)": "18008",
          "QUIRIGUA (LOS AMANTES)": "18009",
          "EL CINCHAO (PUERTO BARRIOS)": "18010",
          "LAS QUEBRADAS (MORALES)": "18011",
          "ENTRE RIOS (PUERTO BARRIOS)": "18012",
          "SANTO TOMAS DE CASTILLA (PUERTO BARRIOS)": "18013",
          "EL MITCHAL (MORALES)": "18014",
          "LAS VIÑAS (MORALES)": "18015",
          "EL REFUGIO ( LOS AMATES)": "18016",
          "SANTA INES ( LOS AMATES)": "18017",
          "TENEDORES (MORALES)": "18018",
          "SAN FELIPE ( LIVINGSTON)": "18019",
          "BANANERA (LOS MORALES)": "18020",
          "FRONTERAS (LIVINGSTON)": "18021",
          "MARISCOS (LOS AMANTES)": "18022",
          "BUENOS AIRES (MORALES)": "18023"
        },
        "Zacapa": {
          "ZACAPA": "19001",
          "ESTANZUELA": "19002",
          "RIO ONDO": "19003",
          "GUALAN": "19004",
          "TECULUTAN": "19005",
          "USUMATLAN": "19006",
          "CABAÑAS": "19007",
          "SAN DIEGO": "19008",
          "LA UNION": "19009",
          "HUITE": "19010",
          "LA REFORMA ( HUITE)": "19011",
          "SAN JOSE (TECULUTAN)": "19012",
          "SAN JORGE ZACAPA)": "19013",
          "SANTA ROSALIA (ZACAPA)": "19014",
          "SANTA LUCIA (ZACAPA)": "19015",
          "LA FRAGUA": "19016",
          "SAN PABLO (ZACAPA)": "19017",
          "SAN VICENTE (CABAÑAS)": "19018"
        },
        "Chiquimula": {
          "Chiquimula": "20001",
          "San José La Arada": "20002",
          "San Juan la Hermita": "20003",
          "Jocotán": "20004",
          "Camotán": "20005",
          "Olopa": "20006",
          "Esquipulas": "20007",
          "CONCEPCION LAS MINAS": "20008",
          "QUEZALTEPEQUE": "20009",
          "SAN JACINTO": "20010",
          "IPALA": "20011",
          "ANGUIATU (CONCEPCION LAS MINAS)": "20012",
          "EL AMARILLO (JOCOTAN)": "20013",
          "EL FLORIDO (CAMOTAN)": "20014",
          "SANTA ELENA (CHIQUIMULA)": "20015",
          "VADO HONDO (CHIQUIMULA)": "20016",
          "SAN ESTEBAN (CHIQUIMULA)": "20017",
          "TIERRA COLORADA (SAN JOSE LA ARADA)": "20018",
          "AGUA CALIENTE ( ESQUIPULAS)": "20019",
          "NUEVA ANGUIATU (CONCEPCION LAS MINAS)": "20020"
        },
        "Jalapa": {
          "LLANO  GRANDE": "20008",
          "JALAPA": "21001",
          "SAN PEDRO PINULA": "21002",
          "SAN LUIS JILOTEPEQUE": "21003",
          "SAN MANUEL CHAPARRON": "21004",
          "SAN CARLOS ALZATATE": "21005",
          "MONJAS": "21006",
          "MATATEACUINTLA": "21007"
        },
        "Jutiapa": {
          "JUTIAPA": "22001",
          "EL PROGRESO": "22002",
          "SANTA CATARINA MITA": "22003",
          "AGUA BLANCA": "22004",
          "ASUNCION MITA": "22005",
          "YUPILTEPEQUE": "22006",
          "ATESCATEMPA": "22007",
          "JERES": "22008",
          "EL ADELANTO": "22009",
          "ZAPOTITLAN": "22010",
          "COMAPA": "22011",
          "JALPATAGUA": "22012",
          "CONGUANCO": "22013",
          "MOYUTA": "22014",
          "PASACO": "22015",
          "SAN JOSE ACATEMPA": "22016",
          "QUESADA": "22017",
          "CIUDAD PEDRO DE ALVARADO ( MOYUTA)": "22018",
          "SAN CRISTOBAL FRONTERA (ATESCATEMPA)": "22019",
          "VALLE NUEVO JALPATAGUA": "22020",
          "RIO DE PAZ": "22021",
          "HORCONES (STA CAT MITA)": "22022",
          "EL OVEJERO ( EL PROGRESO)": "22023",
          "CONTEPEQUE ( ATESCATEMPA)": "22024",
          "LA ESMERALDA JEREZ": "22025",
          "HORCONES (A TESCATEMPA)": "22026",
          "TIUCAL (ASUNCION MITA)": "22027"
        }
      }`

      for state of @map
        prop =
          value: state.toUpperCase()
          label: state
        @states.push(prop)
        @cities[state.toUpperCase()] = _.keys(@map[state])

      @postalCodeByInput = false
      @postalCodeByState = false
      @postalCodeByCity = true

      @queryByPostalCode = false
      @queryByGeocoding = false

      @deliveryOptionsByPostalCode = true
      @deliveryOptionsByGeocordinates = false

      @basedOnStateChange = true
      @basedOnCityChange = false

      @geocodingAvailable = false
      @isStateUpperCase = false

      @regexes =
        postalCode: new RegExp(/^[\d]{5}$/)

      @masks =
        postalCode: '99999'

      @requiredFields = ['addressType', 'addressId', 'receiverName',
                         'postalCode', 'street', 'city', 'state',
                         'country']