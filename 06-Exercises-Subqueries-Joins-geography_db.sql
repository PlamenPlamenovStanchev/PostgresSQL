CREATE TABLE IF NOT EXISTS continents (
  "id" SERIAL PRIMARY KEY,
  continent_code CHAR(2),
  continent_name VARCHAR(50) NOT NULL,
  UNIQUE(continent_code)
);


INSERT INTO continents (
	continent_code, continent_name
) 
VALUES 	
	('AF', 'Africa'),
	('AN', 'Antarctica'),
	('AS', 'Asia'),
	('EU', 'Europe'),
	('NA', 'North America'),
	('OC', 'Oceania'),
	('SA', 'South America');


CREATE TABLE IF NOT EXISTS currencies (
  "id" SERIAL PRIMARY KEY,
  currency_code CHAR(3),
  description VARCHAR(200) NOT NULL,
  UNIQUE(currency_code)
);
	
	
INSERT INTO currencies (
	currency_code, description
) 
VALUES 	
	('AED', 'United Arab Emirates Dirham'),
	('AFN', 'Afghanistan Afghani'),
	('ALL', 'Albania Lek'),
	('AMD', 'Armenia Dram'),
	('ANG', 'Netherlands Antilles Guilder'),
	('AOA', 'Angola Kwanza'),
	('ARS', 'Argentina Peso'),
	('AUD', 'Australia Dollar'),
	('AWG', 'Aruba Guilder'),
	('AZN', 'Azerbaijan New Manat'),
	('BAM', 'Bosnia and Herzegovina Convertible Marka'),
	('BBD', 'Barbados Dollar'),
	('BDT', 'Bangladesh Taka'),
	('BGN', 'Bulgaria Lev'),
	('BHD', 'Bahrain Dinar'),
	('BIF', 'Burundi Franc'),
	('BMD', 'Bermuda Dollar'),
	('BND', 'Brunei Darussalam Dollar'),
	('BOB', 'Bolivia Boliviano'),
	('BRL', 'Brazil Real'),
	('BSD', 'Bahamas Dollar'),
	('BTN', 'Bhutan Ngultrum'),
	('BWP', 'Botswana Pula'),
	('BYR', 'Belarus Ruble'),
	('BZD', 'Belize Dollar'),
	('CAD', 'Canada Dollar'),
	('CDF', 'Congo/Kinshasa Franc'),
	('CHF', 'Switzerland Franc'),
	('CLP', 'Chile Peso'),
	('CNY', 'China Yuan Renminbi'),
	('COP', 'Colombia Peso'),
	('CRC', 'Costa Rica Colon'),
	('CUC', 'Cuba Convertible Peso'),
	('CUP', 'Cuba Peso'),
	('CVE', 'Cape Verde Escudo'),
	('CZK', 'Czech Republic Koruna'),
	('DJF', 'Djibouti Franc'),
	('DKK', 'Denmark Krone'),
	('DOP', 'Dominican Republic Peso'),
	('DZD', 'Algeria Dinar'),
	('EGP', 'Egypt Pound'),
	('ERN', 'Eritrea Nakfa'),
	('ETB', 'Ethiopia Birr'),
	('EUR', 'Euro Member Countries'),
	('FJD', 'Fiji Dollar'),
	('FKP', 'Falkland Islands (Malvinas) Pound'),
	('GBP', 'United Kingdom Pound'),
	('GEL', 'Georgia Lari'),
	('GGP', 'Guernsey Pound'),
	('GHS', 'Ghana Cedi'),
	('GIP', 'Gibraltar Pound'),
	('GMD', 'Gambia Dalasi'),
	('GNF', 'Guinea Franc'),
	('GTQ', 'Guatemala Quetzal'),
	('GYD', 'Guyana Dollar'),
	('HKD', 'Hong Kong Dollar'),
	('HNL', 'Honduras Lempira'),
	('HRK', 'Croatia Kuna'),
	('HTG', 'Haiti Gourde'),
	('HUF', 'Hungary Forint'),
	('IDR', 'Indonesia Rupiah'),
	('ILS', 'Israel Shekel'),
	('IMP', 'Isle of Man Pound'),
	('INR', 'India Rupee'),
	('IQD', 'Iraq Dinar'),
	('IRR', 'Iran Rial'),
	('ISK', 'Iceland Krona'),
	('JEP', 'Jersey Pound'),
	('JMD', 'Jamaica Dollar'),
	('JOD', 'Jordan Dinar'),
	('JPY', 'Japan Yen'),
	('KES', 'Kenya Shilling'),
	('KGS', 'Kyrgyzstan Som'),
	('KHR', 'Cambodia Riel'),
	('KMF', 'Comoros Franc'),
	('KPW', 'Korea (North) Won'),
	('KRW', 'Korea (South) Won'),
	('KWD', 'Kuwait Dinar'),
	('KYD', 'Cayman Islands Dollar'),
	('KZT', 'Kazakhstan Tenge'),
	('LAK', 'Laos Kip'),
	('LBP', 'Lebanon Pound'),
	('LKR', 'Sri Lanka Rupee'),
	('LRD', 'Liberia Dollar'),
	('LSL', 'Lesotho Loti'),
	('LYD', 'Libya Dinar'),
	('MAD', 'Morocco Dirham'),
	('MDL', 'Moldova Leu'),
	('MGA', 'Madagascar Ariary'),
	('MKD', 'Macedonia Denar'),
	('MMK', 'Myanmar (Burma) Kyat'),
	('MNT', 'Mongolia Tughrik'),
	('MOP', 'Macau Pataca'),
	('MRO', 'Mauritania Ouguiya'),
	('MUR', 'Mauritius Rupee'),
	('MVR', 'Maldives (Maldive Islands) Rufiyaa'),
	('MWK', 'Malawi Kwacha'),
	('MXN', 'Mexico Peso'),
	('MYR', 'Malaysia Ringgit'),
	('MZN', 'Mozambique Metical'),
	('NAD', 'Namibia Dollar'),
	('NGN', 'Nigeria Naira'),
	('NIO', 'Nicaragua Cordoba'),
	('NOK', 'Norway Krone'),
	('NPR', 'Nepal Rupee'),
	('NZD', 'New Zealand Dollar'),
	('OMR', 'Oman Rial'),
	('PAB', 'Panama Balboa'),
	('PEN', 'Peru Nuevo Sol'),
	('PGK', 'Papua New Guinea Kina'),
	('PHP', 'Philippines Peso'),
	('PKR', 'Pakistan Rupee'),
	('PLN', 'Poland Zloty'),
	('PYG', 'Paraguay Guarani'),
	('QAR', 'Qatar Riyal'),
	('RON', 'Romania New Leu'),
	('RSD', 'Serbia Dinar'),
	('RUB', 'Russia Ruble'),
	('RWF', 'Rwanda Franc'),
	('SAR', 'Saudi Arabia Riyal'),
	('SBD', 'Solomon Islands Dollar'),
	('SCR', 'Seychelles Rupee'),
	('SDG', 'Sudan Pound'),
	('SEK', 'Sweden Krona'),
	('SGD', 'Singapore Dollar'),
	('SHP', 'Saint Helena Pound'),
	('SLL', 'Sierra Leone Leone'),
	('SOS', 'Somalia Shilling'),
	('SPL', 'Seborga Luigino'),
	('SRD', 'Suriname Dollar'),
	('SSP', 'South Sudanese Pound'),
	('STD', 'São Tomé and Príncipe Dobra'),
	('SVC', 'El Salvador Colon'),
	('SYP', 'Syria Pound'),
	('SZL', 'Swaziland Lilangeni'),
	('THB', 'Thailand Baht'),
	('TJS', 'Tajikistan Somoni'),
	('TMT', 'Turkmenistan Manat'),
	('TND', 'Tunisia Dinar'),
	('TOP', 'Tonga Pa`anga'),
	('TRY', 'Turkey Lira'),
	('TTD', 'Trinidad and Tobago Dollar'),
	('TVD', 'Tuvalu Dollar'),
	('TWD', 'Taiwan New Dollar'),
	('TZS', 'Tanzania Shilling'),
	('UAH', 'Ukraine Hryvnia'),
	('UGX', 'Uganda Shilling'),
	('USD', 'United States Dollar'),
	('UYU', 'Uruguay Peso'),
	('UZS', 'Uzbekistan Som'),
	('VEF', 'Venezuela Bolivar'),
	('VND', 'Viet Nam Dong'),
	('VUV', 'Vanuatu Vatu'),
	('WST', 'Samoa Tala'),
	('XAF', 'Communauté Financière Africaine (BEAC) CFA Franc BEAC'),
	('XCD', 'East Caribbean Dollar'),
	('XDR', 'International Monetary Fund (IMF) Special Drawing Rights'),
	('XOF', 'Communauté Financière Africaine (BCEAO) Franc'),
	('XPF', 'Comptoirs Français du Pacifique (CFP) Franc'),
	('YER', 'Yemen Rial'),
	('ZAR', 'South Africa Rand'),
	('ZMW', 'Zambia Kwacha'),
	('ZWD', 'Zimbabwe Dollar');
	

