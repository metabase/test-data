SET
  SESSION TIMEZONE TO 'UTC';

DROP TABLE IF EXISTS "cities";

CREATE TABLE "cities" (
  "id" SERIAL,
  "name" TEXT,
  "latitude" FLOAT,
  "longitude" FLOAT,
  PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "categories";

CREATE TABLE "categories" ("id" SERIAL, "name" TEXT, PRIMARY KEY ("id"));

DROP TABLE IF EXISTS "sightings";

CREATE TABLE "sightings" (
  "id" SERIAL,
  "city_id" INTEGER,
  "category_id" INTEGER,
  "timestamp" BIGINT,
  PRIMARY KEY ("id")
);

ALTER TABLE
  "sightings"
ADD
  CONSTRAINT "tings_city_id_cities_626224744" FOREIGN KEY ("city_id") REFERENCES "cities" ("id");

ALTER TABLE
  "sightings"
ADD
  CONSTRAINT "tegory_id_categories_132892118" FOREIGN KEY ("category_id") REFERENCES "categories" ("id");

-- 151 rows
INSERT INTO "cities" ("name", "latitude", "longitude")
VALUES
('Akron', 41.0817920535084, -81.5219209322972),
('Albany', 42.6674396618158, -73.8032049534362),
('Albuquerque', 35.1148836731619, -106.627751577878),
('Alexandria', 38.8186997503841, -77.0858077256885),
('Anaheim', 33.8389260476165, -117.857765556473),
('Anchorage', 61.0441759440684, -149.317282345864),
('Arlington', 32.6996733810689, -97.1234704915865),
('Arlington', 38.8796716891319, -77.1101494956843),
('Atlanta', 33.7627546508682, -84.4222210251942),
('Augusta', 33.3587049511624, -82.0353614297146),
('Aurora', 39.6829234764587, -104.801856234634),
('Austin', 30.2811666886503, -97.7268018580761),
('Bakersfield', 35.3497352318818, -119.020412340043),
('Baltimore', 39.3079126779924, -76.6158047952206),
('Beaverton', 45.4756765002984, -122.820584221168),
('Bellevue', 47.597620293295, -122.15422185066),
('Bellingham', 48.7525911906983, -122.471025622103),
('Boise', 43.6023952293065, -116.227317564419),
('Boston', 42.3159590543845, -71.0926496280165),
('Boulder', 40.0229365258329, -105.244998687629),
('Buffalo', 42.9017620570981, -78.8472534370662),
('Cambridge', 42.3755766457887, -71.1167535125691),
('Charlotte', 35.2056919002986, -80.8260730320272),
('Charlottesville', 38.0371765904751, -78.4860323531533),
('Chesapeake', 36.6766812143194, -76.3025623546478),
('Chicago', 41.8305783388926, -87.6755413323617),
('Chula Vista', 32.626632415851, -117.009996322615),
('Cincinnati', 39.1414967359386, -84.5061046117095),
('Clearwater', 27.9896873468532, -82.7636681734622),
('Cleveland', 41.4768555457116, -81.6800971756204),
('Clyde Hill', 47.6303314801144, -122.218092425819),
('Colorado Springs', 38.8629105185554, -104.782777886895),
('Columbus', 39.9911167233777, -82.9947879280307),
('Corpus Christi', 27.7378308029161, -97.4242164195629),
('Dallas', 32.7821103162561, -96.7944036928693),
('Davis', 38.5561009581373, -121.742879527372),
('Dayton', 39.7686549511815, -84.197470586754),
('Denver', 39.721934011119, -104.952125307829),
('Des Moines', 41.5828901149763, -93.6261357354458),
('Detroit', 42.3734324907707, -83.1192830974792),
('El Paso', 31.8527366456146, -106.437432184932),
('Eugene', 44.0652642601219, -123.123736166724),
('Everett', 47.9374878985497, -122.214849312017),
('Fort Lauderdale', 26.1358082277767, -80.1378893726993),
('Fort Wayne', 41.0872780865436, -85.1384060832903),
('Fort Worth', 32.7663396353216, -97.3356345187694),
('Fremont', 37.5333775623542, -121.957091347667),
('Fresno', 36.7805903786084, -119.779079608054),
('Garland', 32.9263207437171, -96.6374134768194),
('Glendale', 34.1812803215057, -118.24646056346),
('Grand Rapids', 42.9691806613517, -85.6603083499934),
('Hampton', 37.0533821444422, -76.3660864085499),
('Hartford', 41.7660197342967, -72.6850000548942),
('Hayward', 37.6463670565486, -122.07277816616),
('Helena', 46.5992924413936, -112.016069747163),
('Henderson', 36.0138699691504, -115.037689539722),
('Honolulu', 21.4569326275069, -157.974373556969),
('Houston', 29.7764362197286, -95.3651230119171),
('Hunts Point', 47.6410595002837, -122.229135327003),
('Irvine', 33.6719891580586, -117.783008427859),
('Jackson', 32.316935168835, -90.2098972397546),
('Jacksonville', 30.3333720559405, -81.6288065567485),
('Jersey City', 40.7190488637139, -74.0675498734043),
('Kalamazoo', 42.2741656245187, -85.586492146159),
('Kansas City', 38.9914922886076, -94.5260577002287),
('Kirkland', 47.68520829684, -122.189924198143),
('Knoxville', 35.9669953208027, -83.9111386400784),
('Lakeland', 28.0356877353262, -81.9508948933358),
('Las Vegas', 36.2126726731643, -115.254149344792),
('Lexington', 38.0262914937546, -84.4987785910852),
('Lincoln', 40.8001715993849, -96.6926317459259),
('Little Rock', 34.7166927686759, -92.3577554360521),
('Long Beach', 33.8022586219213, -118.164345602519),
('Los Angeles', 34.1168924900067, -118.407485160702),
('Louisville', 38.2229690706391, -85.7410949937769),
('Madison', 43.0792492314128, -89.392662422459),
('Medina', 47.6255209894124, -122.233349126709),
('Memphis', 35.1131803117294, -89.9090185894135),
('Mesa', 33.4072402344463, -111.726389674979),
('Miami', 25.7828297237406, -80.2228137752082),
('Milwaukee', 43.0643427023987, -87.9671060879089),
('Milwaukie', 45.4450767641419, -122.622632140126),
('Minneapolis', 44.9625414277315, -93.2672555017126),
('Missoula', 46.8685902870306, -114.005902431975),
('Mobile', 30.6547259173221, -88.1553977386548),
('Naples', 26.1587503746239, -81.7962378361265),
('Nashville', 36.1855607755911, -86.8250314714374),
('New Haven', 41.3115704632735, -72.9264676283595),
('New Orleans', 30.0293197552914, -89.9149069136045),
('New York City-Bronx', 40.8537117842137, -73.8686083003131),
('New York City-Brooklyn', 40.6454313132955, -73.9514634643416),
('New York City-Manhattan', 40.7790280008683, -73.9682155016616),
('New York City-Queens', 40.7057905663726, -73.8207037600514),
('New York City-Staten Island', 40.5797731980336, -74.1545946387289),
('Newark', 40.7379787453333, -74.1882793111043),
('North Las Vegas', 36.2711553454136, -115.123033298601),
('Oakland', 37.7914090275801, -122.215423402358),
('Olympia', 47.0436341347608, -122.896387701753),
('Orlando', 28.4796212485055, -81.3447620209753),
('Palo Alto', 37.4335900036863, -122.135538168664),
('Pasadena', 34.1599825432176, -118.138639952087),
('Philadelphia', 40.009526014341, -75.1318578136832),
('Phoenix', 33.5795069972023, -112.092671333315),
('Pittsburgh', 40.439500421903, -79.9773949383043),
('Portland', 45.5369157557102, -122.648933078017),
('Portland', 43.678844752771, -70.2941431474095),
('Providence', 41.8241725222703, -71.422691257313),
('Raleigh', 35.829648055409, -78.6380947174502),
('Reno', 39.5508028689511, -119.8506298122),
('Richmond', 37.5322643352472, -77.4784703051123),
('Riverside', 33.9400306735386, -117.396395696286),
('Rochester', 43.167830520014, -77.6138736068905),
('Sacramento', 38.5671166069908, -121.471296542466),
('Saint Louis', 38.6360316825051, -90.2453544320815),
('Saint Paul', 44.9478914144525, -93.1039343709839),
('Saint Petersburg', 27.7895017580028, -82.6654213054873),
('Salem', 44.9185348717088, -123.014117759134),
('Salt Lake City', 40.7782220737918, -111.923084842336),
('San Antonio', 29.4811966511466, -98.5236400309898),
('San Bernardino', 34.1339049146125, -117.29839235886),
('San Diego', 32.8355617562572, -117.120115226693),
('San Francisco', 37.7520506324268, -122.439057167332),
('San Jose', 37.3045412212888, -121.861732804876),
('San Mateo', 37.5508416313235, -122.314040951104),
('Santa Ana', 33.7412802074209, -117.886630249593),
('Santa Barbara', 34.4282665548587, -119.711400156564),
('Sarasota', 27.3390821133524, -82.5377194510764),
('Scottsdale', 33.6860427845044, -111.865122305566),
('Seattle', 47.6209993109222, -122.333419649848),
('Shreveport', 32.461248105777, -93.7877977154645),
('South Bend', 41.6754424773283, -86.2525189842617),
('Spokane', 47.672830992754, -117.41516549912),
('Springfield', 42.1153255306358, -72.5398033914331),
('Stamford', 41.104294099486, -73.5588778160019),
('Stockton', 37.9722307674717, -121.309646158666),
('Syracuse', 43.0401198298712, -76.1430411047429),
('Tacoma', 47.2428813687102, -122.454978108353),
('Tampa', 27.9894376460191, -82.4514464104274),
('Tempe', 33.3877338548602, -111.92702634973),
('Toledo', 41.6613112707445, -83.5889096955469),
('Torrance', 33.8345668365423, -118.341466805704),
('Trenton', 40.2241118992646, -74.7629611313216),
('Tucson', 32.1918968185482, -110.896315856667),
('Vancouver', 45.6327188549691, -122.58863138705),
('Virginia Beach', 36.8711060362061, -76.0742459988519),
('Washington', 38.9125861956381, -77.0136629966983),
('West Palm Beach', 26.7523625822009, -80.1447671616657),
('Wichita', 37.6780693015935, -97.3350738800709),
('Woodinville', 47.7565941148677, -122.147987034539),
('Yarrow Point', 47.644837594726, -122.217089807854),
('Youngstown', 41.098932107642, -80.6459111496382);

-- 15 rows
INSERT INTO "categories" ("name")
VALUES
('At a Restaurant'),
('At the Movies'),
('Walking Down the Street'),
('At the Grocery Store'),
('In the Mall'),
('On TV'),
('At Starbucks'),
('In the Expa Office'),
('In the Park'),
('At the Airport'),
('Working as a Limo Driver'),
('Working at a Pet Store'),
('Wearing a Biggie Shirt'),
('In a Drum Circle'),
('Dressed like a Hipster');

-- 1000 rows
INSERT INTO "sightings" ("city_id", "category_id", "timestamp")
VALUES
(23, 14, 927183600),
(65, 13, 978854400),
(60, 10, 886752000),
(141, 13, 1129100400),
(51, 4, 1261814400),
(1, 12, 887443200),
(135, 1, 1021878000),
(133, 4, 1076659200),
(128, 1, 1228550400),
(104, 9, 1420272000),
(81, 12, 1273993200),
(40, 3, 1001228400),
(11, 8, 1039075200),
(129, 1, 1249974000),
(138, 13, 912931200),
(50, 10, 1002351600),
(88, 1, 995698800),
(151, 9, 983865600),
(26, 1, 1366614000),
(6, 7, 1053759600),
(76, 11, 873097200),
(2, 14, 1430118000),
(106, 8, 971938800),
(68, 5, 1191740400),
(119, 11, 1269327600),
(8, 8, 1437289200),
(139, 4, 843807600),
(64, 2, 1340521200),
(142, 4, 1205049600),
(144, 10, 1425970800),
(2, 4, 940057200),
(105, 11, 935823600),
(56, 11, 1448092800),
(90, 2, 1296028800),
(8, 13, 1416384000),
(48, 8, 967964400),
(54, 1, 1016870400),
(134, 13, 1190617200),
(71, 12, 1233734400),
(74, 3, 977126400),
(6, 3, 1303282800),
(65, 8, 1150527600),
(67, 11, 957682800),
(13, 15, 1022914800),
(126, 1, 1202630400),
(49, 13, 1245222000),
(44, 9, 1237100400),
(11, 3, 1052204400),
(45, 9, 1261296000),
(134, 15, 965631600),
(123, 7, 1155625200),
(99, 8, 914572800),
(36, 15, 827568000),
(115, 12, 1368687600),
(140, 2, 1208502000),
(68, 2, 1444114800),
(115, 6, 858499200),
(135, 6, 1329120000),
(130, 13, 1329120000),
(48, 6, 923040000),
(106, 7, 869036400),
(26, 15, 1342162800),
(130, 10, 1250492400),
(58, 15, 886406400),
(131, 13, 1143100800),
(129, 11, 1050044400),
(2, 11, 1271228400),
(112, 2, 918460800),
(49, 2, 1022310000),
(21, 6, 1382166000),
(127, 9, 1328688000),
(106, 4, 1108454400),
(8, 4, 1186124400),
(122, 7, 1131868800),
(130, 2, 829033200),
(20, 13, 1266998400),
(2, 13, 936342000),
(117, 15, 1365231600),
(55, 9, 832575600),
(37, 15, 1328083200),
(6, 11, 833958000),
(101, 11, 1365145200),
(88, 3, 1002438000),
(67, 1, 1406271600),
(87, 1, 1050217200),
(115, 14, 1235030400),
(20, 2, 930380400),
(37, 12, 1315033200),
(122, 2, 1118127600),
(86, 10, 1425715200),
(128, 14, 1030258800),
(15, 7, 1160636400),
(55, 12, 1438066800),
(39, 5, 1257753600),
(129, 11, 945417600),
(147, 6, 1319612400),
(52, 9, 1013760000),
(67, 13, 1177657200),
(2, 14, 1141459200),
(106, 12, 1297756800),
(23, 9, 1061103600),
(58, 7, 891504000),
(93, 9, 1105862400),
(150, 3, 1122361200),
(45, 6, 1408518000),
(82, 3, 988441200),
(94, 4, 939970800),
(89, 14, 1214636400),
(146, 2, 1429599600),
(91, 6, 1143014400),
(87, 15, 887529600),
(47, 14, 1145430000),
(9, 12, 1374130800),
(65, 8, 1320739200),
(85, 3, 1033887600),
(46, 12, 975398400),
(12, 10, 913017600),
(25, 3, 959929200),
(139, 4, 1145343600),
(30, 11, 1302332400),
(2, 8, 1197014400),
(94, 1, 1262505600),
(44, 13, 1027494000),
(39, 3, 1172995200),
(73, 15, 1198569600),
(68, 10, 924937200),
(22, 9, 1073548800),
(90, 6, 1085295600),
(128, 8, 908953200),
(8, 8, 1039939200),
(7, 3, 1120546800),
(29, 13, 1184655600),
(61, 8, 1254553200),
(147, 7, 1383984000),
(22, 6, 890380800),
(54, 15, 920966400),
(38, 5, 1105603200),
(133, 8, 844844400),
(149, 12, 936169200),
(38, 6, 991551600),
(115, 11, 846489600),
(24, 13, 1126854000),
(111, 5, 1412924400),
(98, 2, 1444633200),
(57, 14, 832834800),
(58, 9, 964681200),
(91, 15, 1291622400),
(102, 12, 847785600),
(89, 11, 990774000),
(52, 13, 1147503600),
(87, 1, 1284706800),
(46, 12, 1431759600),
(134, 5, 1081839600),
(146, 9, 1050476400),
(137, 12, 1304406000),
(86, 6, 917856000),
(134, 1, 916905600),
(94, 6, 1440140400),
(86, 5, 1342422000),
(11, 13, 1381302000),
(68, 14, 826963200),
(75, 13, 940834800),
(20, 9, 1045987200),
(17, 15, 1134979200),
(58, 2, 871196400),
(48, 3, 1374303600),
(31, 14, 1415433600),
(125, 6, 1381647600),
(147, 12, 1169193600),
(82, 8, 862210800),
(23, 14, 864198000),
(31, 13, 1376636400),
(19, 6, 899881200),
(57, 10, 969606000),
(72, 3, 994057200),
(56, 1, 1131696000),
(13, 1, 1155452400),
(29, 6, 1068796800),
(100, 12, 1276671600),
(83, 14, 1324022400),
(142, 3, 1323504000),
(135, 14, 1330675200),
(50, 14, 1226044800),
(53, 3, 959929200),
(71, 9, 840697200),
(70, 13, 917164800),
(130, 3, 1182322800),
(64, 11, 904633200),
(33, 10, 1267171200),
(74, 5, 820656000),
(112, 8, 1228896000),
(54, 7, 1096354800),
(21, 14, 848044800),
(100, 15, 1391673600),
(50, 7, 1190185200),
(127, 2, 1063004400),
(68, 3, 1067065200),
(70, 8, 1153465200),
(133, 1, 1449734400),
(42, 14, 1157439600),
(123, 7, 1106726400),
(2, 13, 919238400),
(20, 1, 991378800),
(120, 6, 1095058800),
(84, 12, 946281600),
(102, 4, 1225609200),
(149, 6, 1345878000),
(70, 8, 1322294400),
(133, 10, 1275030000),
(77, 6, 1068192000),
(66, 9, 937724400),
(106, 11, 1226563200),
(140, 2, 1059980400),
(118, 4, 894351600),
(137, 9, 1336374000),
(48, 11, 883728000),
(101, 13, 932281200),
(125, 9, 904287600),
(38, 1, 872665200),
(60, 10, 1397977200),
(103, 6, 1058943600),
(31, 6, 1042963200),
(62, 3, 1171958400),
(45, 14, 1312182000),
(6, 6, 1243407600),
(103, 3, 1055833200),
(145, 12, 1332486000),
(29, 8, 1243494000),
(92, 2, 1371366000),
(142, 4, 926406000),
(111, 7, 1160550000),
(71, 1, 868863600),
(64, 9, 821520000),
(150, 15, 896338800),
(115, 3, 1068537600),
(119, 7, 1216623600),
(108, 8, 1107849600),
(16, 13, 1214895600),
(148, 5, 890640000),
(17, 7, 1182495600),
(135, 1, 1229587200),
(120, 5, 1317106800),
(37, 10, 832316400),
(35, 13, 1214982000),
(72, 3, 1408777200),
(131, 3, 1165824000),
(47, 11, 1187679600),
(8, 12, 1392192000),
(139, 15, 1185606000),
(107, 13, 1119682800),
(114, 14, 1002178800),
(13, 11, 1099468800),
(11, 9, 1354521600),
(13, 5, 820656000),
(8, 4, 1396767600),
(87, 12, 1260259200),
(119, 10, 835599600),
(54, 8, 1123484400),
(19, 14, 1167638400),
(74, 13, 1195372800),
(51, 9, 980236800),
(128, 8, 1437548400),
(31, 4, 1431759600),
(49, 11, 920016000),
(144, 5, 1000882800),
(27, 12, 1202716800),
(7, 2, 1442732400),
(129, 9, 1003993200),
(14, 12, 1169884800),
(115, 11, 989650800),
(137, 8, 1090652400),
(51, 8, 1282978800),
(107, 2, 1017043200),
(57, 2, 997254000),
(25, 6, 1119942000),
(46, 13, 1207465200),
(18, 7, 1327046400),
(87, 14, 992934000),
(126, 12, 976521600),
(28, 6, 1432105200),
(149, 10, 1007884800),
(12, 15, 1385193600),
(89, 1, 1235894400),
(22, 12, 1214290800),
(4, 9, 1068364800),
(98, 14, 831798000),
(107, 1, 945244800),
(148, 3, 1113375600),
(37, 11, 1342854000),
(131, 15, 1226822400),
(68, 5, 1173682800),
(149, 7, 911808000),
(100, 8, 1319439600),
(30, 7, 1288767600),
(42, 2, 1130482800),
(72, 15, 901954800),
(88, 6, 1082876400),
(35, 2, 1246431600),
(109, 15, 1060758000),
(37, 9, 1431241200),
(131, 6, 1374390000),
(63, 10, 825840000),
(63, 4, 905065200),
(120, 5, 1087023600),
(101, 14, 848736000),
(112, 3, 1219129200),
(59, 2, 1344495600),
(24, 2, 1363503600),
(108, 15, 1230105600),
(134, 3, 1287990000),
(55, 4, 1236582000),
(48, 7, 860227200),
(19, 13, 1049698800),
(129, 15, 1256281200),
(105, 5, 849168000),
(98, 3, 853401600),
(84, 7, 1071475200),
(136, 2, 1429858800),
(13, 13, 1329206400),
(127, 2, 1337670000),
(58, 11, 1353657600),
(98, 10, 998031600),
(15, 7, 1251874800),
(73, 10, 1431414000),
(73, 12, 1121151600),
(72, 13, 1055919600),
(55, 5, 1005984000),
(10, 15, 823593600),
(34, 8, 981619200),
(4, 2, 1119510000),
(7, 11, 1326441600),
(110, 11, 1400655600),
(9, 7, 826704000),
(63, 2, 1045123200),
(16, 15, 1342767600),
(138, 6, 1246950000),
(66, 12, 1360051200),
(16, 7, 1350198000),
(128, 9, 1423036800),
(58, 10, 1109836800),
(54, 8, 1007884800),
(80, 9, 1416211200),
(136, 13, 889776000),
(57, 7, 1113289200),
(61, 14, 1230278400),
(113, 6, 956905200),
(28, 2, 1391500800),
(95, 5, 1016006400),
(120, 1, 1026975600),
(126, 11, 1306566000),
(135, 4, 1309158000),
(118, 9, 1376895600),
(74, 7, 1282028400),
(95, 4, 1256194800),
(1, 11, 1223190000),
(33, 1, 832575600),
(26, 14, 1315983600),
(78, 1, 1420617600),
(76, 7, 946713600),
(116, 1, 1022310000),
(77, 8, 1131523200),
(24, 5, 1218697200),
(134, 8, 1192345200),
(124, 9, 1296547200),
(141, 9, 998895600),
(131, 8, 1086764400),
(70, 6, 1298016000),
(41, 15, 1435906800),
(117, 7, 1057734000),
(29, 3, 1239174000),
(16, 15, 980236800),
(60, 4, 1173513600),
(96, 5, 832489200),
(68, 3, 1364799600),
(53, 5, 1020582000),
(52, 5, 1382857200),
(52, 4, 1333522800),
(61, 13, 1357545600),
(1, 13, 1295856000),
(139, 5, 1125644400),
(6, 4, 1247209200),
(35, 4, 1002092400),
(70, 5, 1020927600),
(105, 11, 1345359600),
(85, 6, 1323504000),
(94, 10, 1432623600),
(59, 6, 1197273600),
(149, 2, 1013155200),
(56, 5, 1108540800),
(84, 11, 880185600),
(109, 2, 895820400),
(12, 7, 1027148400),
(8, 9, 1165046400),
(99, 3, 1069574400),
(4, 14, 1413615600),
(28, 12, 1096268400),
(95, 4, 888307200),
(149, 6, 971938800),
(15, 15, 1442732400),
(19, 9, 1074931200),
(91, 12, 868950000),
(50, 12, 997513200),
(73, 3, 821606400),
(35, 6, 887184000),
(6, 7, 866530800),
(76, 2, 1281164400),
(83, 3, 1185519600),
(22, 3, 1302159600),
(114, 1, 897289200),
(114, 9, 1378105200),
(137, 4, 1434092400),
(33, 13, 979459200),
(1, 5, 944121600),
(102, 13, 1281510000),
(82, 14, 836550000),
(144, 15, 956559600),
(3, 11, 1010563200),
(4, 2, 1160463600),
(78, 15, 1088406000),
(84, 10, 1205996400),
(16, 3, 1232870400),
(89, 12, 884073600),
(109, 14, 858585600),
(133, 10, 968137200),
(136, 9, 1172995200),
(1, 1, 1151823600),
(110, 14, 1023951600),
(57, 1, 869554800),
(8, 7, 917078400),
(117, 5, 1308898800),
(31, 3, 976348800),
(51, 3, 1370847600),
(43, 8, 893055600),
(110, 10, 901090800),
(62, 6, 1401865200),
(80, 12, 1256281200),
(104, 2, 1012636800),
(71, 10, 1203667200),
(81, 1, 1158476400),
(120, 2, 1342940400),
(131, 9, 1159081200),
(97, 10, 1216623600),
(93, 9, 1080979200),
(62, 10, 1066719600),
(49, 14, 1060498800),
(124, 10, 836722800),
(68, 13, 1049356800),
(139, 2, 910339200),
(88, 13, 877330800),
(114, 3, 1181890800),
(98, 1, 1278486000),
(40, 5, 1214636400),
(12, 11, 891676800),
(142, 10, 908348400),
(119, 9, 997426800),
(30, 11, 923900400),
(45, 14, 1308294000),
(58, 12, 838364400),
(80, 4, 1019286000),
(114, 10, 1171008000),
(4, 4, 1048838400),
(139, 12, 1299052800),
(43, 15, 838882800),
(66, 4, 1140336000),
(31, 2, 1196582400),
(6, 2, 1049616000),
(14, 8, 1033542000),
(122, 14, 1230969600),
(44, 6, 902818800),
(30, 7, 976262400),
(17, 12, 1431327600),
(129, 8, 1363676400),
(102, 5, 1443942000),
(104, 11, 959065200),
(41, 15, 905324400),
(19, 14, 1231228800),
(53, 13, 1049616000),
(139, 6, 1077696000),
(58, 12, 946022400),
(96, 10, 858240000),
(70, 14, 1218265200),
(61, 8, 1371193200),
(56, 10, 1177743600),
(140, 10, 858499200),
(44, 4, 844585200),
(19, 4, 1291622400),
(140, 15, 1214118000),
(41, 3, 1436684400),
(97, 4, 1318057200),
(20, 10, 923641200),
(52, 5, 922953600),
(104, 2, 891590400),
(102, 8, 1045468800),
(142, 4, 928393200),
(19, 8, 1320998400),
(149, 9, 1176447600),
(80, 4, 1163059200),
(25, 5, 847785600),
(51, 8, 1444719600),
(144, 3, 1235808000),
(48, 4, 1319439600),
(18, 15, 923986800),
(92, 6, 1245740400),
(8, 15, 1420444800),
(83, 10, 1009267200),
(63, 10, 882172800),
(17, 9, 1017648000),
(88, 14, 863938800),
(21, 6, 831798000),
(91, 5, 1101888000),
(2, 14, 1161414000),
(124, 6, 1062572400),
(122, 14, 1272870000),
(105, 6, 1433401200),
(5, 14, 1441090800),
(146, 9, 1071648000),
(124, 11, 1229068800),
(138, 15, 1056524400),
(43, 2, 1082444400),
(124, 12, 1123052400),
(113, 2, 1105344000),
(81, 4, 941007600),
(112, 13, 1360051200),
(2, 11, 1311490800),
(9, 11, 893574000),
(88, 11, 1265097600),
(2, 10, 967014000),
(27, 14, 966495600),
(42, 2, 1348729200),
(47, 8, 1340521200),
(110, 6, 1276326000),
(2, 14, 958374000),
(75, 8, 1386835200),
(142, 9, 879580800),
(135, 8, 1341730800),
(35, 3, 1153724400),
(17, 9, 1208847600),
(91, 2, 938761200),
(66, 4, 1076918400),
(99, 1, 1091775600),
(110, 12, 858758400),
(136, 14, 844326000),
(53, 11, 1296806400),
(16, 10, 1390032000),
(50, 10, 978768000),
(22, 10, 1015228800),
(79, 15, 1029826800),
(118, 7, 960102000),
(144, 12, 1079942400),
(102, 7, 1307084400),
(122, 12, 948268800),
(90, 13, 1204185600),
(48, 15, 827740800),
(119, 11, 1190012400),
(78, 5, 1215673200),
(107, 3, 842166000),
(12, 12, 847612800),
(72, 8, 1111478400),
(30, 12, 1056697200),
(105, 11, 1427526000),
(91, 7, 1285311600),
(46, 1, 1000191600),
(147, 11, 1375426800),
(25, 13, 1116831600),
(74, 8, 1392537600),
(88, 14, 1157958000),
(107, 3, 1236326400),
(78, 9, 863766000),
(50, 3, 910944000),
(139, 11, 962953200),
(115, 1, 1295337600),
(26, 3, 1298707200),
(102, 1, 1170403200),
(76, 11, 823852800),
(123, 11, 966322800),
(76, 13, 1430118000),
(41, 2, 1307170800),
(2, 2, 903423600),
(41, 15, 908866800),
(60, 12, 1419667200),
(71, 9, 1182322800),
(147, 10, 1286953200),
(20, 7, 868431600),
(27, 9, 1170748800),
(102, 4, 1393920000),
(37, 8, 964681200),
(80, 15, 1019372400),
(129, 4, 1193554800),
(93, 15, 1235980800),
(4, 1, 867913200),
(92, 11, 925714800),
(120, 13, 883036800),
(55, 5, 933145200),
(18, 11, 1150354800),
(78, 5, 1140681600),
(1, 11, 1229241600),
(128, 9, 1177225200),
(69, 13, 1087801200),
(23, 7, 889430400),
(103, 10, 1362038400),
(134, 5, 1271142000),
(119, 9, 1439449200),
(41, 12, 852969600),
(79, 1, 1335855600),
(117, 14, 1434178800),
(49, 4, 1263801600),
(92, 10, 976953600),
(18, 9, 965804400),
(84, 6, 826185600),
(71, 11, 1321948800),
(74, 7, 912585600),
(53, 13, 1031900400),
(38, 3, 1050994800),
(58, 4, 844239600),
(116, 15, 1305529200),
(149, 13, 1070870400),
(115, 1, 1368860400),
(138, 12, 1077350400),
(110, 1, 1118386800),
(126, 4, 1143014400),
(138, 1, 1281596400),
(85, 14, 845449200),
(129, 4, 854870400),
(104, 13, 1041062400),
(138, 10, 1329724800),
(109, 3, 927010800),
(71, 9, 857894400),
(5, 5, 902473200),
(35, 3, 1130050800),
(127, 4, 1266652800),
(73, 11, 1354867200),
(134, 1, 918720000),
(118, 13, 1046332800),
(74, 9, 1043308800),
(79, 10, 1225177200),
(67, 14, 1254639600),
(20, 15, 1423296000),
(33, 7, 1403938800),
(41, 5, 1186815600),
(23, 9, 957596400),
(31, 3, 834476400),
(4, 9, 1011772800),
(102, 14, 1113116400),
(122, 15, 1269327600),
(14, 3, 883036800),
(91, 5, 1225609200),
(75, 4, 1295424000),
(94, 4, 961138800),
(54, 6, 927270000),
(30, 1, 1001401200),
(75, 2, 915609600),
(117, 15, 1256713200),
(35, 5, 973152000),
(114, 12, 929343600),
(60, 10, 1059375600),
(20, 12, 1344668400),
(18, 6, 1411801200),
(15, 5, 1239951600),
(102, 1, 949564800),
(65, 10, 1018940400),
(128, 14, 866271600),
(101, 9, 884592000),
(23, 15, 1278572400),
(81, 3, 1055487600),
(31, 15, 993625200),
(82, 2, 868518000),
(56, 8, 942134400),
(16, 10, 1180940400),
(59, 4, 1260950400),
(10, 6, 1430204400),
(86, 8, 976176000),
(19, 2, 1411110000),
(4, 6, 1025074800),
(33, 14, 1194508800),
(58, 12, 963212400),
(147, 9, 826358400),
(119, 4, 974448000),
(117, 2, 1008403200),
(151, 5, 1403506800),
(52, 2, 1296115200),
(87, 13, 1329120000),
(136, 9, 1028185200),
(30, 10, 1150354800),
(36, 10, 1449820800),
(111, 13, 1243839600),
(35, 7, 1153983600),
(9, 7, 1343026800),
(39, 2, 1270450800),
(106, 10, 1348383600),
(86, 7, 1145430000),
(18, 10, 917164800),
(11, 3, 1145689200),
(25, 14, 988095600),
(67, 1, 981532800),
(12, 10, 924159600),
(69, 4, 1176793200),
(95, 13, 1245394800),
(51, 13, 967878000),
(20, 13, 1314428400),
(69, 15, 1161068400),
(38, 2, 1134374400),
(150, 10, 1008489600),
(85, 1, 1368687600),
(49, 13, 1266825600),
(82, 15, 1006761600),
(81, 14, 1218265200),
(29, 7, 961657200),
(104, 14, 1194249600),
(71, 9, 1248246000),
(10, 5, 866617200),
(125, 7, 1313391600),
(136, 2, 942393600),
(91, 4, 834390000),
(68, 14, 1102752000),
(149, 4, 892623600),
(26, 11, 1199174400),
(92, 9, 849686400),
(79, 6, 950083200),
(109, 6, 1381993200),
(108, 4, 906447600),
(116, 10, 994921200),
(52, 11, 1000278000),
(82, 9, 1361606400),
(114, 10, 1431327600),
(130, 13, 891504000),
(71, 8, 877158000),
(31, 5, 933663600),
(50, 15, 1123398000),
(29, 5, 1173168000),
(146, 3, 1136966400),
(12, 9, 847699200),
(114, 14, 1057993200),
(41, 15, 1076745600),
(143, 13, 1338966000),
(145, 11, 1053586800),
(89, 6, 1049958000),
(21, 4, 1350457200),
(94, 11, 1331881200),
(147, 9, 1433833200),
(52, 12, 1318057200),
(26, 14, 1074067200),
(81, 5, 1251183600),
(73, 13, 1330329600),
(88, 13, 1049958000),
(102, 5, 922435200),
(61, 13, 848476800),
(135, 6, 1435820400),
(15, 10, 1326614400),
(77, 5, 1064214000),
(24, 7, 1403766000),
(47, 2, 1257926400),
(150, 12, 997254000),
(90, 10, 1251183600),
(50, 13, 868345200),
(51, 4, 1350025200),
(112, 1, 1052982000),
(6, 8, 1120719600),
(47, 9, 978595200),
(34, 11, 885542400),
(53, 6, 1037865600),
(43, 13, 871023600),
(59, 2, 985161600),
(11, 14, 1207983600),
(60, 8, 1229414400),
(125, 11, 1202976000),
(62, 10, 983692800),
(105, 12, 1414479600),
(33, 12, 1086073200),
(75, 4, 1030345200),
(99, 11, 1296806400),
(60, 10, 883123200),
(2, 9, 1450080000),
(100, 1, 1096268400),
(27, 12, 935564400),
(135, 3, 1135238400),
(69, 14, 880012800),
(47, 5, 936342000),
(27, 1, 953193600),
(19, 4, 1159254000),
(89, 11, 1147849200),
(22, 3, 987750000),
(18, 10, 1006848000),
(2, 7, 1270191600),
(6, 5, 1022569200),
(106, 15, 1119769200),
(28, 8, 1014883200),
(96, 8, 1283756400),
(75, 11, 1096009200),
(99, 1, 862038000),
(75, 9, 1077004800),
(103, 9, 922435200),
(20, 14, 1049356800),
(65, 8, 1042876800),
(113, 9, 1021359600),
(81, 1, 1380610800),
(5, 13, 1213081200),
(66, 2, 958978800),
(75, 8, 872319600),
(121, 2, 1276153200),
(40, 9, 834994800),
(42, 15, 1427007600),
(14, 11, 1282028400),
(102, 2, 1202371200),
(122, 9, 1417507200),
(79, 1, 1112428800),
(46, 12, 1425542400),
(3, 1, 1240383600),
(145, 14, 1058684400),
(121, 3, 835772400),
(11, 11, 1301122800),
(92, 2, 1432623600),
(138, 8, 1224399600),
(30, 14, 1423382400),
(66, 10, 1313996400),
(108, 1, 1145948400),
(17, 11, 1207897200),
(17, 7, 1038902400),
(94, 14, 1221202800),
(110, 1, 1388563200),
(108, 11, 1371366000),
(37, 10, 1165478400),
(75, 7, 1303369200),
(32, 10, 1386144000),
(130, 9, 1010736000),
(57, 11, 1370502000),
(6, 13, 944208000),
(96, 12, 1296979200),
(123, 4, 1087369200),
(37, 9, 907311600),
(24, 5, 1240815600),
(74, 4, 1265356800),
(144, 11, 1097391600),
(6, 4, 1425110400),
(82, 4, 1424419200),
(86, 2, 1416211200),
(84, 11, 1065250800),
(74, 11, 1411887600),
(13, 9, 915696000),
(121, 8, 903078000),
(101, 4, 955695600),
(144, 6, 1000796400),
(73, 14, 1324713600),
(128, 4, 1429772400),
(4, 8, 830415600),
(69, 7, 995958000),
(19, 13, 1304492400),
(118, 15, 1224399600),
(130, 14, 960534000),
(143, 10, 1303628400),
(145, 13, 848736000),
(98, 6, 1176188400),
(84, 9, 1087455600),
(134, 12, 927874800),
(139, 15, 1413961200),
(11, 4, 1370070000),
(115, 15, 846313200),
(72, 11, 1274684400),
(140, 12, 1247641200),
(107, 11, 1005120000),
(6, 14, 1162972800),
(119, 3, 1326700800),
(114, 9, 1207897200),
(74, 9, 859017600),
(70, 7, 1085468400),
(60, 9, 1046160000),
(151, 12, 1366959600),
(95, 3, 1237791600),
(97, 13, 1122188400),
(2, 6, 1387958400),
(67, 5, 1328083200),
(41, 6, 1423209600),
(50, 8, 1181545200),
(10, 14, 1125212400),
(60, 6, 1253170800),
(143, 5, 977558400),
(114, 8, 1205218800),
(33, 3, 945158400),
(52, 5, 1262332800),
(146, 11, 1256022000),
(107, 15, 1280991600),
(29, 15, 1345100400),
(142, 9, 1098687600),
(14, 5, 1101628800),
(26, 4, 1099900800),
(56, 10, 965890800),
(148, 7, 853142400),
(143, 9, 877158000),
(105, 6, 1326009600),
(43, 3, 1428562800),
(139, 7, 1290412800),
(144, 9, 1125903600),
(138, 5, 1045555200),
(4, 1, 968050800),
(123, 12, 1449993600),
(99, 1, 839142000),
(131, 1, 1149490800),
(71, 13, 1445842800),
(33, 10, 1339657200),
(107, 6, 900918000),
(25, 6, 994921200),
(15, 4, 1054710000),
(10, 7, 1447401600),
(3, 5, 930898800),
(27, 8, 1023001200),
(24, 6, 1384761600),
(24, 10, 851155200),
(142, 9, 1369638000),
(33, 15, 1340348400),
(140, 1, 1035442800),
(111, 10, 1273906800),
(102, 10, 927356400),
(66, 7, 880185600),
(115, 3, 1093158000),
(119, 4, 977212800),
(76, 13, 1222585200),
(69, 1, 1025679600),
(104, 14, 1057734000),
(33, 5, 955350000),
(147, 3, 1283497200),
(18, 12, 1206687600),
(62, 2, 868172400),
(104, 8, 962434800),
(60, 11, 1218783600),
(101, 9, 1161673200),
(90, 6, 1420099200),
(8, 14, 1334473200),
(121, 6, 1447228800),
(55, 13, 1242975600),
(80, 13, 1176966000),
(68, 15, 1116226800),
(104, 13, 1149922800),
(49, 3, 1242543600),
(60, 2, 958978800),
(123, 10, 894697200),
(119, 6, 1158217200),
(66, 10, 847353600),
(71, 10, 1165046400),
(65, 5, 1272265200),
(56, 10, 1081321200),
(87, 6, 1343026800),
(7, 8, 965977200),
(23, 2, 1099296000),
(62, 2, 913104000),
(8, 8, 1349334000),
(115, 6, 953971200),
(75, 6, 1059980400),
(73, 2, 1329984000),
(9, 9, 1182150000),
(108, 7, 1198656000),
(67, 15, 1402210800),
(151, 7, 969865200),
(38, 5, 1114239600),
(100, 12, 1129186800),
(108, 6, 1092553200),
(5, 10, 1441695600),
(128, 7, 1269068400),
(52, 13, 1003215600),
(99, 15, 1216969200),
(121, 6, 1337497200),
(117, 5, 887184000),
(143, 1, 1017734400),
(49, 11, 1182409200),
(80, 2, 881308800),
(5, 7, 881308800),
(75, 11, 1146034800),
(42, 14, 887443200),
(66, 12, 1354348800),
(21, 1, 981964800),
(30, 4, 1050044400),
(72, 5, 974102400),
(10, 5, 1334041200),
(137, 6, 1284274800),
(35, 2, 1437548400),
(75, 3, 1392537600),
(75, 5, 1353830400),
(130, 6, 1402729200),
(16, 12, 1293523200),
(59, 14, 1178953200),
(58, 5, 1245567600),
(98, 11, 1435474800),
(25, 12, 1231660800),
(146, 7, 844498800),
(23, 5, 1272438000),
(68, 5, 1141718400),
(55, 2, 1115017200),
(21, 3, 1017907200),
(47, 10, 1364454000),
(135, 13, 1065078000),
(11, 15, 933663600),
(119, 9, 1263715200),
(140, 15, 1291968000),
(38, 6, 1108454400),
(49, 3, 1056265200),
(12, 8, 1153551600),
(71, 2, 1368946800),
(125, 1, 1446624000),
(83, 11, 921916800),
(89, 3, 878544000),
(7, 15, 1123138800),
(26, 10, 1430031600);

