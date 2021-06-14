class Address {

List<String> buildingNumber = [
  "###",
  "##",
  "#"
];

List<String> city = [
  "#{city_prefix}#{city_suffix}"
];

List<String> cityPrefix = [
  "Söder",
  "Norr",
  "Väst",
  "Öster",
  "Aling",
  "Ar",
  "Av",
  "Bo",
  "Br",
  "Bå",
  "Ek",
  "En",
  "Esk",
  "Fal",
  "Gäv",
  "Göte",
  "Ha",
  "Helsing",
  "Karl",
  "Krist",
  "Kram",
  "Kung",
  "Kö",
  "Lyck",
  "Ny"
];

List<String> citySuffix = [
  "stad",
  "land",
  "sås",
  "ås",
  "holm",
  "tuna",
  "sta",
  "berg",
  "löv",
  "borg",
  "mora",
  "hamn",
  "fors",
  "köping",
  "by",
  "hult",
  "torp",
  "fred",
  "vik"
];

List<String> commonStreetSuffix = [
  "s Väg",
  "s Gata"
];

List<String> country = [
  "Ryssland",
  "Kanada",
  "Kina",
  "USA",
  "Brasilien",
  "Australien",
  "Indien",
  "Argentina",
  "Kazakstan",
  "Algeriet",
  "DR Kongo",
  "Danmark",
  "Färöarna",
  "Grönland",
  "Saudiarabien",
  "Mexiko",
  "Indonesien",
  "Sudan",
  "Libyen",
  "Iran",
  "Mongoliet",
  "Peru",
  "Tchad",
  "Niger",
  "Angola",
  "Mali",
  "Sydafrika",
  "Colombia",
  "Etiopien",
  "Bolivia",
  "Mauretanien",
  "Egypten",
  "Tanzania",
  "Nigeria",
  "Venezuela",
  "Namibia",
  "Pakistan",
  "Moçambique",
  "Turkiet",
  "Chile",
  "Zambia",
  "Marocko",
  "Västsahara",
  "Burma",
  "Afghanistan",
  "Somalia",
  "Centralafrikanska republiken",
  "Sydsudan",
  "Ukraina",
  "Botswana",
  "Madagaskar",
  "Kenya",
  "Frankrike",
  "Franska Guyana",
  "Jemen",
  "Thailand",
  "Spanien",
  "Turkmenistan",
  "Kamerun",
  "Papua Nya Guinea",
  "Sverige",
  "Uzbekistan",
  "Irak",
  "Paraguay",
  "Zimbabwe",
  "Japan",
  "Tyskland",
  "Kongo",
  "Finland",
  "Malaysia",
  "Vietnam",
  "Norge",
  "Svalbard",
  "Jan Mayen",
  "Elfenbenskusten",
  "Polen",
  "Italien",
  "Filippinerna",
  "Ecuador",
  "Burkina Faso",
  "Nya Zeeland",
  "Gabon",
  "Guinea",
  "Storbritannien",
  "Ghana",
  "Rumänien",
  "Laos",
  "Uganda",
  "Guyana",
  "Oman",
  "Vitryssland",
  "Kirgizistan",
  "Senegal",
  "Syrien",
  "Kambodja",
  "Uruguay",
  "Tunisien",
  "Surinam",
  "Nepal",
  "Bangladesh",
  "Tadzjikistan",
  "Grekland",
  "Nicaragua",
  "Eritrea",
  "Nordkorea",
  "Malawi",
  "Benin",
  "Honduras",
  "Liberia",
  "Bulgarien",
  "Kuba",
  "Guatemala",
  "Island",
  "Sydkorea",
  "Ungern",
  "Portugal",
  "Jordanien",
  "Serbien",
  "Azerbajdzjan",
  "Österrike",
  "Förenade Arabemiraten",
  "Tjeckien",
  "Panama",
  "Sierra Leone",
  "Irland",
  "Georgien",
  "Sri Lanka",
  "Litauen",
  "Lettland",
  "Togo",
  "Kroatien",
  "Bosnien och Hercegovina",
  "Costa Rica",
  "Slovakien",
  "Dominikanska republiken",
  "Bhutan",
  "Estland",
  "Danmark",
  "Färöarna",
  "Grönland",
  "Nederländerna",
  "Schweiz",
  "Guinea-Bissau",
  "Taiwan",
  "Moldavien",
  "Belgien",
  "Lesotho",
  "Armenien",
  "Albanien",
  "Salomonöarna",
  "Ekvatorialguinea",
  "Burundi",
  "Haiti",
  "Rwanda",
  "Makedonien",
  "Djibouti",
  "Belize",
  "Israel",
  "El Salvador",
  "Slovenien",
  "Fiji",
  "Kuwait",
  "Swaziland",
  "Timor-Leste",
  "Montenegro",
  "Bahamas",
  "Vanuatu",
  "Qatar",
  "Gambia",
  "Jamaica",
  "Kosovo",
  "Libanon",
  "Cypern",
  "Brunei",
  "Trinidad och Tobago",
  "Kap Verde",
  "Samoa",
  "Luxemburg",
  "Komorerna",
  "Mauritius",
  "São Tomé och Príncipe",
  "Kiribati",
  "Dominica",
  "Tonga",
  "Mikronesiens federerade stater",
  "Singapore",
  "Bahrain",
  "Saint Lucia",
  "Andorra",
  "Palau",
  "Seychellerna",
  "Antigua och Barbuda",
  "Barbados",
  "Saint Vincent och Grenadinerna",
  "Grenada",
  "Malta",
  "Maldiverna",
  "Saint Kitts och Nevis",
  "Marshallöarna",
  "Liechtenstein",
  "San Marino",
  "Tuvalu",
  "Nauru",
  "Monaco",
  "Vatikanstaten"
];

List<String> defaultCountry = [
  "Sverige"
];

List<String> postcode = [
  "#####"
];

List<String> secondaryAddress = [
  "Lgh. ###",
  "Hus ###"
];

List<String> state = [
  "Blekinge",
  "Dalarna",
  "Gotland",
  "Gävleborg",
  "Göteborg",
  "Halland",
  "Jämtland",
  "Jönköping",
  "Kalmar",
  "Kronoberg",
  "Norrbotten",
  "Skaraborg",
  "Skåne",
  "Stockholm",
  "Södermanland",
  "Uppsala",
  "Värmland",
  "Västerbotten",
  "Västernorrland",
  "Västmanland",
  "Älvsborg",
  "Örebro",
  "Östergötland"
];

List<String> streetAddress = [
  "#{street_name} #{building_number}"
];

List<String> streetName = [
  "#{street_root}#{street_suffix}",
  "#{street_prefix} #{street_root}#{street_suffix}",
  "#{Name.first_name}#{common_street_suffix}",
  "#{Name.last_name}#{common_street_suffix}"
];

List<String> streetPrefix = [
  "Västra",
  "Östra",
  "Norra",
  "Södra",
  "Övre",
  "Undre"
];

List<String> streetRoot = [
  "Björk",
  "Järnvägs",
  "Ring",
  "Skol",
  "Skogs",
  "Ny",
  "Gran",
  "Idrotts",
  "Stor",
  "Kyrk",
  "Industri",
  "Park",
  "Strand",
  "Skol",
  "Trädgård",
  "Ängs",
  "Kyrko",
  "Villa",
  "Ek",
  "Kvarn",
  "Stations",
  "Back",
  "Furu",
  "Gen",
  "Fabriks",
  "Åker",
  "Bäck",
  "Asp"
];

List<String> streetSuffix = [
  "vägen",
  "gatan",
  "gränden",
  "gärdet",
  "allén"
];

}