CREATE TABLE IF NOT EXISTS countries (
  "id" SERIAL PRIMARY KEY,
  country_code CHAR(2) NOT NULL,
  iso_code CHAR(3),
  country_name VARCHAR(45) NOT NULL,
  capital VARCHAR(45) DEFAULT NULL,
  currency_code CHAR(3) DEFAULT NULL,
  continent_code CHAR(2),
  population INT NOT NULL,
  area_in_sq_km INT NOT NULL,
  CONSTRAINT countries_population_check CHECK (population >= 0),
  CONSTRAINT countries_are_in_sq_km_check CHECK (area_in_sq_km >= 0),
  UNIQUE(country_code),
  CONSTRAINT fk_countries_currencies
	FOREIGN KEY (currency_code) 
	REFERENCES currencies(currency_code)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
  CONSTRAINT fk_countries_continents
	FOREIGN KEY (continent_code) 
	REFERENCES continents(continent_code)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);


INSERT INTO countries (
	country_code, iso_code, country_name, currency_code, continent_code, population, area_in_sq_km, capital
) 
VALUES 	
	('AD', NULL, 'Andorra', 'EUR', 'EU', 84000, 468, 'Andorra la Vella'),
	('AE', 'ARE', 'United Arab Emirates', 'AED', 'AS', 4975593, 82880, 'Abu Dhabi'),
	('AF', NULL, 'Afghanistan', 'AFN', 'AS', 29121286, 647500, 'Kabul'),
	('AG', 'ATG', 'Antigua and Barbuda', 'XCD', 'NA', 86754, 443, 'St. John`s'),
	('AI', 'AIA', 'Anguilla', 'XCD', 'NA', 13254, 102, 'The Valley'),
	('AL', 'ALB', 'Albania', 'ALL', 'EU', 2986952, 28748, 'Tirana'),
	('AM', NULL, 'Armenia', 'AMD', 'AS', 2968000, 29800, 'Yerevan'),
	('AO', 'AGO', 'Angola', 'AOA', 'AF', 13068161, 1246700, 'Luanda'),
	('AQ', 'ATA', 'Antarctica', NULL, 'AN', 0, 14000000, NULL),
	('AR', NULL, 'Argentina', 'ARS', 'SA', 41343201, 2766890, 'Buenos Aires'),
	('AS', 'ASM', 'American Samoa', 'USD', 'OC', 57881, 199, 'Pago Pago'),
	('AT', 'AUT', 'Austria', 'EUR', 'EU', 8205000, 83858, 'Vienna'),
	('AU', NULL, 'Australia', 'AUD', 'OC', 21515754, 7686850, 'Canberra'),
	('AW', 'ABW', 'Aruba', 'AWG', 'NA', 71566, 193, 'Oranjestad'),
	('AX', NULL, 'Aland', 'EUR', 'EU', 26711, 1580, 'Mariehamn'),
	('AZ', NULL, 'Azerbaijan', 'AZN', 'AS', 8303512, 86600, 'Baku'),
	('BA', 'BIH', 'Bosnia and Herzegovina', 'BAM', 'EU', 4590000, 51129, 'Sarajevo'),
	('BB', 'BRB', 'Barbados', 'BBD', 'NA', 285653, 431, 'Bridgetown'),
	('BD', 'BGD', 'Bangladesh', 'BDT', 'AS', 156118464, 144000, 'Dhaka'),
	('BE', NULL, 'Belgium', 'EUR', 'EU', 10403000, 30510, 'Brussels'),
	('BF', 'BFA', 'Burkina Faso', 'XOF', 'AF', 16241811, 274200, 'Ouagadougou'),
	('BG', 'BGR', 'Bulgaria', 'BGN', 'EU', 7148785, 110910, 'Sofia'),
	('BH', 'BHR', 'Bahrain', 'BHD', 'AS', 738004, 665, 'Manama'),
	('BI', 'BDI', 'Burundi', 'BIF', 'AF', 9863117, 27830, 'Bujumbura'),
	('BJ', NULL, 'Benin', 'XOF', 'AF', 9056010, 112620, 'Porto-Novo'),
	('BL', 'BLM', 'Saint Barthélemy', 'EUR', 'NA', 8450, 21, 'Gustavia'),
	('BM', 'BMU', 'Bermuda', 'BMD', 'NA', 65365, 53, 'Hamilton'),
	('BN', 'BRN', 'Brunei', 'BND', 'AS', 395027, 5770, 'Bandar Seri Begawan'),
	('BO', NULL, 'Bolivia', 'BOB', 'SA', 9947418, 1098580, 'Sucre'),
	('BQ', 'BES', 'Bonaire', 'USD', 'NA', 18012, 328, NULL),
	('BR', NULL, 'Brazil', 'BRL', 'SA', 201103330, 8511965, 'Brasília'),
	('BS', 'BHS', 'Bahamas', 'BSD', 'NA', 301790, 13940, 'Nassau'),
	('BT', 'BTN', 'Bhutan', 'BTN', 'AS', 699847, 47000, 'Thimphu'),
	('BV', 'BVT', 'Bouvet Island', 'NOK', 'AN', 0, 49, NULL),
	('BW', 'BWA', 'Botswana', 'BWP', 'AF', 2029307, 600370, 'Gaborone'),
	('BY', 'BLR', 'Belarus', 'BYR', 'EU', 9685000, 207600, 'Minsk'),
	('BZ', 'BLZ', 'Belize', 'BZD', 'NA', 314522, 22966, 'Belmopan'),
	('CA', NULL, 'Canada', 'CAD', 'NA', 33679000, 9984670, 'Ottawa'),
	('CC', 'CCK', 'Cocos Islands', 'AUD', 'AS', 628, 14, 'West Island'),
	('CD', 'COD', 'Democratic Republic of the Congo', 'CDF', 'AF', 70916439, 2345410, 'Kinshasa'),
	('CF', 'CAF', 'Central African Republic', 'XAF', 'AF', 4844927, 622984, 'Bangui'),
	('CG', 'COG', 'Republic of the Congo', 'XAF', 'AF', 3039126, 342000, 'Brazzaville'),
	('CH', 'CHE', 'Switzerland', 'CHF', 'EU', 7581000, 41290, 'Berne'),
	('CI', 'CIV', 'Ivory Coast', 'XOF', 'AF', 21058798, 322460, 'Yamoussoukro'),
	('CK', 'COK', 'Cook Islands', 'NZD', 'OC', 21388, 240, 'Avarua'),
	('CL', 'CHL', 'Chile', 'CLP', 'SA', 16746491, 756950, 'Santiago'),
	('CM', 'CMR', 'Cameroon', 'XAF', 'AF', 19294149, 475440, 'Yaoundé'),
	('CN', 'CHN', 'China', 'CNY', 'AS', 1330044000, 9596960, 'Beijing'),
	('CO', NULL, 'Colombia', 'COP', 'SA', 47790000, 1138910, 'Bogotá'),
	('CR', 'CRI', 'Costa Rica', 'CRC', 'NA', 4516220, 51100, 'San José'),
	('CU', NULL, 'Cuba', 'CUP', 'NA', 11423000, 110860, 'Havana'),
	('CV', 'CPV', 'Cape Verde', 'CVE', 'AF', 508659, 4033, 'Praia'),
	('CW', 'CUW', 'Curacao', 'ANG', 'NA', 141766, 444, 'Willemstad'),
	('CX', 'CXR', 'Christmas Island', 'AUD', 'AS', 1500, 135, 'The Settlement'),
	('CY', NULL, 'Cyprus', 'EUR', 'EU', 1102677, 9250, 'Nicosia'),
	('CZ', NULL, 'Czech Republic', 'CZK', 'EU', 10476000, 78866, 'Prague'),
	('DE', 'DEU', 'Germany', 'EUR', 'EU', 81802257, 357021, 'Berlin'),
	('DJ', NULL, 'Djibouti', 'DJF', 'AF', 740528, 23000, 'Djibouti'),
	('DK', 'DNK', 'Denmark', 'DKK', 'EU', 5484000, 43094, 'Copenhagen'),
	('DM', 'DMA', 'Dominica', 'XCD', 'NA', 72813, 754, 'Roseau'),
	('DO', NULL, 'Dominican Republic', 'DOP', 'NA', 9823821, 48730, 'Santo Domingo'),
	('DZ', 'DZA', 'Algeria', 'DZD', 'AF', 34586184, 2381740, 'Algiers'),
	('EC', NULL, 'Ecuador', 'USD', 'SA', 14790608, 283560, 'Quito'),
	('EE', NULL, 'Estonia', 'EUR', 'EU', 1291170, 45226, 'Tallinn'),
	('EG', NULL, 'Egypt', 'EGP', 'AF', 80471869, 1001450, 'Cairo'),
	('EH', 'ESH', 'Western Sahara', 'MAD', 'AF', 273008, 266000, 'El Aaiún'),
	('ER', NULL, 'Eritrea', 'ERN', 'AF', 5792984, 121320, 'Asmara'),
	('ES', 'ESP', 'Spain', 'EUR', 'EU', 46505963, 504782, 'Madrid'),
	('ET', NULL, 'Ethiopia', 'ETB', 'AF', 88013491, 1127127, 'Addis Ababa'),
	('FI', NULL, 'Finland', 'EUR', 'EU', 5244000, 337030, 'Helsinki'),
	('FJ', NULL, 'Fiji', 'FJD', 'OC', 875983, 18270, 'Suva'),
	('FK', 'FLK', 'Falkland Islands', 'FKP', 'SA', 2638, 12173, 'Stanley'),
	('FM', 'FSM', 'Micronesia', 'USD', 'OC', 107708, 702, 'Palikir'),
	('FO', 'FRO', 'Faroe Islands', 'DKK', 'EU', 48228, 1399, 'Tórshavn'),
	('FR', NULL, 'France', 'EUR', 'EU', 64768389, 547030, 'Paris'),
	('GA', NULL, 'Gabon', 'XAF', 'AF', 1545255, 267667, 'Libreville'),
	('GB', 'GBR', 'United Kingdom', 'GBP', 'EU', 62348447, 244820, 'London'),
	('GD', 'GRD', 'Grenada', 'XCD', 'NA', 107818, 344, 'St. George`s'),
	('GE', NULL, 'Georgia', 'GEL', 'AS', 4630000, 69700, 'Tbilisi'),
	('GF', 'GUF', 'French Guiana', 'EUR', 'SA', 195506, 91000, 'Cayenne'),
	('GG', 'GGY', 'Guernsey', 'GBP', 'EU', 65228, 78, 'St Peter Port'),
	('GH', NULL, 'Ghana', 'GHS', 'AF', 24339838, 239460, 'Accra'),
	('GI', NULL, 'Gibraltar', 'GIP', 'EU', 27884, 6, 'Gibraltar'),
	('GL', 'GRL', 'Greenland', 'DKK', 'NA', 56375, 2166086, 'Nuuk'),
	('GM', 'GMB', 'Gambia', 'GMD', 'AF', 1593256, 11300, 'Banjul'),
	('GN', 'GIN', 'Guinea', 'GNF', 'AF', 10324025, 245857, 'Conakry'),
	('GP', 'GLP', 'Guadeloupe', 'EUR', 'NA', 443000, 1780, 'Basse-Terre'),
	('GQ', 'GNQ', 'Equatorial Guinea', 'XAF', 'AF', 1014999, 28051, 'Malabo'),
	('GR', 'GRC', 'Greece', 'EUR', 'EU', 11000000, 131940, 'Athens'),
	('GS', 'SGS', 'South Georgia and the South Sandwich Islands', 'GBP', 'AN', 30, 3903, 'Grytviken'),
	('GT', 'GTM', 'Guatemala', 'GTQ', 'NA', 13550440, 108890, 'Guatemala City'),
	('GU', 'GUM', 'Guam', 'USD', 'OC', 159358, 549, 'Hagåtña'),
	('GW', 'GNB', 'Guinea-Bissau', 'XOF', 'AF', 1565126, 36120, 'Bissau'),
	('GY', NULL, 'Guyana', 'GYD', 'SA', 748486, 214970, 'Georgetown'),
	('HK', 'HKG', 'Hong Kong', 'HKD', 'AS', 6898686, 1092, 'Hong Kong'),
	('HM', 'HMD', 'Heard Island and McDonald Islands', 'AUD', 'AN', 0, 412, NULL),
	('HN', 'HND', 'Honduras', 'HNL', 'NA', 7989415, 112090, 'Tegucigalpa'),
	('HR', 'HRV', 'Croatia', 'HRK', 'EU', 4491000, 56542, 'Zagreb'),
	('HT', 'HTI', 'Haiti', 'HTG', 'NA', 9648924, 27750, 'Port-au-Prince'),
	('HU', NULL, 'Hungary', 'HUF', 'EU', 9982000, 93030, 'Budapest'),
	('ID', 'IDN', 'Indonesia', 'IDR', 'AS', 242968342, 1919440, 'Jakarta'),
	('IE', 'IRL', 'Ireland', 'EUR', 'EU', 4622917, 70280, 'Dublin'),
	('IL', NULL, 'Israel', 'ILS', 'AS', 7353985, 20770, NULL),
	('IM', 'IMN', 'Isle of Man', 'GBP', 'EU', 75049, 572, 'Douglas'),
	('IN', NULL, 'India', 'INR', 'AS', 1173108018, 3287590, 'New Delhi'),
	('IO', 'IOT', 'British Indian Ocean Territory', 'USD', 'AS', 4000, 60, NULL),
	('IQ', 'IRQ', 'Iraq', 'IQD', 'AS', 29671605, 437072, 'Baghdad'),
	('IR', 'IRN', 'Iran', 'IRR', 'AS', 76923300, 1648000, 'Tehran'),
	('IS', 'ISL', 'Iceland', 'ISK', 'EU', 308910, 103000, 'Reykjavik'),
	('IT', NULL, 'Italy', 'EUR', 'EU', 60340328, 301230, 'Rome'),
	('JE', 'JEY', 'Jersey', 'GBP', 'EU', 90812, 116, 'Saint Helier'),
	('JM', NULL, 'Jamaica', 'JMD', 'NA', 2847232, 10991, 'Kingston'),
	('JO', NULL, 'Jordan', 'JOD', 'AS', 6407085, 92300, 'Amman'),
	('JP', 'JPN', 'Japan', 'JPY', 'AS', 127288000, 377835, 'Tokyo'),
	('KE', NULL, 'Kenya', 'KES', 'AF', 40046566, 582650, 'Nairobi'),
	('KG', 'KGZ', 'Kyrgyzstan', 'KGS', 'AS', 5508626, 198500, 'Bishkek'),
	('KH', 'KHM', 'Cambodia', 'KHR', 'AS', 14453680, 181040, 'Phnom Penh'),
	('KI', NULL, 'Kiribati', 'AUD', 'OC', 92533, 811, 'Tarawa'),
	('KM', NULL, 'Comoros', 'KMF', 'AF', 773407, 2170, 'Moroni'),
	('KN', 'KNA', 'Saint Kitts and Nevis', 'XCD', 'NA', 51134, 261, 'Basseterre'),
	('KP', 'PRK', 'North Korea', 'KPW', 'AS', 22912177, 120540, 'Pyongyang'),
	('KR', 'KOR', 'South Korea', 'KRW', 'AS', 48422644, 98480, 'Seoul'),
	('KW', 'KWT', 'Kuwait', 'KWD', 'AS', 2789132, 17820, 'Kuwait City'),
	('KY', 'CYM', 'Cayman Islands', 'KYD', 'NA', 44270, 262, 'George Town'),
	('KZ', NULL, 'Kazakhstan', 'KZT', 'AS', 15340000, 2717300, 'Astana'),
	('LA', NULL, 'Laos', 'LAK', 'AS', 6368162, 236800, 'Vientiane'),
	('LB', 'LBN', 'Lebanon', 'LBP', 'AS', 4125247, 10400, 'Beirut'),
	('LC', 'LCA', 'Saint Lucia', 'XCD', 'NA', 160922, 616, 'Castries'),
	('LI', NULL, 'Liechtenstein', 'CHF', 'EU', 35000, 160, 'Vaduz'),
	('LK', 'LKA', 'Sri Lanka', 'LKR', 'AS', 21513990, 65610, 'Colombo'),
	('LR', 'LBR', 'Liberia', 'LRD', 'AF', 3685076, 111370, 'Monrovia'),
	('LS', 'LSO', 'Lesotho', 'LSL', 'AF', 1919552, 30355, 'Maseru'),
	('LT', 'LTU', 'Lithuania', 'EUR', 'EU', 2944459, 65200, 'Vilnius'),
	('LU', 'LUX', 'Luxembourg', 'EUR', 'EU', 497538, 2586, 'Luxembourg'),
	('LV', 'LVA', 'Latvia', 'EUR', 'EU', 2217969, 64589, 'Riga'),
	('LY', 'LBY', 'Libya', 'LYD', 'AF', 6461454, 1759540, 'Tripoli'),
	('MA', 'MAR', 'Morocco', 'MAD', 'AF', 31627428, 446550, 'Rabat'),
	('MC', 'MCO', 'Monaco', 'EUR', 'EU', 32965, 1, 'Monaco'),
	('MD', 'MDA', 'Moldova', 'MDL', 'EU', 4324000, 33843, 'Chisinau'),
	('ME', 'MNE', 'Montenegro', 'EUR', 'EU', 666730, 14026, 'Podgorica'),
	('MF', 'MAF', 'Saint Martin', 'EUR', 'NA', 35925, 53, 'Marigot'),
	('MG', 'MDG', 'Madagascar', 'MGA', 'AF', 21281844, 587040, 'Antananarivo'),
	('MH', 'MHL', 'Marshall Islands', 'USD', 'OC', 65859, 181, 'Majuro'),
	('MK', 'MKD', 'Macedonia', 'MKD', 'EU', 2062294, 25333, 'Skopje'),
	('ML', 'MLI', 'Mali', 'XOF', 'AF', 13796354, 1240000, 'Bamako'),
	('MM', 'MMR', 'Myanmar', 'MMK', 'AS', 53414374, 678500, 'Nay Pyi Taw'),
	('MN', 'MNG', 'Mongolia', 'MNT', 'AS', 3086918, 1565000, 'Ulan Bator'),
	('MO', NULL, 'Macao', 'MOP', 'AS', 449198, 254, 'Macao'),
	('MP', 'MNP', 'Northern Mariana Islands', 'USD', 'OC', 53883, 477, 'Saipan'),
	('MQ', 'MTQ', 'Martinique', 'EUR', 'NA', 432900, 1100, 'Fort-de-France'),
	('MR', 'MRT', 'Mauritania', 'MRO', 'AF', 3205060, 1030700, 'Nouakchott'),
	('MS', 'MSR', 'Montserrat', 'XCD', 'NA', 9341, 102, 'Plymouth'),
	('MT', 'MLT', 'Malta', 'EUR', 'EU', 403000, 316, 'Valletta'),
	('MU', 'MUS', 'Mauritius', 'MUR', 'AF', 1294104, 2040, 'Port Louis'),
	('MV', 'MDV', 'Maldives', 'MVR', 'AS', 395650, 300, 'Malé'),
	('MW', 'MWI', 'Malawi', 'MWK', 'AF', 15447500, 118480, 'Lilongwe'),
	('MX', 'MEX', 'Mexico', 'MXN', 'NA', 112468855, 1972550, 'Mexico City'),
	('MY', 'MYS', 'Malaysia', 'MYR', 'AS', 28274729, 329750, 'Kuala Lumpur'),
	('MZ', 'MOZ', 'Mozambique', 'MZN', 'AF', 22061451, 801590, 'Maputo'),
	('NA', 'NAM', 'Namibia', 'NAD', 'AF', 2128471, 825418, 'Windhoek'),
	('NC', 'NCL', 'New Caledonia', 'XPF', 'OC', 216494, 19060, 'Noumea'),
	('NE', 'NER', 'Niger', 'XOF', 'AF', 15878271, 1267000, 'Niamey'),
	('NF', 'NFK', 'Norfolk Island', 'AUD', 'OC', 1828, 34, 'Kingston'),
	('NG', 'NGA', 'Nigeria', 'NGN', 'AF', 154000000, 923768, 'Abuja'),
	('NI', NULL, 'Nicaragua', 'NIO', 'NA', 5995928, 129494, 'Managua'),
	('NL', 'NLD', 'Netherlands', 'EUR', 'EU', 16645000, 41526, 'Amsterdam'),
	('NO', NULL, 'Norway', 'NOK', 'EU', 5009150, 324220, 'Oslo'),
	('NP', 'NPL', 'Nepal', 'NPR', 'AS', 28951852, 140800, 'Kathmandu'),
	('NR', 'NRU', 'Nauru', 'AUD', 'OC', 10065, 21, NULL),
	('NU', 'NIU', 'Niue', 'NZD', 'OC', 2166, 260, 'Alofi'),
	('NZ', 'NZL', 'New Zealand', 'NZD', 'OC', 4252277, 268680, 'Wellington'),
	('OM', 'OMN', 'Oman', 'OMR', 'AS', 2967717, 212460, 'Muscat'),
	('PA', 'PAN', 'Panama', 'PAB', 'NA', 3410676, 78200, 'Panama City'),
	('PE', 'PER', 'Peru', 'PEN', 'SA', 29907003, 1285220, 'Lima'),
	('PF', 'PYF', 'French Polynesia', 'XPF', 'OC', 270485, 4167, 'Papeete'),
	('PG', 'PNG', 'Papua New Guinea', 'PGK', 'OC', 6064515, 462840, 'Port Moresby'),
	('PH', 'PHL', 'Philippines', 'PHP', 'AS', 99900177, 300000, 'Manila'),
	('PK', NULL, 'Pakistan', 'PKR', 'AS', 184404791, 803940, 'Islamabad'),
	('PL', NULL, 'Poland', 'PLN', 'EU', 38500000, 312685, 'Warsaw'),
	('PM', 'SPM', 'Saint Pierre and Miquelon', 'EUR', 'NA', 7012, 242, 'Saint-Pierre'),
	('PN', 'PCN', 'Pitcairn Islands', 'NZD', 'OC', 46, 47, 'Adamstown'),
	('PR', 'PRI', 'Puerto Rico', 'USD', 'NA', 3916632, 9104, 'San Juan'),
	('PS', 'PSE', 'Palestine', 'ILS', 'AS', 3800000, 5970, NULL),
	('PT', 'PRT', 'Portugal', 'EUR', 'EU', 10676000, 92391, 'Lisbon'),
	('PW', 'PLW', 'Palau', 'USD', 'OC', 19907, 458, 'Melekeok - Palau State Capital'),
	('PY', 'PRY', 'Paraguay', 'PYG', 'SA', 6375830, 406750, 'Asunción'),
	('QA', NULL, 'Qatar', 'QAR', 'AS', 840926, 11437, 'Doha'),
	('RE', 'REU', 'Réunion', 'EUR', 'AF', 776948, 2517, 'Saint-Denis'),
	('RO', 'ROU', 'Romania', 'RON', 'EU', 21959278, 237500, 'Bucharest'),
	('RS', 'SRB', 'Serbia', 'RSD', 'EU', 7344847, 88361, 'Belgrade'),
	('RU', NULL, 'Russia', 'RUB', 'EU', 140702000, 17100000, 'Moscow'),
	('RW', NULL, 'Rwanda', 'RWF', 'AF', 11055976, 26338, 'Kigali'),
	('SA', NULL, 'Saudi Arabia', 'SAR', 'AS', 25731776, 1960582, 'Riyadh'),
	('SB', 'SLB', 'Solomon Islands', 'SBD', 'OC', 559198, 28450, 'Honiara'),
	('SC', 'SYC', 'Seychelles', 'SCR', 'AF', 88340, 455, 'Victoria'),
	('SD', 'SDN', 'Sudan', 'SDG', 'AF', 35000000, 1861484, 'Khartoum'),
	('SE', 'SWE', 'Sweden', 'SEK', 'EU', 9555893, 449964, 'Stockholm'),
	('SG', 'SGP', 'Singapore', 'SGD', 'AS', 4701069, 692, 'Singapore'),
	('SH', 'SHN', 'Saint Helena', 'SHP', 'AF', 7460, 410, 'Jamestown'),
	('SI', 'SVN', 'Slovenia', 'EUR', 'EU', 2007000, 20273, 'Ljubljana'),
	('SJ', 'SJM', 'Svalbard and Jan Mayen', 'NOK', 'EU', 2550, 62049, 'Longyearbyen'),
	('SK', 'SVK', 'Slovakia', 'EUR', 'EU', 5455000, 48845, 'Bratislava'),
	('SL', 'SLE', 'Sierra Leone', 'SLL', 'AF', 5245695, 71740, 'Freetown'),
	('SM', 'SMR', 'San Marino', 'EUR', 'EU', 31477, 61, 'San Marino'),
	('SN', 'SEN', 'Senegal', 'XOF', 'AF', 12323252, 196190, 'Dakar'),
	('SO', NULL, 'Somalia', 'SOS', 'AF', 10112453, 637657, 'Mogadishu'),
	('SR', NULL, 'Suriname', 'SRD', 'SA', 492829, 163270, 'Paramaribo'),
	('SS', 'SSD', 'South Sudan', 'SSP', 'AF', 8260490, 644329, 'Juba'),
	('ST', 'STP', 'São Tomé and Príncipe', 'STD', 'AF', 175808, 1001, 'São Tomé'),
	('SV', 'SLV', 'El Salvador', 'USD', 'NA', 6052064, 21040, 'San Salvador'),
	('SX', 'SXM', 'Sint Maarten', 'ANG', 'NA', 37429, 21, 'Philipsburg'),
	('SY', 'SYR', 'Syria', 'SYP', 'AS', 22198110, 185180, 'Damascus'),
	('SZ', 'SWZ', 'Swaziland', 'SZL', 'AF', 1354051, 17363, 'Mbabane'),
	('TC', 'TCA', 'Turks and Caicos Islands', 'USD', 'NA', 20556, 430, 'Cockburn Town'),
	('TD', 'TCD', 'Chad', 'XAF', 'AF', 10543464, 1284000, 'N`Djamena'),
	('TF', 'ATF', 'French Southern Territories', 'EUR', 'AN', 140, 7829, 'Port-aux-Français'),
	('TG', 'TGO', 'Togo', 'XOF', 'AF', 6587239, 56785, 'Lomé'),
	('TH', NULL, 'Thailand', 'THB', 'AS', 67089500, 514000, 'Bangkok'),
	('TJ', 'TJK', 'Tajikistan', 'TJS', 'AS', 7487489, 143100, 'Dushanbe'),
	('TK', 'TKL', 'Tokelau', 'NZD', 'OC', 1466, 10, NULL),
	('TL', 'TLS', 'East Timor', 'USD', 'OC', 1154625, 15007, 'Dili'),
	('TM', 'TKM', 'Turkmenistan', 'TMT', 'AS', 4940916, 488100, 'Ashgabat'),
	('TN', NULL, 'Tunisia', 'TND', 'AF', 10589025, 163610, 'Tunis'),
	('TO', NULL, 'Tonga', 'TOP', 'OC', 122580, 748, 'Nuku`alofa'),
	('TR', NULL, 'Turkey', 'TRY', 'AS', 77804122, 780580, 'Ankara'),
	('TT', 'TTO', 'Trinidad and Tobago', 'TTD', 'NA', 1228691, 5128, 'Port of Spain'),
	('TV', NULL, 'Tuvalu', 'AUD', 'OC', 10472, 26, 'Funafuti'),
	('TW', 'TWN', 'Taiwan', 'TWD', 'AS', 22894384, 35980, 'Taipei'),
	('TZ', 'TZA', 'Tanzania', 'TZS', 'AF', 41892895, 945087, 'Dodoma'),
	('UA', 'UKR', 'Ukraine', 'UAH', 'EU', 45415596, 603700, 'Kyiv'),
	('UG', NULL, 'Uganda', 'UGX', 'AF', 33398682, 236040, 'Kampala'),
	('UM', 'UMI', 'U.S. Minor Outlying Islands', 'USD', 'OC', 0, 0, NULL),
	('US', 'USA', 'United States', 'USD', 'NA', 310232863, 9629091, 'Washington'),
	('UY', 'URY', 'Uruguay', 'UYU', 'SA', 3477000, 176220, 'Montevideo'),
	('UZ', 'UZB', 'Uzbekistan', 'UZS', 'AS', 27865738, 447400, 'Tashkent'),
	('VA', NULL, 'Vatican City', 'EUR', 'EU', 921, 0, 'Vatican'),
	('VC', 'VCT', 'Saint Vincent and the Grenadines', 'XCD', 'NA', 104217, 389, 'Kingstown'),
	('VE', NULL, 'Venezuela', 'VEF', 'SA', 27223228, 912050, 'Caracas'),
	('VG', 'VGB', 'British Virgin Islands', 'USD', 'NA', 21730, 153, 'Road Town'),
	('VI', 'VIR', 'U.S. Virgin Islands', 'USD', 'NA', 108708, 352, 'Charlotte Amalie'),
	('VN', 'VNM', 'Vietnam', 'VND', 'AS', 89571130, 329560, 'Hanoi'),
	('VU', 'VUT', 'Vanuatu', 'VUV', 'OC', 221552, 12200, 'Port Vila'),
	('WF', 'WLF', 'Wallis and Futuna', 'XPF', 'OC', 16025, 274, 'Mata-Utu'),
	('WS', 'WSM', 'Samoa', 'WST', 'OC', 192001, 2944, 'Apia'),
	('XK', 'XKX', 'Kosovo', 'EUR', 'EU', 1800000, 10908, 'Pristina'),
	('YE', NULL, 'Yemen', 'YER', 'AS', 23495361, 527970, 'Sanaa'),
	('YT', 'MYT', 'Mayotte', 'EUR', 'AF', 159042, 374, 'Mamoutzou'),
	('ZA', 'ZAF', 'South Africa', 'ZAR', 'AF', 49000000, 1219912, 'Pretoria'),
	('ZM', 'ZMB', 'Zambia', 'ZMW', 'AF', 13460305, 752614, 'Lusaka'),
	('ZW', 'ZWE', 'Zimbabwe', 'ZWD', 'AF', 11651858, 390580, 'Harare');
	

