define = vtex.define || window.define
require = vtex.curl || window.require

define ->
  class CountryCOL
    constructor: () ->
      @country = 'COL'
      @abbr = 'CO'
      @states = []
      @cities = {}
      @map =
        "Amazonas": { "El Encanto" : "91263", "La Chorrera" : "91405", "La Pedrera" : "91407", "Leticia" : "91001", "Mirití - Paraná" : "91460", "Puerto Alegría" : "91530", "Puerto Arica" : "91536", "Puerto Nariño" : "91540", "Tarapacá" : "91798" },
        "Antioquia": { "Abejorral" : "05002", "Abriaquí" : "05004", "Alejandría" : "05021", "Amagá" : "05030", "Amalfi" : "05031", "Andes" : "05034", "Angelópolis" : "05036", "Angostura" : "05038", "Anorí" : "05040", "Anzá" : "05044", "Apartadó" : "05045", "Arboletes" : "05051", "Argelia" : "05055", "Armenia" : "05059", "Barbosa" : "05079", "Bello" : "05088", "Belmira" : "05086", "Betania" : "05091", "Betulia" : "05093", "Briceño" : "05107", "Buriticá" : "05113", "Cáceres" : "05120", "Caicedo" : "05125", "Caldas" : "05129", "Campamento" : "05134", "Cañasgordas" : "05138", "Caracolí" : "05142", "Caramanta" : "05145", "Carepa" : "05147", "Carolina" : "05150", "Caucasia" : "05154", "Chigorodó" : "05172", "Cisneros" : "05190", "Ciudad Bolívar" : "05101", "Cocorná" : "05197", "Concepción" : "05206", "Concordia" : "05209", "Copacabana" : "05212", "Dabeiba" : "05234", "Donmatías" : "05237", "Ebéjico" : "05240", "El Bagre" : "05250", "El Carmen De Viboral" : "05148", "El Santuario" : "05697", "Entrerríos" : "05264", "Envigado" : "05266", "Fredonia" : "05282", "Frontino" : "05284", "Giraldo" : "05306", "Girardota" : "05308", "Gómez Plata" : "05310", "Granada" : "05313", "Guadalupe" : "05315", "Guarne" : "05318", "Guatapé" : "05321", "Heliconia" : "05347", "Hispania" : "05353", "Itagüí" : "05360", "Ituango" : "05361", "Jardín" : "05364", "Jericó" : "05368", "La Ceja" : "05376", "La Estrella" : "05380", "La Pintada" : "05390", "La Unión" : "05400", "Liborina" : "05411", "Maceo" : "05425", "Marinilla" : "05440", "Medellín" : "05001", "Montebello" : "05467", "Murindó" : "05475", "Mutatá" : "05480", "Nariño" : "05483", "Nechí" : "05495", "Necoclí" : "05490", "Olaya" : "05501", "Peñol" : "05541", "Peque" : "05543", "Pueblorrico" : "05576", "Puerto Berrío" : "05579", "Puerto Nare" : "05585", "Puerto Triunfo" : "05591", "Remedios" : "05604", "Retiro" : "05607", "Rionegro" : "05615", "Sabanalarga" : "05628", "Sabaneta" : "05631", "Salgar" : "05642", "San Andrés De Cuerquía" : "05647", "San Carlos" : "05649", "San Francisco" : "05652", "San Jerónimo" : "05656", "San José De La Montaña" : "05658", "San Juan De Urabá" : "05659", "San Luis" : "05660", "San Pedro De Los Milagros" : "05664", "San Pedro De Urabá" : "05665", "San Rafael" : "05667", "San Roque" : "05670", "San Vicente Ferrer" : "05674", "Santa Bárbara" : "05679", "Santa Fé De Antioquia" : "05042", "Santa Rosa De Osos" : "05686", "Santo Domingo" : "05690", "Segovia" : "05736", "Sonsón" : "05756", "Sopetrán" : "05761", "Támesis" : "05789", "Tarazá" : "05790", "Tarso" : "05792", "Titiribí" : "05809", "Toledo" : "05819", "Turbo" : "05837", "Uramita" : "05842", "Urrao" : "05847", "Valdivia" : "05854", "Valparaíso" : "05856", "Vegachí" : "05858", "Venecia" : "05861", "Vigía Del Fuerte" : "05873", "Yalí" : "05885", "Yarumal" : "05887", "Yolombó" : "05890", "Yondó" : "05893", "Zaragoza" : "05895" },
        "Arauca": { "Arauca" : "81001", "Arauquita" : "81065", "Cravo Norte" : "81220", "Fortul" : "81300", "Puerto Rondón" : "81591", "Saravena" : "81736", "Tame" : "81794" },
        "Atlántico": { "Baranoa" : "08078", "Barranquilla" : "08001", "Campo De La Cruz" : "08137", "Candelaria" : "08141", "Galapa" : "08296", "Juan De Acosta" : "08372", "Luruaco" : "08421", "Malambo" : "08433", "Manatí" : "08436", "Palmar De Varela" : "08520", "Piojó" : "08549", "Polonuevo" : "08558", "Ponedera" : "08560", "Puerto Colombia" : "08573", "Repelón" : "08606", "Sabanagrande" : "08634", "Sabanalarga" : "08638", "Santa Lucía" : "08675", "Santo Tomás" : "08685", "Soledad" : "08758", "Suan" : "08770", "Tubará" : "08832", "Usiacurí" : "08849" },
        "Bogotá, D.C.": { "Bogotá, D.c." : "11001" },
        "Bolívar": { "Achí" : "13006", "Altos Del Rosario" : "13030", "Arenal" : "13042", "Arjona" : "13052", "Arroyohondo" : "13062", "Barranco De Loba" : "13074", "Calamar" : "13140", "Cantagallo" : "13160", "Cartagena De Indias" : "13001", "Cicuco" : "13188", "Clemencia" : "13222", "Córdoba" : "13212", "El Carmen De Bolívar" : "13244", "El Guamo" : "13248", "El Peñón" : "13268", "Hatillo De Loba" : "13300", "Magangué" : "13430", "Mahates" : "13433", "Margarita" : "13440", "María La Baja" : "13442", "Mompós" : "13468", "Montecristo" : "13458", "Morales" : "13473", "Norosí" : "13490", "Pinillos" : "13549", "Regidor" : "13580", "Río Viejo" : "13600", "San Cristóbal" : "13620", "San Estanislao" : "13647", "San Fernando" : "13650", "San Jacinto" : "13654", "San Jacinto Del Cauca" : "13655", "San Juan Nepomuceno" : "13657", "San Martín De Loba" : "13667", "San Pablo" : "13670", "Santa Catalina" : "13673", "Santa Rosa" : "13683", "Santa Rosa Del Sur" : "13688", "Simití" : "13744", "Soplaviento" : "13760", "Talaigua Nuevo" : "13780", "Tiquisio" : "13810", "Turbaco" : "13836", "Turbaná" : "13838", "Villanueva" : "13873", "Zambrano" : "13894" },
        "Boyacá": { "Almeida" : "15022", "Aquitania" : "15047", "Arcabuco" : "15051", "Belén" : "15087", "Berbeo" : "15090", "Betéitiva" : "15092", "Boavita" : "15097", "Boyacá" : "15104", "Briceño" : "15106", "Buenavista" : "15109", "Busbanzá" : "15114", "Caldas" : "15131", "Campohermoso" : "15135", "Cerinza" : "15162", "Chinavita" : "15172", "Chiquinquirá" : "15176", "Chíquiza" : "15232", "Chiscas" : "15180", "Chita" : "15183", "Chitaraque" : "15185", "Chivatá" : "15187", "Chivor" : "15236", "Ciénega" : "15189", "Cómbita" : "15204", "Coper" : "15212", "Corrales" : "15215", "Covarachía" : "15218", "Cubará" : "15223", "Cucaita" : "15224", "Cuítiva" : "15226", "Duitama" : "15238", "El Cocuy" : "15244", "El Espino" : "15248", "Firavitoba" : "15272", "Floresta" : "15276", "Gachantivá" : "15293", "Gámeza" : "15296", "Garagoa" : "15299", "Guacamayas" : "15317", "Guateque" : "15322", "Guayatá" : "15325", "Güicán" : "15332", "Iza" : "15362", "Jenesano" : "15367", "Jericó" : "15368", "La Capilla" : "15380", "La Uvita" : "15403", "La Victoria" : "15401", "Labranzagrande" : "15377", "Macanal" : "15425", "Maripí" : "15442", "Miraflores" : "15455", "Mongua" : "15464", "Monguí" : "15466", "Moniquirá" : "15469", "Motavita" : "15476", "Muzo" : "15480", "Nobsa" : "15491", "Nuevo Colón" : "15494", "Oicatá" : "15500", "Otanche" : "15507", "Pachavita" : "15511", "Páez" : "15514", "Paipa" : "15516", "Pajarito" : "15518", "Panqueba" : "15522", "Pauna" : "15531", "Paya" : "15533", "Paz De Río" : "15537", "Pesca" : "15542", "Pisba" : "15550", "Puerto Boyacá" : "15572", "Quípama" : "15580", "Ramiriquí" : "15599", "Ráquira" : "15600", "Rondón" : "15621", "Saboyá" : "15632", "Sáchica" : "15638", "Samacá" : "15646", "San Eduardo" : "15660", "San José De Pare" : "15664", "San Luis De Gaceno" : "15667", "San Mateo" : "15673", "San Miguel De Sema" : "15676", "San Pablo De Borbur" : "15681", "Santa María" : "15690", "Santa Rosa De Viterbo" : "15693", "Santa Sofía" : "15696", "Santana" : "15686", "Sativanorte" : "15720", "Sativasur" : "15723", "Siachoque" : "15740", "Soatá" : "15753", "Socha" : "15757", "Socotá" : "15755", "Sogamoso" : "15759", "Somondoco" : "15761", "Sora" : "15762", "Soracá" : "15764", "Sotaquirá" : "15763", "Susacón" : "15774", "Sutamarchán" : "15776", "Sutatenza" : "15778", "Tasco" : "15790", "Tenza" : "15798", "Tibaná" : "15804", "Tibasosa" : "15806", "Tinjacá" : "15808", "Tipacoque" : "15810", "Toca" : "15814", "Togüí" : "15816", "Tópaga" : "15820", "Tota" : "15822", "Tunja" : "15001", "Tununguá" : "15832", "Turmequé" : "15835", "Tuta" : "15837", "Tutazá" : "15839", "Úmbita" : "15842", "Ventaquemada" : "15861", "Villa De Leyva" : "15407", "Viracachá" : "15879", "Zetaquira" : "15897" },
        "Caldas": { "Aguadas" : "17013", "Anserma" : "17042", "Aranzazu" : "17050", "Belalcázar" : "17088", "Chinchiná" : "17174", "Filadelfia" : "17272", "La Dorada" : "17380", "La Merced" : "17388", "Manizales" : "17001", "Manzanares" : "17433", "Marmato" : "17442", "Marquetalia" : "17444", "Marulanda" : "17446", "Neira" : "17486", "Norcasia" : "17495", "Pácora" : "17513", "Palestina" : "17524", "Pensilvania" : "17541", "Riosucio" : "17614", "Risaralda" : "17616", "Salamina" : "17653", "Samaná" : "17662", "San José" : "17665", "Supía" : "17777", "Victoria" : "17867", "Villamaría" : "17873", "Viterbo" : "17877" },
        "Caquetá": { "Albania" : "18029", "Belén De Los Andaquíes" : "18094", "Cartagena Del Chairá" : "18150", "Curillo" : "18205", "El Doncello" : "18247", "El Paujíl" : "18256", "Florencia" : "18001", "La Montañita" : "18410", "Milán" : "18460", "Morelia" : "18479", "Puerto Rico" : "18592", "San José Del Fragua" : "18610", "San Vicente Del Caguán" : "18753", "Solano" : "18756", "Solita" : "18785", "Valparaíso" : "18860" },
        "Casanare": { "Aguazul" : "85010", "Chámeza" : "85015", "Hato Corozal" : "85125", "La Salina" : "85136", "Maní" : "85139", "Monterrey" : "85162", "Nunchía" : "85225", "Orocué" : "85230", "Paz De Ariporo" : "85250", "Pore" : "85263", "Recetor" : "85279", "Sabanalarga" : "85300", "Sácama" : "85315", "San Luis De Palenque" : "85325", "Támara" : "85400", "Tauramena" : "85410", "Trinidad" : "85430", "Villanueva" : "85440", "Yopal" : "85001" },
        "Cauca": { "Almaguer" : "19022", "Argelia" : "19050", "Balboa" : "19075", "Bolívar" : "19100", "Buenos Aires" : "19110", "Cajibío" : "19130", "Caldono" : "19137", "Caloto" : "19142", "Corinto" : "19212", "El Tambo" : "19256", "Florencia" : "19290", "Guachené" : "19300", "Guapí" : "19318", "Inzá" : "19355", "Jambaló" : "19364", "La Sierra" : "19392", "La Vega" : "19397", "López De Micay" : "19418", "Mercaderes" : "19450", "Miranda" : "19455", "Morales" : "19473", "Padilla" : "19513", "Páez" : "19517", "Patía" : "19532", "Piamonte" : "19533", "Piendamó" : "19548", "Popayán" : "19001", "Puerto Tejada" : "19573", "Puracé" : "19585", "Rosas" : "19622", "San Sebastián" : "19693", "Santa Rosa" : "19701", "Santander De Quilichao" : "19698", "Silvia" : "19743", "Sotara" : "19760", "Suárez" : "19780", "Sucre" : "19785", "Timbío" : "19807", "Timbiquí" : "19809", "Toribío" : "19821", "Totoró" : "19824", "Villa Rica" : "19845" },
        "Cesar": { "Aguachica" : "20011" ,"Agustín Codazzi" : "20013", "Astrea" : "20032", "Becerril" : "20045", "Bosconia" : "20060", "Chimichagua" : "20175", "Chiriguaná" : "20178", "Curumaní" : "20228", "El Copey" : "20238", "El Paso" : "20250", "Gamarra" : "20295", "González" : "20310", "La Gloria" : "20383", "La Jagua De Ibirico" : "20400", "La Paz" : "20621", "Manaure Balcón Del Cesar" : "20443", "Pailitas" : "20517", "Pelaya" : "20550", "Pueblo Bello" : "20570", "Río De Oro" : "20614", "San Alberto" : "20710", "San Diego" : "20750", "San Martín" : "20770", "Tamalameque" : "20787", "Valledupar" : "20001" },
        "Chocó": { "Acandí" : "27006", "Alto Baudó" : "27025", "Atrato" : "27050", "Bagadó" : "27073", "Bahía Solano" : "27075", "Bajo Baudó" : "27077", "Bojayá" : "27099", "Carmen Del Darién" : "27150", "Cértegui" : "27160", "Condoto" : "27205", "El Cantón Del San Pablo" : "27135", "El Carmen De Atrato" : "27245", "El Litoral Del San Juan" : "27250", "Istmina" : "27361", "Juradó" : "27372", "Lloró" : "27413", "Medio Atrato" : "27425", "Medio Baudó" : "27430", "Medio San Juan" : "27450", "Nóvita" : "27491", "Nuquí" : "27495", "Quibdó" : "27001", "Río Iró" : "27580", "Río Quito" : "27600", "Riosucio" : "27615", "San José Del Palmar" : "27660", "Sipí" : "27745", "Tadó" : "27787", "Unguía" : "27800", "Unión Panamericana" : "27810" },
        "Córdoba": { "Ayapel" : "23068", "Buenavista" : "23079", "Canalete" : "23090", "Cereté" : "23162", "Chimá" : "23168", "Chinú" : "23182", "Ciénaga De Oro" : "23189", "Cotorra" : "23300", "La Apartada" : "23350", "Lorica" : "23417", "Los Córdobas" : "23419", "Momil" : "23464", "Moñitos" : "23500", "Montelíbano" : "23466", "Montería" : "23001", "Planeta Rica" : "23555", "Pueblo Nuevo" : "23570", "Puerto Escondido" : "23574", "Puerto Libertador" : "23580", "Purísima De La Concepción" : "23586", "Sahagún" : "23660", "San Andrés De Sotavento" : "23670", "San Antero" : "23672", "San Bernardo Del Viento" : "23675", "San Carlos" : "23678", "San José De Uré" : "23682", "San Pelayo" : "23686", "Tierralta" : "23807", "Tuchín" : "23815", "Valencia" : "23855" },
        "Cundinamarca": { "Agua De Dios" : "25001", "Albán" : "25019", "Anapoima" : "25035", "Anolaima" : "25040", "Apulo" : "25599", "Arbeláez" : "25053", "Beltrán" : "25086", "Bituima" : "25095", "Bojacá" : "25099", "Cabrera" : "25120", "Cachipay" : "25123", "Cajicá" : "25126", "Caparrapí" : "25148", "Cáqueza" : "25151", "Carmen De Carupa" : "25154", "Chaguaní" : "25168", "Chía" : "25175", "Chipaque" : "25178", "Choachí" : "25181", "Chocontá" : "25183", "Cogua" : "25200", "Cota" : "25214", "Cucunubá" : "25224", "El Colegio" : "25245", "El Peñón" : "25258", "El Rosal" : "25260", "Facatativá" : "25269", "Fómeque" : "25279", "Fosca" : "25281", "Funza" : "25286", "Fúquene" : "25288", "Fusagasugá" : "25290", "Gachalá" : "25293", "Gachancipá" : "25295", "Gachetá" : "25297", "Gama" : "25299", "Girardot" : "25307", "Granada" : "25312", "Guachetá" : "25317", "Guaduas" : "25320", "Guasca" : "25322", "Guataquí" : "25324", "Guatavita" : "25326", "Guayabal De Síquima" : "25328", "Guayabetal" : "25335", "Gutiérrez" : "25339", "Jerusalén" : "25368", "Junín" : "25372", "La Calera" : "25377", "La Mesa" : "25386", "La Palma" : "25394", "La Peña" : "25398", "La Vega" : "25402", "Lenguazaque" : "25407", "Machetá" : "25426", "Madrid" : "25430", "Manta" : "25436", "Medina" : "25438", "Mosquera" : "25473", "Nariño" : "25483", "Nemocón" : "25486", "Nilo" : "25488", "Nimaima" : "25489", "Nocaima" : "25491", "Pacho" : "25513", "Paime" : "25518", "Pandi" : "25524", "Paratebueno" : "25530", "Pasca" : "25535", "Puerto Salgar" : "25572", "Pulí" : "25580", "Quebradanegra" : "25592", "Quetame" : "25594", "Quipile" : "25596", "Ricaurte" : "25612", "San Antonio Del Tequendama" : "25645", "San Bernardo" : "25649", "San Cayetano" : "25653", "San Francisco" : "25658", "San Juan De Rioseco" : "25662", "Sasaima" : "25718", "Sesquilé" : "25736", "Sibaté" : "25740", "Silvania" : "25743", "Simijaca" : "25745", "Soacha" : "25754", "Sopó" : "25758", "Subachoque" : "25769", "Suesca" : "25772", "Supatá" : "25777", "Susa" : "25779", "Sutatausa" : "25781", "Tabio" : "25785", "Tausa" : "25793", "Tena" : "25797", "Tenjo" : "25799", "Tibacuy" : "25805", "Tibirita" : "25807", "Tocaima" : "25815", "Tocancipá" : "25817", "Topaipí" : "25823", "Ubalá" : "25839", "Ubaque" : "25841", "Une" : "25845", "Útica" : "25851", "Venecia" : "25506", "Vergara" : "25862", "Vianí" : "25867", "Villa De San Diego De Ubaté" : "25843", "Villagómez" : "25871", "Villapinzón" : "25873", "Villeta" : "25875", "Viotá" : "25878", "Yacopí" : "25885", "Zipacón" : "25898", "Zipaquirá" : "25899" },
        "Guainía": { "Barranco Minas" : "94343", "Cacahual" : "94886", "Inírida" : "94001", "La Guadalupe" : "94885", "Mapiripana" : "94663", "Morichal" : "94888", "Pana Pana" : "94887", "San Felipe" : "94883" },
        "Guaviare": { "Calamar" : "95015", "El Retorno" : "95025", "Miraflores" : "95200", "San José Del Guaviare" : "95001" },
        "Huila": { "Acevedo" : "41006", "Agrado" : "41013", "Aipe" : "41016", "Algeciras" : "41020", "Altamira" : "41026", "Baraya" : "41078", "Campoalegre" : "41132", "Colombia" : "41206", "Elías" : "41244", "Garzón" : "41298", "Gigante" : "41306", "Guadalupe" : "41319", "Hobo" : "41349", "Íquira" : "41357", "Isnos" : "41359", "La Argentina" : "41378", "La Plata" : "41396", "Nátaga" : "41483", "Neiva" : "41001", "Oporapa" : "41503", "Paicol" : "41518", "Palermo" : "41524", "Palestina" : "41530", "Pital" : "41548", "Pitalito" : "41551", "Rivera" : "41615", "Saladoblanco" : "41660", "San Agustín" : "41668", "Santa María" : "41676", "Suaza" : "41770", "Tarqui" : "41791", "Tello" : "41799", "Teruel" : "41801", "Tesalia" : "41797", "Timaná" : "41807", "Villavieja" : "41872", "Yaguará" : "41885" },
        "La Guajira": { "Albania" : "44035", "Barrancas" : "44078", "Dibulla" : "44090", "Distracción" : "44098", "El Molino" : "44110", "Fonseca" : "44279", "Hatonuevo" : "44378", "La Jagua Del Pilar" : "44420", "Maicao" : "44430", "Manaure" : "44560", "Riohacha" : "44001", "San Juan Del Cesar" : "44650", "Uribia" : "44847", "Urumita" : "44855", "Villanueva" : "44874" },
        "Magdalena": { "Algarrobo" : "47030", "Aracataca" : "47053", "Ariguaní" : "47058", "Cerro De San Antonio" : "47161", "Chivolo" : "47170", "Ciénaga" : "47189", "Concordia" : "47205", "El Banco" : "47245", "El Piñón" : "47258", "El Retén" : "47268", "Fundación" : "47288", "Guamal" : "47318", "Nueva Granada" : "47460", "Pedraza" : "47541", "Pijiño Del Carmen" : "47545", "Pivijay" : "47551", "Plato" : "47555", "Puebloviejo" : "47570", "Remolino" : "47605", "Sabanas De San Ángel" : "47660", "Salamina" : "47675", "San Sebastián De Buenavista" : "47692", "San Zenón" : "47703", "Santa Ana" : "47707", "Santa Bárbara De Pinto" : "47720", "Santa Marta" : "47001", "Sitionuevo" : "47745", "Tenerife" : "47798", "Zapayán" : "47960", "Zona Bananera" : "47980" },
        "Meta": { "Acacías" : "50006", "Barranca De Upía" : "50110", "Cabuyaro" : "50124", "Castilla La Nueva" : "50150", "Cumaral" : "50226", "El Calvario" : "50245", "El Castillo" : "50251", "El Dorado" : "50270", "Fuente De Oro" : "50287", "Granada" : "50313", "Guamal" : "50318", "La Macarena" : "50350", "Lejanías" : "50400", "Mapiripán" : "50325", "Mesetas" : "50330", "Puerto Concordia" : "50450", "Puerto Gaitán" : "50568", "Puerto Lleras" : "50577", "Puerto López" : "50573", "Puerto Rico" : "50590", "Restrepo" : "50606", "San Carlos De Guaroa" : "50680", "San Juan De Arama" : "50683", "San Juanito" : "50686", "San Luis De Cubarral" : "50223", "San Martín" : "50689", "Uribe" : "50370", "Villavicencio" : "50001", "Vistahermosa" : "50711" },
        "Nariño": { "Albán" : "52019", "Aldana" : "52022", "Ancuyá" : "52036", "Arboleda" : "52051", "Barbacoas" : "52079", "Belén" : "52083", "Buesaco" : "52110", "Chachagüí" : "52240", "Colón" : "52203", "Consacá" : "52207", "Contadero" : "52210", "Córdoba" : "52215", "Cuaspúd" : "52224", "Cumbal" : "52227", "Cumbitara" : "52233", "El Charco" : "52250", "El Peñol" : "52254", "El Rosario" : "52256", "El Tablón De Gómez" : "52258", "El Tambo" : "52260", "Francisco Pizarro" : "52520", "Funes" : "52287", "Guachucal" : "52317", "Guaitarilla" : "52320", "Gualmatán" : "52323", "Iles" : "52352", "Imués" : "52354", "Ipiales" : "52356", "La Cruz" : "52378", "La Florida" : "52381", "La Llanada" : "52385", "La Tola" : "52390", "La Unión" : "52399", "Leiva" : "52405", "Linares" : "52411", "Los Andes" : "52418", "Magüí" : "52427", "Mallama" : "52435", "Mosquera" : "52473", "Nariño" : "52480", "Olaya Herrera" : "52490", "Ospina" : "52506", "Pasto" : "52001", "Policarpa" : "52540", "Potosí" : "52560", "Providencia" : "52565", "Puerres" : "52573", "Pupiales" : "52585", "Ricaurte" : "52612", "Roberto Payán" : "52621", "Samaniego" : "52678", "San Andrés De Tumaco" : "52835", "San Bernardo" : "52685", "San Lorenzo" : "52687", "San Pablo" : "52693", "San Pedro De Cartago" : "52694", "Sandoná" : "52683", "Santa Bárbara" : "52696", "Santacruz" : "52699", "Sapuyes" : "52720", "Taminango" : "52786", "Tangua" : "52788", "Túquerres" : "52838", "Yacuanquer" : "52885" },
        "Norte De Santander": { "Ábrego" : "54003", "Arboledas" : "54051", "Bochalema" : "54099", "Bucarasica" : "54109", "Cáchira" : "54128", "Cácota" : "54125", "Chinácota" : "54172", "Chitagá" : "54174", "Convención" : "54206", "Cúcuta" : "54001", "Cucutilla" : "54223", "Durania" : "54239", "El Carmen" : "54245", "El Tarra" : "54250", "El Zulia" : "54261", "Gramalote" : "54313", "Hacarí" : "54344", "Herrán" : "54347", "La Esperanza" : "54385", "La Playa" : "54398", "Labateca" : "54377", "Los Patios" : "54405", "Lourdes" : "54418", "Mutiscua" : "54480", "Ocaña" : "54498", "Pamplona" : "54518", "Pamplonita" : "54520", "Puerto Santander" : "54553", "Ragonvalia" : "54599", "Salazar" : "54660", "San Calixto" : "54670", "San Cayetano" : "54673", "Santiago" : "54680", "Sardinata" : "54720", "Silos" : "54743", "Teorama" : "54800", "Tibú" : "54810", "Toledo" : "54820", "Villa Caro" : "54871", "Villa Del Rosario" : "54874" },
        "Putumayo": { "Colón" : "86219", "Mocoa" : "86001", "Orito" : "86320", "Puerto Asís" : "86568", "Puerto Caicedo" : "86569", "Puerto Guzmán" : "86571", "Puerto Leguízamo" : "86573", "San Francisco" : "86755", "San Miguel" : "86757", "Santiago" : "86760", "Sibundoy" : "86749", "Valle Del Guamuez" : "86865", "Villagarzón" : "86885" },
        "Quindio": { "Armenia" : "63001", "Buenavista" : "63111", "Calarcá" : "63130", "Circasia" : "63190", "Córdoba" : "63212", "Filandia" : "63272", "Génova" : "63302", "La Tebaida" : "63401", "Montenegro" : "63470", "Pijao" : "63548", "Quimbaya" : "63594", "Salento" : "63690" },
        "Risaralda": { "Apía" : "66045", "Balboa" : "66075", "Belén De Umbría" : "66088", "Dosquebradas" : "66170", "Guática" : "66318", "La Celia" : "66383", "La Virginia" : "66400", "Marsella" : "66440", "Mistrató" : "66456", "Pereira" : "66001", "Pueblo Rico" : "66572", "Quinchía" : "66594", "Santa Rosa De Cabal" : "66682", "Santuario" : "66687" },
        "San Andrés, Providencia Y Santa Catalina": { "Providencia" : "88564", "San Andrés" : "88001" },
        "Santander": { "Aguada" : "68013", "Albania" : "68020", "Aratoca" : "68051", "Barbosa" : "68077", "Barichara" : "68079", "Barrancabermeja" : "68081", "Betulia" : "68092", "Bolívar" : "68101", "Bucaramanga" : "68001", "Cabrera" : "68121", "California" : "68132", "Capitanejo" : "68147", "Carcasí" : "68152", "Cepitá" : "68160", "Cerrito" : "68162", "Charalá" : "68167", "Charta" : "68169", "Chima" : "68176", "Chipatá" : "68179", "Cimitarra" : "68190", "Concepción" : "68207", "Confines" : "68209", "Contratación" : "68211", "Coromoro" : "68217", "Curití" : "68229", "El Carmen De Chucurí" : "68235", "El Guacamayo" : "68245", "El Peñón" : "68250", "El Playón" : "68255", "Encino" : "68264", "Enciso" : "68266", "Florián" : "68271", "Floridablanca" : "68276", "Galán" : "68296", "Gámbita" : "68298", "Girón" : "68307", "Guaca" : "68318", "Guadalupe" : "68320", "Guapotá" : "68322", "Guavatá" : "68324", "Güepsa" : "68327", "Hato" : "68344", "Jesús María" : "68368", "Jordán" : "68370", "La Belleza" : "68377", "La Paz" : "68397", "Landázuri" : "68385", "Lebrija" : "68406", "Los Santos" : "68418", "Macaravita" : "68425", "Málaga" : "68432", "Matanza" : "68444", "Mogotes" : "68464", "Molagavita" : "68468", "Ocamonte" : "68498", "Oiba" : "68500", "Onzaga" : "68502", "Palmar" : "68522", "Palmas Del Socorro" : "68524", "Páramo" : "68533", "Piedecuesta" : "68547", "Pinchote" : "68549", "Puente Nacional" : "68572", "Puerto Parra" : "68573", "Puerto Wilches" : "68575", "Rionegro" : "68615", "Sabana De Torres" : "68655", "San Andrés" : "68669", "San Benito" : "68673", "San Gil" : "68679", "San Joaquín" : "68682", "San José De Miranda" : "68684", "San Miguel" : "68686", "San Vicente De Chucurí" : "68689", "Santa Bárbara" : "68705", "Santa Helena Del Opón" : "68720", "Simacota" : "68745", "Socorro" : "68755", "Suaita" : "68770", "Sucre" : "68773", "Suratá" : "68780", "Tona" : "68820", "Valle De San José" : "68855", "Vélez" : "68861", "Vetas" : "68867", "Villanueva" : "68872", "Zapatoca" : "68895" },
        "Sucre": { "Buenavista" : "70110", "Caimito" : "70124", "Chalán" : "70230", "Coloso" : "70204", "Corozal" : "70215", "Coveñas" : "70221", "El Roble" : "70233", "Galeras" : "70235", "Guaranda" : "70265", "La Unión" : "70400", "Los Palmitos" : "70418", "Majagual" : "70429", "Morroa" : "70473", "Ovejas" : "70508", "Palmito" : "70523", "Sampués" : "70670", "San Benito Abad" : "70678", "San Juan De Betulia" : "70702", "San Luis De Sincé" : "70742", "San Marcos" : "70708", "San Onofre" : "70713", "San Pedro" : "70717", "Santiago De Tolú" : "70820", "Sincelejo" : "70001", "Sucre" : "70771", "Tolú Viejo" : "70823" },
        "Tolima": { "Alpujarra" : "73024", "Alvarado" : "73026", "Ambalema" : "73030", "Anzoátegui" : "73043", "Armero Guayabal" : "73055", "Ataco" : "73067", "Cajamarca" : "73124", "Carmen De Apicalá" : "73148", "Casabianca" : "73152", "Chaparral" : "73168", "Coello" : "73200", "Coyaima" : "73217", "Cunday" : "73226", "Dolores" : "73236", "Espinal" : "73268", "Falan" : "73270", "Flandes" : "73275", "Fresno" : "73283", "Guamo" : "73319", "Herveo" : "73347", "Honda" : "73349", "Ibagué" : "73001", "Icononzo" : "73352", "Lérida" : "73408", "Líbano" : "73411", "Melgar" : "73449", "Murillo" : "73461", "Natagaima" : "73483", "Ortega" : "73504", "Palocabildo" : "73520", "Piedras" : "73547", "Planadas" : "73555", "Prado" : "73563", "Purificación" : "73585", "Rioblanco" : "73616", "Roncesvalles" : "73622", "Rovira" : "73624", "Saldaña" : "73671", "San Antonio" : "73675", "San Luis" : "73678", "San Sebastián De Mariquita" : "73443", "Santa Isabel" : "73686", "Suárez" : "73770", "Valle De San Juan" : "73854", "Venadillo" : "73861", "Villahermosa" : "73870", "Villarrica" : "73873" },
        "Valle Del Cauca": { "Alcalá" : "76020", "Andalucía" : "76036", "Ansermanuevo" : "76041", "Argelia" : "76054", "Bolívar" : "76100", "Buenaventura" : "76109", "Bugalagrande" : "76113", "Caicedonia" : "76122", "Cali" : "76001", "Calima" : "76126", "Candelaria" : "76130", "Cartago" : "76147", "Dagua" : "76233", "El Águila" : "76243", "El Cairo" : "76246", "El Cerrito" : "76248", "El Dovio" : "76250", "Florida" : "76275", "Ginebra" : "76306", "Guacarí" : "76318", "Guadalajara De Buga" : "76111", "Jamundí" : "76364", "La Cumbre" : "76377", "La Unión" : "76400", "La Victoria" : "76403", "Obando" : "76497", "Palmira" : "76520", "Pradera" : "76563", "Restrepo" : "76606", "Riofrío" : "76616", "Roldanillo" : "76622", "San Pedro" : "76670", "Sevilla" : "76736", "Toro" : "76823", "Trujillo" : "76828", "Tuluá" : "76834", "Ulloa" : "76845", "Versalles" : "76863", "Vijes" : "76869", "Yotoco" : "76890", "Yumbo" : "76892", "Zarzal" : "76895" },
        "Vaupés": { "Carurú" : "97161", "Mitú" : "97001", "Pacoa" : "97511", "Papunaua" : "97777", "Taraira" : "97666", "Yavaraté" : "97889" },
        "Vichada": { "Cumaribo" : "99773", "La Primavera" : "99524", "Puerto Carreño" : "99001", "Santa Rosalía" : "99624" }

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
        postalCode: new RegExp(/^([\d]{5})$/)

      @masks =
        postalCode: '99999'

      @requiredFields = ['addressType', 'addressId', 'receiverName',
                         'postalCode', 'street', 'city', 'state',
                         'country']

      for state of @map
        prop =
          value: state.toUpperCase()
          label: state
        @states.push(prop)
        @cities[state.toUpperCase()] = _.keys(@map[state])