CREATE TABLE IF NOT EXISTS mountains (
  "id" SERIAL PRIMARY KEY,
  mountain_range VARCHAR(50) NOT NULL
);

		
INSERT INTO mountains (
	mountain_range
) 
VALUES 	
	('Alaska Range'),
	('Alborz'),
	('Andes'),
	('Balkan Mountains'),
	('Caucasus'),
	('Cordillera Neovolcanica'),
	('Ellsworth Mountains'),
	('Executive Committee Range'),
	('Himalayas'),
	('Jayawijaya Mountains'),
	('Karakoram'),
	('Kenyan Highlands'),
	('Kilimanjaro'),
	('Kilimanjaro Region'),
	('Maoke Mountains'),
	('Pirin'),
	('Rila'),
	('Saint Elias Mountains'),
	('Sentinel Range'),
	('Southern Highlands'),
	('The Sudirman Range'),
	('Trans-Mexican Volcanic Belt'),
	('Rhodope Mountains'),
	('Vitosha'),
	('Strandza'),
	('Monte Rosa');
	

CREATE TABLE IF NOT EXISTS mountains_countries (
  mountain_id INT,
  country_code CHAR(2),
  CONSTRAINT countries_mountain_id_check CHECK (mountain_id >= 0),
  CONSTRAINT fk_mountains_countries_mountains
	FOREIGN KEY (mountain_id) 
	REFERENCES mountains("id")
	ON DELETE CASCADE
	ON UPDATE CASCADE,
  CONSTRAINT fk_mountains_countries_countries
	FOREIGN KEY (country_code)
	REFERENCES countries(country_code)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);


INSERT INTO mountains_countries (
	mountain_id, country_code
) 
VALUES 	
	(3, 'AR'),
	(4, 'BG'),
	(16, 'BG'),
	(17, 'BG'),
	(23, 'BG'),
	(18, 'CA'),
	(26, 'CH'),
	(3, 'CL'),
	(9, 'CN'),
	(11, 'CN'),
	(5, 'GE'),
	(10, 'ID'),
	(15, 'ID'),
	(21, 'ID'),
	(9, 'IN'),
	(2, 'IR'),
	(26, 'IT'),
	(12, 'KE'),
	(6, 'MX'),
	(22, 'MX'),
	(9, 'NP'),
	(20, 'PG'),
	(11, 'PK'),
	(5, 'RU'),
	(13, 'TZ'),
	(14, 'TZ'),
	(1, 'US');
	

CREATE TABLE IF NOT EXISTS peaks (
  "id" SERIAL PRIMARY KEY,
  peak_name VARCHAR(50) NOT NULL,
  elevation INT NOT NULL,
  mountain_id INT NOT NULL,
  CONSTRAINT peaks_elevation_check CHECK (elevation >= 0),
  CONSTRAINT peaks_mountain_id_check CHECK (mountain_id >= 0),
  CONSTRAINT fk_peaks_mountains
	FOREIGN KEY (mountain_id) 
	REFERENCES mountains("id")
	ON DELETE CASCADE
	ON UPDATE CASCADE
);


INSERT INTO peaks (
	peak_name, elevation, mountain_id
) 
VALUES 	
	('Aconcagua', 6962, 3),
	('Botev', 2376, 4),
	('Carstensz Pyramid', 4884, 21),
	('Damavand', 5610, 2),
	('Dykh-Tau', 5205, 5),
	('Elbrus', 5642, 5),
	('Everest', 8848, 9),
	('Julianatop', 4760, 10),
	('K2', 8611, 11),
	('Kangchenjunga', 8586, 9),
	('Kilimanjaro', 5895, 13),
	('Malyovitsa', 2729, 17),
	('Mawenzi', 5149, 14),
	('Monte Pissis', 6793, 3),
	('Mount Giluwe', 4368, 20),
	('Mount Kenya', 5199, 12),
	('Mount Logan', 5959, 18),
	('Mount McKinley', 6194, 1),
	('Mount Shinn', 4661, 19),
	('Mount Sidley', 4285, 8),
	('Mount Tyree', 4852, 19),
	('Musala', 2925, 17),
	('Ojos del Salado', 6893, 3),
	('Pico de Orizaba', 5636, 22),
	('Puncak Trikora', 4750, 15),
	('Shkhara', 5193, 5),
	('Vihren', 2914, 16),
	('Vinson Massif', 4897, 7),
	('Golyam Perelik', 2191, 23),
	('Shirokolashki Snezhnik', 2188, 23),
	('Golyam Persenk', 2091, 23),
	('Batashki Snezhnik', 2082, 23),
	('Cerro Bonete', 6759, 3),
	('Galán', 5912, 3),
	('Mercedario', 6720, 3),
	('Pissis', 6795, 3),
	('Lhotse', 8516, 9),
	('Makalu', 8462, 9),
	('Cho Oyu', 8201, 9),
	('Kutelo', 2908, 16),
	('Banski Suhodol', 2884, 16),
	('Golyam Polezhan', 2851, 16),
	('Kamenitsa', 2822, 16),
	('Malak Polezhan', 2822, 16),
	('Malka Musala', 2902, 17),
	('Orlovets', 2685, 17),
	('Vezhen', 2198, 4),
	('Kom', 2016, 4);
	

CREATE TABLE IF NOT EXISTS rivers (
  "id" SERIAL PRIMARY KEY,
  river_name VARCHAR(60) NOT NULL,
  "length" INT NOT NULL,
  drainage_area INT NOT NULL,
  average_discharge INT NOT NULL,
  outflow VARCHAR(70) NOT NULL,
  CONSTRAINT rivers_length_check CHECK ("length" >= 0),
  CONSTRAINT rivers_drainage_area_check CHECK (drainage_area >= 0),
  CONSTRAINT rivers_average_discharge_check CHECK (average_discharge >= 0)
);


INSERT INTO rivers (
	river_name, "length", drainage_area, average_discharge, outflow
) 
VALUES 	
	('Nile', 6650, 3254555, 5100, 'Mediterranean'),
	('Amazon', 6400, 7050000, 219000, 'Atlantic Ocean'),
	('Yangtze', 6300, 1800000, 31900, 'East China Sea'),
	('Mississippi', 6275, 2980000, 16200, 'Gulf of Mexico'),
	('Yenisei', 5539, 2580000, 19600, 'Kara Sea'),
	('Yellow River', 5464, 745000, 2110, 'Bohai Sea'),
	('Ob', 5410, 2990000, 12800, 'Gulf of Ob'),
	('Paraná', 4880, 2582672, 18000, 'Río de la Plata'),
	('Congo', 4700, 3680000, 41800, 'Atlantic Ocean'),
	('Amur', 4444, 1855000, 11400, 'Sea of Okhotsk'),
	('Lena', 4400, 2490000, 17100, 'Laptev Sea'),
	('Mekong', 4350, 810000, 16000, 'South China Sea'),
	('Mackenzie', 4241, 1790000, 10300, 'Beaufort Sea'),
	('Niger', 4200, 2090000, 9570, 'Gulf of Guinea'),
	('Murray', 3672, 1061000, 7670, 'Southern Ocean'),
	('Tocantins', 3650, 950000, 13598, 'Atlantic Ocean, Amazon'),
	('Volga', 3645, 1380000, 8080, 'Caspian Sea'),
	('Shatt al-Arab', 3596, 884000, 8560, 'Persian Gulf'),
	('Madeira', 3380, 1485200, 31200, 'Amazon'),
	('Purús', 3211, 63166, 8400, 'Amazon'),
	('Yukon', 3185, 850000, 6210, 'Bering Sea'),
	('Indus', 3180, 960000, 7160, 'Arabian Sea'),
	('São Francisco', 3180, 610000, 3300, 'Atlantic Ocean'),
	('Syr Darya', 3078, 219000, 7030, 'Aral Sea'),
	('Salween', 3060, 324000, 3153, 'Andaman Sea'),
	('Saint Lawrence', 3058, 1030000, 10100, 'Gulf of Saint Lawrence'),
	('Rio Grande', 3057, 570000, 820, 'Gulf of Mexico'),
	('Lower Tunguska', 2989, 473000, 3600, 'Yenisei'),
	('Brahmaputra', 2948, 1730000, 19200, 'Ganges'),
	('Danube', 2888, 817000, 7130, 'Black Sea');
	
	
CREATE TABLE IF NOT EXISTS countries_rivers (
  river_id INT,
  country_code CHAR(2),
  CONSTRAINT countries_river_id_check CHECK (river_id >= 0),
  CONSTRAINT fk_countries_rivers_rivers
	FOREIGN KEY (river_id) 
	REFERENCES rivers("id")
	ON DELETE CASCADE
	ON UPDATE CASCADE,
  CONSTRAINT fk_countries_rivers_countries
	FOREIGN KEY (country_code) 
	REFERENCES countries(country_code)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);
	
	
INSERT INTO countries_rivers (
	river_id, country_code
) 
VALUES 	
	(1, 'BI'),
	(1, 'CD'),
	(1, 'EG'),
	(1, 'ER'),
	(1, 'ET'),
	(1, 'KE'),
	(1, 'RW'),
	(1, 'SD'),
	(1, 'SS'),
	(1, 'TZ'),
	(1, 'UG'),
	(2, 'BO'),
	(2, 'BR'),
	(2, 'CO'),
	(2, 'EC'),
	(2, 'GY'),
	(2, 'PE'),
	(2, 'VE'),
	(3, 'CN'),
	(4, 'CA'),
	(4, 'US'),
	(5, 'MN'),
	(5, 'RU'),
	(6, 'CN'),
	(7, 'CN'),
	(7, 'KZ'),
	(7, 'MN'),
	(7, 'RU'),
	(8, 'AR'),
	(8, 'BO'),
	(8, 'BR'),
	(8, 'PY'),
	(8, 'UY'),
	(9, 'AO'),
	(9, 'BI'),
	(9, 'CD'),
	(9, 'CF'),
	(9, 'CG'),
	(9, 'CM'),
	(9, 'RW'),
	(9, 'TZ'),
	(9, 'ZM'),
	(10, 'CN'),
	(10, 'MN'),
	(10, 'RU'),
	(11, 'RU'),
	(12, 'CN'),
	(12, 'KH'),
	(12, 'LA'),
	(12, 'MM'),
	(12, 'TH'),
	(12, 'VN'),
	(13, 'CA'),
	(14, 'BF'),
	(14, 'BJ'),
	(14, 'CM'),
	(14, 'DZ'),
	(14, 'GN'),
	(14, 'ML'),
	(14, 'NE'),
	(14, 'NG'),
	(14, 'TD'),
	(15, 'AU'),
	(16, 'BR'),
	(17, 'RU'),
	(18, 'IQ'),
	(18, 'SY'),
	(18, 'TR'),
	(19, 'BO'),
	(19, 'BR'),
	(19, 'PE'),
	(20, 'BR'),
	(20, 'PE'),
	(21, 'CA'),
	(21, 'US'),
	(22, 'CN'),
	(22, 'IN'),
	(22, 'PK'),
	(23, 'BR'),
	(24, 'KG'),
	(24, 'KZ'),
	(24, 'TJ'),
	(24, 'UZ'),
	(25, 'CN'),
	(25, 'MM'),
	(25, 'TH'),
	(26, 'CA'),
	(26, 'US'),
	(27, 'MX'),
	(27, 'US'),
	(28, 'RU'),
	(29, 'BD'),
	(29, 'BT'),
	(29, 'CN'),
	(29, 'IN'),
	(29, 'NP'),
	(30, 'AT'),
	(30, 'BG'),
	(30, 'DE'),
	(30, 'HR'),
	(30, 'HU'),
	(30, 'RO'),
	(30, 'RS'),
	(30, 'SK');



SELECT
	mc.country_code,
	m.mountain_range,
	p.peak_name,
	p.elevation
FROM
	mountains_countries AS mc
JOIN
	mountains AS m
ON 
	m.id = mc.mountain_id
JOIN
	peaks AS p
ON
	p.mountain_id = m.id
WHERE 
	p.elevation > 2835
		AND
	mc.country_code = 'BG'
ORDER BY
	p.elevation DESC;



SELECT
	mc.country_code,
	COUNT(m.mountain_range) AS mountain_range_count
FROM
	mountains_countries AS mc
JOIN
	mountains AS m
ON 
	m.id = mc.mountain_id
WHERE 
	mc.country_code IN ('RU', 'US', 'BG')
GROUP BY
	mc.country_code
ORDER BY
	mountain_range_count DESC;


SELECT
	c.country_name,
	r.river_name
FROM
	countries AS c
LEFT JOIN
	countries_rivers AS cr
USING
	(country_code)
LEFT JOIN
	rivers AS r
ON
	r.id = cr.river_id
WHERE 
	c.continent_code = 'AF'
ORDER BY
	c.country_name ASC
LIMIT 5;


SELECT
	MIN(average) AS min_average_area
FROM (
	SELECT 
		AVG(area_in_sq_km) AS average
	FROM
		countries
	GROUP BY
		continent_code
) AS average_area;



SELECT
	COUNT(*) AS countries_without_mountains
FROM
	countries AS c
LEFT JOIN
	mountains_countries AS mc
USING
	(country_code)
WHERE
	mc.mountain_id IS NULL;




CREATE TABLE IF NOT EXISTS monasteries (
	id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	monastery_name VARCHAR(255),
	country_code CHAR(2)
);

INSERT INTO 
	monasteries(monastery_name, country_code)
VALUES
  ('Rila Monastery "St. Ivan of Rila"', 'BG'),
  ('Bachkovo Monastery "Virgin Mary"', 'BG'),
  ('Troyan Monastery "Holy Mother''s Assumption"', 'BG'),
  ('Kopan Monastery', 'NP'),
  ('Thrangu Tashi Yangtse Monastery', 'NP'),
  ('Shechen Tennyi Dargyeling Monastery', 'NP'),
  ('Benchen Monastery', 'NP'),
  ('Southern Shaolin Monastery', 'CN'),
  ('Dabei Monastery', 'CN'),
  ('Wa Sau Toi', 'CN'),
  ('Lhunshigyia Monastery', 'CN'),
  ('Rakya Monastery', 'CN'),
  ('Monasteries of Meteora', 'GR'),
  ('The Holy Monastery of Stavronikita', 'GR'),
  ('Taung Kalat Monastery', 'MM'),
  ('Pa-Auk Forest Monastery', 'MM'),
  ('Taktsang Palphug Monastery', 'BT'),
  ('Sümela Monastery', 'TR');
  

ALTER TABLE
	countries
ADD COLUMN
	three_rivers BOOLEAN DEFAULT FALSE;
	

UPDATE 
	countries
SET three_rivers = (
	SELECT
		COUNT(*) >= 3
	FROM
		countries_rivers AS cr
	WHERE 
		cr.country_code = countries.country_code
);

SELECT
	m.monastery_name,
	c.country_name
FROM 
	monasteries AS m
JOIN
	countries AS c
USING
	(country_code)
WHERE 
	NOT three_rivers
ORDER BY
	m.monastery_name;



UPDATE
	countries
SET
	country_name = 'Burma'
WHERE
	country_name = 'Myanmar';
	
INSERT INTO	
	monasteries(monastery_name, country_code)
VALUES 
	('Hanga Abbey', (SELECT country_code FROM countries WHERE country_name = 'Tanzania')),
	('Myin-Tin-Daik', (SELECT country_code FROM countries WHERE country_name = 'Myanmar'));
	
SELECT
	con.continent_name,
	cou.country_name,
	COUNT(m.country_code) AS monasteries_count
FROM
	continents AS con
JOIN
	countries AS cou
USING 
	(continent_code)
LEFT JOIN
	monasteries AS m
USING
	(country_code)
WHERE 
	NOT cou.three_rivers
GROUP BY
	cou.country_name,
	con.continent_name
ORDER BY
	monasteries_count DESC,
	country_name ASC;


SELECT
	tablename, 
	indexname,
	indexdef
FROM 
	pg_indexes
WHERE
	schemaname = 'public'
ORDER BY
	tablename,
	indexname;


CREATE VIEW 
	continent_currency_usage
AS
SELECT 
	ra.continent_code,
	ra.currency_code,
	ra.currency_usage
FROM (
	SELECT
		ct.continent_code,
		ct.currency_code,
		ct.currency_usage,
		DENSE_RANK() OVER(PARTITION BY ct.continent_code ORDER BY ct.currency_usage DESC) AS ranked_by_usage
	FROM (
		SELECT
			continent_code,
			currency_code,
			COUNT(currency_code) AS currency_usage
		FROM
			countries
		GROUP BY
			continent_code,
			currency_code
		HAVING
			COUNT(currency_code) > 1
	) AS ct
) AS ra
WHERE
	ra.ranked_by_usage = 1
ORDER BY
	ra.currency_usage DESC;


WITH 
	"row_number"
AS (
	SELECT
		c.country_name,
		COALESCE(p.peak_name, '(no highest peak)') AS highest_peak_name,
		COALESCE(p.elevation, 0) AS highest_peak_elevation,
		COALESCE(m.mountain_range, '(no mountain)') AS mountain,
		ROW_NUMBER() OVER(PARTITION BY c.country_name ORDER BY p.elevation DESC) AS row_num
	FROM 
		countries AS c
	LEFT JOIN
		mountains_countries AS mc
	USING
		(country_code)
	LEFT JOIN
		peaks AS p
	USING
		(mountain_id)
	LEFT JOIN
		mountains AS m
	ON 
		m.id = p.mountain_id
)


SELECT 
	country_name,
	highest_peak_name,
	highest_peak_elevation,
	mountain
FROM 
	"row_number"
WHERE 
	row_num = 1
ORDER BY
	country_name ASC,
	highest_peak_elevation DESC;

