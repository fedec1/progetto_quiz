DROP TABLE IF EXISTS `nazioni`;

CREATE TABLE nazioni (
  id INT PRIMARY KEY,
  alpha2code VARCHAR(2) NOT NULL,
  alpha3code VARCHAR(3) NOT NULL,
  borders VARCHAR(255),
  capital VARCHAR(89) NOT NULL,
  demonym TEXT,
  flag VARCHAR(255),
  name VARCHAR(89) NOT NULL,
  nativeName TEXT,
  numericCode TEXT,
  population TEXT,
  region VARCHAR(89) NOT NULL,
  subregion TEXT,
  cioc TEXT,
  difficulty INT,
  translations TEXT
);

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE sessions (
	id INT PRIMARY KEY AUTO_INCREMENT,
	username VARCHAR(255) NOT NULL,
	type varchar(255) NOT NULL,
	score INT NOT NULL,
	difficulty INT not null
);

INSERT INTO `nazioni` VALUES (1,'AF','AFG','IRN,PAK,TKM,UZB,TJK,CHN','Kabul','Afghan','.\\bandiere-nazioni\\AF.svg','Afghanistan','افغانستان','004','38928341','Asia','Southern Asia','AFG',
2,'{}'); 
INSERT INTO `nazioni` VALUES (2,'AL','ALB','MNE,GRC,MKD,UNK','Tirana','Albanian','.\\bandiere-nazioni\\AL.svg','Albania','Shqipëria','008','2837743','Europe','Southern Europe','ALB',
1,'{}'); 
INSERT INTO `nazioni` VALUES (3,'DZ','DZA','TUN,LBY,NER,ESH,MRT,MLI,MAR','Algiers','Algerian','.\\bandiere-nazioni\\DZ.svg','Algeria','الجزائر','012','43851043','Africa','Northern Africa','ALG',
3,'{}'); 
INSERT INTO `nazioni` VALUES (4,'AO','AGO','COG,COD,ZMB,NAM','Luanda','Angolan','.\\bandiere-nazioni\\AO.svg','Angola','Angola','024','32866268','Africa','Middle Africa','ANG',
3,'{}'); 
INSERT INTO `nazioni` VALUES (5,'AR','ARG','BOL,BRA,CHL,PRY,URY','Buenos Aires','Argentinean','.\\bandiere-nazioni\\AR.svg','Argentina','Argentina','032','45376763','Americas','South America','ARG',
2,'{}'); 
INSERT INTO `nazioni` VALUES (6,'AM','ARM','AZE,GEO,IRN,TUR','Yerevan','Armenian','.\\bandiere-nazioni\\AM.svg','Armenia','Հայաստան','051','2963234','Asia','Western Asia','ARM',
3,'{}'); 
INSERT INTO `nazioni` VALUES (7,'AU','AUS','','Canberra','Australian','.\\bandiere-nazioni\\AU.svg','Australia','Australia','036','25687041','Oceania','Australia and New Zealand','AUS',
1,'{}'); 
INSERT INTO `nazioni` VALUES (8,'AT','AUT','CZE,DEU,HUN,ITA,LIE,SVK,SVN,CHE','Vienna','Austrian','.\\bandiere-nazioni\\AT.svg','Austria','Österreich','040','8917205','Europe','Western Europe','AUT',
1,'{}'); 
INSERT INTO `nazioni` VALUES (9,'AZ','AZE','ARM,GEO,IRN,RUS,TUR','Baku','Azerbaijani','.\\bandiere-nazioni\\AZ.svg','Azerbaijan','Azərbaycan','031','10110116','Asia','Western Asia','AZE',
3,'{}'); 
INSERT INTO `nazioni` VALUES (10,'BH','BHR','','Manama','Bahraini','.\\bandiere-nazioni\\BH.svg','Bahrain','‏البحرين','048','1701583','Asia','Western Asia','BRN',
3,'{}'); 
INSERT INTO `nazioni` VALUES (11,'BD','BGD','MMR,IND','Dhaka','Bangladeshi','.\\bandiere-nazioni\\BD.svg','Bangladesh','Bangladesh','050','164689383','Asia','Southern Asia','BAN',
3,'{}'); 
INSERT INTO `nazioni` VALUES (12,'BY','BLR','LVA,LTU,POL,RUS,UKR','Minsk','Belarusian','.\\bandiere-nazioni\\BY.svg','Belarus','Белару́сь','112','9398861','Europe','Eastern Europe','BLR',
2,'{}'); 
INSERT INTO `nazioni` VALUES (13,'BE','BEL','FRA,DEU,LUX,NLD','Brussels','Belgian','.\\bandiere-nazioni\\BE.svg','Belgium','België','056','11555997','Europe','Western Europe','BEL',
1,'{}'); 
INSERT INTO `nazioni` VALUES (14,'BZ','BLZ','GTM,MEX','Belmopan','Belizean','.\\bandiere-nazioni\\BZ.svg','Belize','Belize','084','397621','Americas','Central America','BIZ',
2,'{}'); 
INSERT INTO `nazioni` VALUES (15,'BJ','BEN','BFA,NER,NGA,TGO','Porto-Novo','Beninese','.\\bandiere-nazioni\\BJ.svg','Benin','Bénin','204','12123198','Africa','Western Africa','BEN',
3,'{}'); 
INSERT INTO `nazioni` VALUES (16,'BT','BTN','CHN,IND','Thimphu','Bhutanese','.\\bandiere-nazioni\\BT.svg','Bhutan','ʼbrug-yul','064','771612','Asia','Southern Asia','BHU',
3,'{}'); 
INSERT INTO `nazioni` VALUES (17,'BO','BOL','ARG,BRA,CHL,PRY,PER','Sucre','Bolivian','.\\bandiere-nazioni\\BO.svg','Bolivia (Plurinational State of)','Bolivia','068','11673029','Americas','South America','BOL',
2,'{}'); 
INSERT INTO `nazioni` VALUES (18,'BA','BIH','HRV,MNE,SRB','Sarajevo','Bosnian, Herzegovinian','.\\bandiere-nazioni\\BA.svg','Bosnia and Herzegovina','Bosna i Hercegovina','070','3280815','Europe','Southern Europe','BIH',
1,'{}'); 
INSERT INTO `nazioni` VALUES (19,'BW','BWA','NAM,ZAF,ZMB,ZWE','Gaborone','Motswana','.\\bandiere-nazioni\\BW.svg','Botswana','Botswana','072','2351625','Africa','Southern Africa','BOT',
3,'{}'); 
INSERT INTO `nazioni` VALUES (20,'BR','BRA','ARG,BOL,COL,FRA,GUF,GUY,PRY,PER,SUR,URY,VEN','Brasília','Brazilian','.\\bandiere-nazioni\\BR.svg','Brazil','Brasil','076','212559409','Americas','South America','BRA',
2,'{}'); 
INSERT INTO `nazioni` VALUES (21,'BG','BGR','GRC,MKD,ROU,SRB,TUR','Sofia','Bulgarian','.\\bandiere-nazioni\\BG.svg','Bulgaria','България','100','6927288','Europe','Eastern Europe','BUL',
1,'{}'); 
INSERT INTO `nazioni` VALUES (22,'BF','BFA','BEN,CIV,GHA,MLI,NER,TGO','Ouagadougou','Burkinabe','.\\bandiere-nazioni\\BF.svg','Burkina Faso','Burkina Faso','854','20903278','Africa','Western Africa','BUR',
3,'{}'); 
INSERT INTO `nazioni` VALUES (23,'BI','BDI','COD,RWA,TZA','Gitega','Burundian','.\\bandiere-nazioni\\BI.svg','Burundi','Burundi','108','11890781','Africa','Eastern Africa','BDI',
3,'{}'); 
INSERT INTO `nazioni` VALUES (24,'KH','KHM','LAO,THA,VNM','Phnom Penh','Cambodian','.\\bandiere-nazioni\\KH.svg','Cambodia','Kâmpŭchéa','116','16718971','Asia','South-Eastern Asia','CAM',
3,'{}'); 
INSERT INTO `nazioni` VALUES (25,'CM','CMR','CAF,TCD,COG,GNQ,GAB,NGA','Yaoundé','Cameroonian','.\\bandiere-nazioni\\CM.svg','Cameroon','Cameroon','120','26545864','Africa','Middle Africa','CMR',
3,'{}'); 
INSERT INTO `nazioni` VALUES (26,'CA','CAN','USA','Ottawa','Canadian','.\\bandiere-nazioni\\CA.svg','Canada','Canada','124','38005238','Americas','Northern America','CAN',
2,'{}'); 
INSERT INTO `nazioni` VALUES (27,'CV','CPV','','Praia','Cape Verdian','.\\bandiere-nazioni\\CV.svg','Cabo Verde','Cabo Verde','132','555988','Africa','Western Africa','CPV',
3,'{}'); 
INSERT INTO `nazioni` VALUES (28,'CF','CAF','CMR,TCD,COD,COG,SSD,SDN','Bangui','Central African','.\\bandiere-nazioni\\CF.svg','Central African Republic','Ködörösêse tî Bêafrîka','140','4829764','Africa','Middle Africa','CAF',
3,'{}'); 
INSERT INTO `nazioni` VALUES	(29,'TD', 'TCD', 'CMR,CAF,LBY,NER,NGA,SDN', 'N''Djamena', 'Chadian', '.\\bandiere-nazioni\\TD.svg', 'Chad', 'Tchad', '148', '16425859', 'Africa', 'Middle Africa', 'CHA',
3,'{}'); 
INSERT INTO `nazioni` VALUES (30,'CL','CHL','ARG,BOL,PER','Santiago','Chilean','.\\bandiere-nazioni\\CL.svg','Chile','Chile','152','19116209','Americas','South America','CHI',
2,'{}'); 
INSERT INTO `nazioni` VALUES (31,'CN','CHN','AFG,BTN,MMR,HKG,IND,KAZ,PRK,KGZ,LAO,MAC,MNG,PAK,RUS,TJK,VNM','Beijing','Chinese','.\\bandiere-nazioni\\CN.svg','China','中国','156','1402112000','Asia','Eastern Asia','CHN',
1,'{}'); 
INSERT INTO `nazioni` VALUES (32,'CO','COL','BRA,ECU,PAN,PER,VEN','Bogotá','Colombian','.\\bandiere-nazioni\\CO.svg','Colombia','Colombia','170','50882884','Americas','South America','COL',
2,'{}'); 
INSERT INTO `nazioni` VALUES (33,'KM','COM','','Moroni','Comoran','.\\bandiere-nazioni\\KM.svg','Comoros','Komori','174','869595','Africa','Eastern Africa','COM',
3,'{}'); 
INSERT INTO `nazioni` VALUES (34,'CG','COG','AGO,CMR,CAF,COD,GAB','Brazzaville','Congolese','.\\bandiere-nazioni\\CG.svg','Congo','République du Congo','178','5518092','Africa','Middle Africa','CGO',
3,'{}'); 
INSERT INTO `nazioni` VALUES (35,'CR','CRI','NIC,PAN','San José','Costa Rican','.\\bandiere-nazioni\\CR.svg','Costa Rica','Costa Rica','188','5094114','Americas','Central America','CRC',
2,'{}'); 
INSERT INTO `nazioni` VALUES (36,'HR','HRV','BIH,HUN,MNE,SRB,SVN','Zagreb','Croatian','.\\bandiere-nazioni\\HR.svg','Croatia','Hrvatska','191','4047200','Europe','Southern Europe','CRO',
1,'{}'); 
INSERT INTO `nazioni` VALUES (37,'CU','CUB','','Havana','Cuban','.\\bandiere-nazioni\\CU.svg','Cuba','Cuba','192','11326616','Americas','Caribbean','CUB',
2,'{}'); 
INSERT INTO `nazioni` VALUES (38,'CY','CYP','','Nicosia','Cypriot','.\\bandiere-nazioni\\CY.svg','Cyprus','Κύπρος','196','1207361','Europe','Southern Europe','CYP',
2,'{}'); 
INSERT INTO `nazioni` VALUES (39,'CZ','CZE','AUT,DEU,POL,SVK','Prague','Czech','.\\bandiere-nazioni\\CZ.svg','Czech Republic','Česká republika','203','10698896','Europe','Eastern Europe','CZE',
1,'{}'); 
INSERT INTO `nazioni` VALUES (40,'DK','DNK','DEU','Copenhagen','Danish','.\\bandiere-nazioni\\DK.svg','Denmark','Danmark','208','5831404','Europe','Northern Europe','DEN',
1,'{}'); 
INSERT INTO `nazioni` VALUES (41,'DJ','DJI','ERI,ETH,SOM','Djibouti','Djibouti','.\\bandiere-nazioni\\DJ.svg','Djibouti','Djibouti','262','988002','Africa','Eastern Africa','DJI',
3,'{}'); 
INSERT INTO `nazioni` VALUES (42,'DO','DOM','HTI','Santo Domingo','Dominican','.\\bandiere-nazioni\\DO.svg','Dominican Republic','República Dominicana','214','10847904','Americas','Caribbean','DOM',
2,'{}'); 
INSERT INTO `nazioni` VALUES (43,'EC','ECU','COL,PER','Quito','Ecuadorean','.\\bandiere-nazioni\\EC.svg','Ecuador','Ecuador','218','17643060','Americas','South America','ECU',
3,'{}'); 
INSERT INTO `nazioni` VALUES (44,'EG','EGY','ISR,LBY,SDN','Cairo','Egyptian','.\\bandiere-nazioni\\EG.svg','Egypt','مصر‎','818','102334403','Africa','Northern Africa','EGY',
1,'{}'); 
INSERT INTO `nazioni` VALUES (45,'SV','SLV','GTM,HND','San Salvador','Salvadoran','.\\bandiere-nazioni\\SV.svg','El Salvador','El Salvador','222','6486201','Americas','Central America','ESA',
2,'{}'); 
INSERT INTO `nazioni` VALUES (46,'GQ','GNQ','CMR,GAB','Malabo','Equatorial Guinean','.\\bandiere-nazioni\\GQ.svg','Equatorial Guinea','Guinea Ecuatorial','226','1402985','Africa','Middle Africa','GEQ',
3,'{}'); 
INSERT INTO `nazioni` VALUES (47,'EE','EST','LVA,RUS','Tallinn','Estonian','.\\bandiere-nazioni\\EE.svg','Estonia','Eesti','233','1331057','Europe','Northern Europe','EST',
1,'{}'); 
INSERT INTO `nazioni` VALUES (48,'ET','ETH','DJI,ERI,KEN,SOM,SSD,SDN','Addis Ababa','Ethiopian','.\\bandiere-nazioni\\ET.svg','Ethiopia','ኢትዮጵያ','231','114963583','Africa','Eastern Africa','ETH',
3,'{}'); 
INSERT INTO `nazioni` VALUES (49,'FJ','FJI','','Suva','Fijian','.\\bandiere-nazioni\\FJ.svg','Fiji','Fiji','242','896444','Oceania','Melanesia','FIJ',
1,'{}'); 
INSERT INTO `nazioni` VALUES (50,'FI','FIN','NOR,SWE,RUS','Helsinki','Finnish','.\\bandiere-nazioni\\FI.svg','Finland','Suomi','246','5530719','Europe','Northern Europe','FIN',
1,'{}'); 
INSERT INTO `nazioni` VALUES (51,'FR','FRA','AND,BEL,DEU,ITA,LUX,MCO,ESP,CHE','Paris','French','.\\bandiere-nazioni\\FR.svg','France','France','250','67391582','Europe','Western Europe','FRA',
1,'{}'); 
INSERT INTO `nazioni` VALUES (52,'GA','GAB','CMR,COG,GNQ','Libreville','Gabonese','.\\bandiere-nazioni\\GA.svg','Gabon','Gabon','266','2225728','Africa','Middle Africa','GAB',
3,'{}'); 
INSERT INTO `nazioni` VALUES (53,'GE','GEO','ARM,AZE,RUS,TUR','Tbilisi','Georgian','.\\bandiere-nazioni\\GE.svg','Georgia','საქართველო','268','3714000','Asia','Western Asia','GEO',
3,'{}'); 
INSERT INTO `nazioni` VALUES (54,'DE','DEU','AUT,BEL,CZE,DNK,FRA,LUX,NLD,POL,CHE','Berlin','German','.\\bandiere-nazioni\\DE.svg','Germany','Deutschland','276','83240525','Europe','Western Europe','GER',
1,'{}'); 
INSERT INTO `nazioni` VALUES (55,'GH','GHA','BFA,CIV,TGO','Accra','Ghanaian','.\\bandiere-nazioni\\GH.svg','Ghana','Ghana','288','31072945','Africa','Western Africa','GHA',
3,'{}'); 
INSERT INTO `nazioni` VALUES (56,'GR','GRC','ALB,BGR,TUR,MKD','Athens','Greek','.\\bandiere-nazioni\\GR.svg','Greece','Ελλάδα','300','10715549','Europe','Southern Europe','GRE',
1,'{}'); 
INSERT INTO `nazioni` VALUES (57,'GT','GTM','BLZ,SLV,HND,MEX','Guatemala City','Guatemalan','.\\bandiere-nazioni\\GT.svg','Guatemala','Guatemala','320','16858333','Americas','Central America','GUA',
2,'{}'); 
INSERT INTO `nazioni` VALUES (58,'GN','GIN','CIV,GNB,LBR,MLI,SEN,SLE','Conakry','Guinean','.\\bandiere-nazioni\\GN.svg','Guinea','Guinée','324','13132792','Africa','Western Africa','GUI',
3,'{}'); 
INSERT INTO `nazioni` VALUES (59,'GW','GNB','GIN,SEN','Bissau','Guinea-Bissauan','.\\bandiere-nazioni\\GW.svg','Guinea-Bissau','Guiné-Bissau','624','1967998','Africa','Western Africa','GBS',
3,'{}'); 
INSERT INTO `nazioni` VALUES (60,'GY','GUY','BRA,SUR,VEN','Georgetown','Guyanese','.\\bandiere-nazioni\\GY.svg','Guyana','Guyana','328','786559','Americas','South America','GUY',
2,'{}'); 
INSERT INTO `nazioni` VALUES (61,'HT','HTI','DOM','Port-au-Prince','Haitian','.\\bandiere-nazioni\\HT.svg','Haiti','Haïti','332','11402533','Americas','Caribbean','HAI',
3,'{}'); 
INSERT INTO `nazioni` VALUES (62,'VA','VAT','ITA','Vatican City','','.\\bandiere-nazioni\\VA.svg','Vatican City','Città del Vaticano','336','451','Europe','Southern Europe','',
1,'{}'); 
INSERT INTO `nazioni` VALUES (63,'HN','HND','GTM,SLV,NIC','Tegucigalpa','Honduran','.\\bandiere-nazioni\\HN.svg','Honduras','Honduras','340','9904608','Americas','Central America','HON',
3,'{}'); 
INSERT INTO `nazioni` VALUES (64,'HK','HKG','CHN','City of Victoria','Chinese','.\\bandiere-nazioni\\HK.svg','Hong Kong','香港','344','7481800','Asia','Eastern Asia','HKG',
2,'{}'); 
INSERT INTO `nazioni` VALUES (65,'HU','HUN','AUT,HRV,ROU,SRB,SVK,SVN,UKR','Budapest','Hungarian','.\\bandiere-nazioni\\HU.svg','Hungary','Magyarország','348','9749763','Europe','Eastern Europe','HUN',
1,'{}'); 
INSERT INTO `nazioni` VALUES (66,'IS','ISL','','Reykjavík','Icelander','.\\bandiere-nazioni\\IS.svg','Iceland','Ísland','352','366425','Europe','Northern Europe','ISL',
1,'{}'); 
INSERT INTO `nazioni` VALUES (67,'IN','IND','AFG,BGD,BTN,MMR,CHN,NPL,PAK,LKA','New Delhi','Indian','.\\bandiere-nazioni\\IN.svg','India','भारत','356','1380004385','Asia','Southern Asia','IND',
1,'{}'); 
INSERT INTO `nazioni` VALUES (68,'ID','IDN','TLS,MYS,PNG','Jakarta','Indonesian','.\\bandiere-nazioni\\ID.svg','Indonesia','Indonesia','360','273523621','Asia','South-Eastern Asia','INA',
2,'{}'); 
INSERT INTO `nazioni` VALUES (69,'CI','CIV','BFA,GHA,GIN,LBR,MLI','Yamoussoukro','Ivorian','.\\bandiere-nazioni\\CI.svg','Côte d''Ivoire','Côte d''Ivoire','384','26378275','Africa','Western Africa','CIV',
3,'{}'); 
INSERT INTO `nazioni` VALUES (70,'IR','IRN','AFG,ARM,AZE,IRQ,PAK,TUR,TKM','Tehran','Iranian','.\\bandiere-nazioni\\IR.svg','Iran (Islamic Republic of)','ایران','364','83992953','Asia','Southern Asia','IRI',
2,'{}'); 
INSERT INTO `nazioni` VALUES (71,'IQ','IRQ','IRN,JOR,KWT,SAU,SYR,TUR','Baghdad','Iraqi','.\\bandiere-nazioni\\IQ.svg','Iraq','العراق','368','40222503','Asia','Western Asia','IRQ',
2,'{}'); 
INSERT INTO `nazioni` VALUES (72,'IE','IRL','GBR','Dublin','Irish','.\\bandiere-nazioni\\IE.svg','Ireland','Éire','372','4994724','Europe','Northern Europe','IRL',
1,'{}'); 
INSERT INTO `nazioni` VALUES (73,'IL','ISR','EGY,JOR,LBN,SYR','Jerusalem','Israeli','.\\bandiere-nazioni\\IL.svg','Israel','יִשְׂרָאֵל','376','9216900','Asia','Western Asia','ISR',
1,'{}'); 
INSERT INTO `nazioni` VALUES (74,'IT','ITA','AUT,FRA,SMR,SVN,CHE,VAT','Rome','Italian','.\\bandiere-nazioni\\IT.svg','Italy','Italia','380','59554023','Europe','Southern Europe','ITA',
1,'{}'); 
INSERT INTO `nazioni` VALUES (75,'JM','JAM','','Kingston','Jamaican','.\\bandiere-nazioni\\JM.svg','Jamaica','Jamaica','388','2961161','Americas','Caribbean','JAM',
2,'{}'); 
INSERT INTO `nazioni` VALUES (76,'JP','JPN','','Tokyo','Japanese','.\\bandiere-nazioni\\JP.svg','Japan','日本','392','125836021','Asia','Eastern Asia','JPN',
1,'{}'); 
INSERT INTO `nazioni` VALUES (77,'JO','JOR','IRQ,ISR,SAU,SYR','Amman','Jordanian','.\\bandiere-nazioni\\JO.svg','Jordan','الأردن','400','10203140','Asia','Western Asia','JOR',
3,'{}'); 
INSERT INTO `nazioni` VALUES (78,'KZ','KAZ','CHN,KGZ,RUS,TKM,UZB','Nur-Sultan','Kazakhstani','.\\bandiere-nazioni\\KZ.svg','Kazakhstan','Қазақстан','398','18754440','Asia','Central Asia','KAZ',
3,'{}'); 
INSERT INTO `nazioni` VALUES (79,'KE','KEN','ETH,SOM,SSD,TZA,UGA','Nairobi','Kenyan','.\\bandiere-nazioni\\KE.svg','Kenya','Kenya','404','53771300','Africa','Eastern Africa','KEN',
3,'{}'); 
INSERT INTO `nazioni` VALUES (80,'KW','KWT','IRQ,SAU','Kuwait City','Kuwaiti','.\\bandiere-nazioni\\KW.svg','Kuwait','الكويت','414','4270563','Asia','Western Asia','KUW',
2,'{}'); 
INSERT INTO `nazioni` VALUES (81,'KG','KGZ','CHN,KAZ,TJK,UZB','Bishkek','Kirghiz','.\\bandiere-nazioni\\KG.svg','Kyrgyzstan','Кыргызстан','417','6591600','Asia','Central Asia','KGZ',
3,'{}'); 
INSERT INTO `nazioni` VALUES (82,'LA','LAO','MMR,KHM,CHN,THA,VNM','Vientiane','Laotian','.\\bandiere-nazioni\\LA.svg','Lao People''s Democratic Republic','ສປປລາວ','418','7275556','Asia','South-Eastern Asia','LAO',
3,'{}'); 
INSERT INTO `nazioni` VALUES (83,'LV','LVA','BLR,EST,LTU,RUS','Riga','Latvian','.\\bandiere-nazioni\\LV.svg','Latvia','Latvija','428','1901548','Europe','Northern Europe','LAT',
1,'{}'); 
INSERT INTO `nazioni` VALUES (84,'LB','LBN','ISR,SYR','Beirut','Lebanese','.\\bandiere-nazioni\\LB.svg','Lebanon','لبنان','422','6825442','Asia','Western Asia','LIB',
2,'{}'); 
INSERT INTO `nazioni` VALUES (85,'LS','LSO','ZAF','Maseru','Mosotho','.\\bandiere-nazioni\\LS.svg','Lesotho','Lesotho','426','2142252','Africa','Southern Africa','LES',
3,'{}'); 
INSERT INTO `nazioni` VALUES (86,'LR','LBR','GIN,CIV,SLE','Monrovia','Liberian','.\\bandiere-nazioni\\LR.svg','Liberia','Liberia','430','5057677','Africa','Western Africa','LBR',
3,'{}'); 
INSERT INTO `nazioni` VALUES (87,'LY','LBY','DZA,TCD,EGY,NER,SDN,TUN','Tripoli','Libyan','.\\bandiere-nazioni\\LY.svg','Libya','‏ليبيا','434','6871287','Africa','Northern Africa','LBA',
3,'{}'); 
INSERT INTO `nazioni` VALUES (88,'LT','LTU','BLR,LVA,POL,RUS','Vilnius','Lithuanian','.\\bandiere-nazioni\\LT.svg','Lithuania','Lietuva','440','2794700','Europe','Northern Europe','LTU',
1,'{}'); 
INSERT INTO `nazioni` VALUES (89,'LU','LUX','BEL,FRA,DEU','Luxembourg','Luxembourger','.\\bandiere-nazioni\\LU.svg','Luxembourg','Lëtzebuerg','442','632275','Europe','Western Europe','LUX',
1,'{}'); 
INSERT INTO `nazioni` VALUES (90,'MK','MKD','ALB,BGR,GRC,UNK,SRB','Skopje','Macedonian','.\\bandiere-nazioni\\MK.svg','North Macedonia','северна Македонија','807','2083380','Europe','Southern Europe','MKD',
1,'{}'); 
INSERT INTO `nazioni` VALUES (91,'MG','MDG','','Antananarivo','Malagasy','.\\bandiere-nazioni\\MG.svg','Madagascar','Madagasikara','450','27691019','Africa','Eastern Africa','MAD',
3,'{}'); 
INSERT INTO `nazioni` VALUES (92,'MW','MWI','MOZ,TZA,ZMB','Lilongwe','Malawian','.\\bandiere-nazioni\\MW.svg','Malawi','Malawi','454','19129955','Africa','Eastern Africa','MAW',
3,'{}'); 
INSERT INTO `nazioni` VALUES (93,'MY','MYS','BRN,IDN,THA','Kuala Lumpur','Malaysian','.\\bandiere-nazioni\\MY.svg','Malaysia','Malaysia','458','32365998','Asia','South-Eastern Asia','MAS',
2,'{}'); 
INSERT INTO `nazioni` VALUES (94,'MV','MDV','','Malé','Maldivan','.\\bandiere-nazioni\\MV.svg','Maldives','Maldives','462','540542','Asia','Southern Asia','MDV',
2,'{}'); 
INSERT INTO `nazioni` VALUES (95,'ML','MLI','DZA,BFA,GIN,CIV,MRT,NER,SEN','Bamako','Malian','.\\bandiere-nazioni\\ML.svg','Mali','Mali','466','20250834','Africa','Western Africa','MLI',
3,'{}'); 
INSERT INTO `nazioni` VALUES (96,'MT','MLT','','Valletta','Maltese','.\\bandiere-nazioni\\MT.svg','Malta','Malta','470','525285','Europe','Southern Europe','MLT',
1,'{}'); 
INSERT INTO `nazioni` VALUES (97,'MR','MRT','DZA,MLI,SEN,ESH','Nouakchott','Mauritanian','.\\bandiere-nazioni\\MR.svg','Mauritania','موريتانيا','478','4649660','Africa','Western Africa','MTN',
3,'{}'); 
INSERT INTO `nazioni` VALUES (98,'MU','MUS','','Port Louis','Mauritian','.\\bandiere-nazioni\\MU.svg','Mauritius','Maurice','480','1265740','Africa','Eastern Africa','MRI',
3,'{}'); 
INSERT INTO `nazioni` VALUES (99,'MX','MEX','BLZ,GTM,USA','Mexico City','Mexican','.\\bandiere-nazioni\\MX.svg','Mexico','México','484','128932753','Americas','Central America','MEX',
1,'{}'); 
INSERT INTO `nazioni` VALUES (100,'MD','MDA','ROU,UKR','Chișinău','Moldovan','.\\bandiere-nazioni\\MD.svg','Moldova (Republic of)','Moldova','498','2617820','Europe','Eastern Europe','MDA',
2,'{}');
INSERT INTO `nazioni` VALUES (101,'MN','MNG','CHN,RUS','Ulan Bator','Mongolian','.\\bandiere-nazioni\\MN.svg','Mongolia','Монгол улс','496','3278292','Asia','Eastern Asia','MGL',
2,'{}'); 
INSERT INTO `nazioni` VALUES (102,'ME','MNE','ALB,BIH,HRV,UNK,SRB','Podgorica','Montenegrin','.\\bandiere-nazioni\\ME.svg','Montenegro','Црна Гора','499','621718','Europe','Southern Europe','MNE',
1,'{}'); 
INSERT INTO `nazioni` VALUES (103,'MA','MAR','DZA,ESH,ESP','Rabat','Moroccan','.\\bandiere-nazioni\\MA.svg','Morocco','المغرب','504','36910558','Africa','Northern Africa','MAR',
2,'{}'); 
INSERT INTO `nazioni` VALUES (104,'MZ','MOZ','MWI,ZAF,SWZ,TZA,ZMB,ZWE','Maputo','Mozambican','.\\bandiere-nazioni\\MZ.svg','Mozambique','Moçambique','508','31255435','Africa','Eastern Africa','MOZ',
3,'{}'); 
INSERT INTO `nazioni` VALUES (105,'MM','MMR','BGD,CHN,IND,LAO,THA','Naypyidaw','Burmese','.\\bandiere-nazioni\\MM.svg','Myanmar','Myanma','104','54409794','Asia','South-Eastern Asia','MYA',
2,'{}'); 
INSERT INTO `nazioni` VALUES (106,'NA','NAM','AGO,BWA,ZAF,ZMB','Windhoek','Namibian','.\\bandiere-nazioni\\NA.svg','Namibia','Namibia','516','2540916','Africa','Southern Africa','NAM',
3,'{}'); 
INSERT INTO `nazioni` VALUES (107,'NP','NPL','CHN,IND','Kathmandu','Nepalese','.\\bandiere-nazioni\\NP.svg','Nepal','नेपाल','524','29136808','Asia','Southern Asia','NEP',
2,'{}'); 
INSERT INTO `nazioni` VALUES (108,'NL','NLD','BEL,DEU','Amsterdam','Dutch','.\\bandiere-nazioni\\NL.svg','Netherlands','Nederland','528','17441139','Europe','Western Europe','NED',
1,'{}'); 
INSERT INTO `nazioni` VALUES (109,'NZ','NZL','','Wellington','New Zealander','.\\bandiere-nazioni\\NZ.svg','New Zealand','New Zealand','554','5084300','Oceania','Australia and New Zealand','NZL',
1,'{}'); 
INSERT INTO `nazioni` VALUES (110,'NI','NIC','CRI,HND','Managua','Nicaraguan','.\\bandiere-nazioni\\NI.svg','Nicaragua','Nicaragua','558','6624554','Americas','Central America','NCA',
2,'{}'); 
INSERT INTO `nazioni` VALUES (111,'NE','NER','DZA,BEN,BFA,TCD,LBY,MLI,NGA','Niamey','Nigerien','.\\bandiere-nazioni\\NE.svg','Niger','Niger','562','24206636','Africa','Western Africa','NIG',
3,'{}'); 
INSERT INTO `nazioni` VALUES (112,'NG','NGA','BEN,CMR,TCD,NER','Abuja','Nigerian','.\\bandiere-nazioni\\NG.svg','Nigeria','Nigeria','566','206139587','Africa','Western Africa','NGR',
3,'{}'); 
INSERT INTO `nazioni` VALUES (113,'KP','PRK','CHN,KOR,RUS','Pyongyang','North Korean','.\\bandiere-nazioni\\KP.svg','Korea (Democratic People''s Republic of)','북한','408','25778815','Asia','Eastern Asia','PRK',
2,'{}'); 
INSERT INTO `nazioni` VALUES (114,'NO','NOR','FIN,SWE,RUS','Oslo','Norwegian','.\\bandiere-nazioni\\NO.svg','Norway','Norge','578','5379475','Europe','Northern Europe','NOR',
1,'{}'); 
INSERT INTO `nazioni` VALUES (115,'OM','OMN','SAU,ARE,YEM','Muscat','Omani','.\\bandiere-nazioni\\OM.svg','Oman','عمان','512','5106622','Asia','Western Asia','OMA',
2,'{}'); 
INSERT INTO `nazioni` VALUES (116,'PK','PAK','AFG,CHN,IND,IRN','Islamabad','Pakistani','.\\bandiere-nazioni\\PK.svg','Pakistan','Pakistan','586','220892331','Asia','Southern Asia','PAK',
2,'{}'); 
INSERT INTO `nazioni` VALUES (117,'PA','PAN','COL,CRI','Panama City','Panamanian','.\\bandiere-nazioni\\PA.svg','Panama','Panamá','591','4314768','Americas','Central America','PAN',
2,'{}'); 
INSERT INTO `nazioni` VALUES (118,'PG','PNG','IDN','Port Moresby','Papua New Guinean','.\\bandiere-nazioni\\PG.svg','Papua New Guinea','Papua Niugini','598','8947027','Oceania','Melanesia','PNG',
3,'{}'); 
INSERT INTO `nazioni` VALUES (119,'PY','PRY','ARG,BOL,BRA','Asunción','Paraguayan','.\\bandiere-nazioni\\PY.svg','Paraguay','Paraguay','600','7132530','Americas','South America','PAR',
3,'{}'); 
INSERT INTO `nazioni` VALUES (120,'PE','PER','BOL,BRA,CHL,COL,ECU','Lima','Peruvian','.\\bandiere-nazioni\\PE.svg','Peru','Perú','604','32971846','Americas','South America','PER',
2,'{}'); 
INSERT INTO `nazioni` VALUES (121,'PH','PHL','','Manila','Filipino','.\\bandiere-nazioni\\PH.svg','Philippines','Pilipinas','608','109581085','Asia','South-Eastern Asia','PHI',
2,'{}'); 
INSERT INTO `nazioni` VALUES (122,'PL','POL','BLR,CZE,DEU,LTU,RUS,SVK,UKR','Warsaw','Polish','.\\bandiere-nazioni\\PL.svg','Poland','Polska','616','37950802','Europe','Eastern Europe','POL',
1,'{}'); 
INSERT INTO `nazioni` VALUES (123,'PT','PRT','ESP','Lisbon','Portuguese','.\\bandiere-nazioni\\PT.svg','Portugal','Portugal','620','10305564','Europe','Southern Europe','POR',
1,'{}'); 
INSERT INTO `nazioni` VALUES (124,'QA','QAT','SAU','Doha','Qatari','.\\bandiere-nazioni\\QA.svg','Qatar','قطر','634','2881060','Asia','Western Asia','QAT',
2,'{}'); 
INSERT INTO `nazioni` VALUES (125,'RO','ROU','BGR,HUN,MDA,SRB,UKR','Bucharest','Romanian','.\\bandiere-nazioni\\RO.svg','Romania','România','642','19286123','Europe','Eastern Europe','ROU',
1,'{}'); 
INSERT INTO `nazioni` VALUES (126,'RU','RUS','AZE,BLR,CHN,EST,FIN,GEO,KAZ,PRK,LVA,LTU,MNG,NOR,POL,UKR','Moscow','Russian','.\\bandiere-nazioni\\RU.svg','Russian Federation','Россия','643','144104080','Europe','Eastern Europe','RUS',
1,'{}'); 
INSERT INTO `nazioni` VALUES (127,'RW','RWA','BDI,COD,TZA,UGA','Kigali','Rwandan','.\\bandiere-nazioni\\RW.svg','Rwanda','Rwanda','646','12952209','Africa','Eastern Africa','RWA',
3,'{}'); 
INSERT INTO `nazioni` VALUES (128,'LC','LCA','','Castries','Saint Lucian','.\\bandiere-nazioni\\LC.svg','Saint Lucia','Saint Lucia','662','183629','Americas','Caribbean','LCA',
3,'{}'); 
INSERT INTO `nazioni` VALUES (129,'ST','STP','','São Tomé','Sao Tomean','.\\bandiere-nazioni\\ST.svg','Sao Tome and Principe','São Tomé e Príncipe','678','219161','Africa','Middle Africa','STP',
3,'{}'); 
INSERT INTO `nazioni` VALUES (130,'SA','SAU','IRQ,JOR,KWT,OMN,QAT,ARE,YEM','Riyadh','Saudi Arabian','.\\bandiere-nazioni\\SA.svg','Saudi Arabia','العربية السعودية','682','34813867','Asia','Western Asia','KSA',
2,'{}'); 
INSERT INTO `nazioni` VALUES (131,'SN','SEN','GMB,GIN,GNB,MLI,MRT','Dakar','Senegalese','.\\bandiere-nazioni\\SN.svg','Senegal','Sénégal','686','16743930','Africa','Western Africa','SEN',
3,'{}'); 
INSERT INTO `nazioni` VALUES (132,'RS','SRB','BIH,BGR,HRV,HUN,UNK,MKD,MNE,ROU','Belgrade','Serbian','.\\bandiere-nazioni\\RS.svg','Serbia','Србија','688','6908224','Europe','Southern Europe','SRB',
1,'{}'); 
INSERT INTO `nazioni` VALUES (133,'SC','SYC','','Victoria','Seychellois','.\\bandiere-nazioni\\SC.svg','Seychelles','Seychelles','690','98462','Africa','Eastern Africa','SEY',
3,'{}'); 
INSERT INTO `nazioni` VALUES (134,'SL','SLE','GIN,LBR','Freetown','Sierra Leonean','.\\bandiere-nazioni\\SL.svg','Sierra Leone','Sierra Leone','694','7976985','Africa','Western Africa','SLE',
3,'{}'); 
INSERT INTO `nazioni` VALUES (135,'SG','SGP','','Singapore','Singaporean','.\\bandiere-nazioni\\SG.svg','Singapore','Singapore','702','5685807','Asia','South-Eastern Asia','SIN',
2,'{}'); 
INSERT INTO `nazioni` VALUES (136,'SK','SVK','AUT,CZE,HUN,POL,UKR','Bratislava','Slovak','.\\bandiere-nazioni\\SK.svg','Slovakia','Slovensko','703','5458827','Europe','Eastern Europe','SVK',
1,'{}'); 
INSERT INTO `nazioni` VALUES (137,'SI','SVN','AUT,HRV,ITA,HUN','Ljubljana','Slovene','.\\bandiere-nazioni\\SI.svg','Slovenia','Slovenija','705','2100126','Europe','Southern Europe','SLO',
1,'{}'); 
INSERT INTO `nazioni` VALUES (138,'SO','SOM','DJI,ETH,KEN','Mogadishu','Somali','.\\bandiere-nazioni\\SO.svg','Somalia','Soomaaliya','706','15893219','Africa','Eastern Africa','SOM',
3,'{}'); 
INSERT INTO `nazioni` VALUES (139,'ZA','ZAF','BWA,LSO,MOZ,NAM,SWZ,ZWE','Pretoria','South African','.\\bandiere-nazioni\\ZA.svg','South Africa','South Africa','710','59308690','Africa','Southern Africa','RSA',
3,'{}'); 
INSERT INTO `nazioni` VALUES (140,'KR','KOR','PRK','Seoul','South Korean','.\\bandiere-nazioni\\KR.svg','Korea (Republic of)','대한민국','410','51780579','Asia','Eastern Asia','KOR',
2,'{}'); 
INSERT INTO `nazioni` VALUES (141,'SS','SSD','CAF,COD,ETH,KEN,SDN,UGA','Juba','South Sudanese','.\\bandiere-nazioni\\SS.svg','South Sudan','South Sudan','728','11193729','Africa','Middle Africa','',
3,'{}'); 
INSERT INTO `nazioni` VALUES (142,'ES','ESP','AND,FRA,GIB,PRT,MAR','Madrid','Spanish','.\\bandiere-nazioni\\ES.svg','Spain','España','724','47351567','Europe','Southern Europe','ESP',
1,'{}'); 
INSERT INTO `nazioni` VALUES (143,'LK','LKA','IND','Sri Jayawardenepura Kotte','Sri Lankan','.\\bandiere-nazioni\\LK.svg','Sri Lanka','śrī laṃkāva','144','21919000','Asia','Southern Asia','SRI',
2,'{}'); 
INSERT INTO `nazioni` VALUES (144,'SD','SDN','CAF,TCD,EGY,ERI,ETH,LBY,SSD','Khartoum','Sudanese','.\\bandiere-nazioni\\SD.svg','Sudan','السودان','729','43849269','Africa','Northern Africa','SUD',
3,'{}'); 
INSERT INTO `nazioni` VALUES (145,'SR','SUR','BRA,GUF,FRA,GUY','Paramaribo','Surinamer','.\\bandiere-nazioni\\SR.svg','Suriname','Suriname','740','586634','Americas','South America','SUR',
3,'{}'); 
INSERT INTO `nazioni` VALUES (146,'SZ','SWZ','MOZ,ZAF','Mbabane','Swazi','.\\bandiere-nazioni\\SZ.svg','Eswatini','eSwatini','748','1160164','Africa','Southern Africa','SWZ',
3,'{}'); 
INSERT INTO `nazioni` VALUES (147,'SE','SWE','FIN,NOR','Stockholm','Swedish','.\\bandiere-nazioni\\SE.svg','Sweden','Sverige','752','10353442','Europe','Northern Europe','SWE',
1,'{}'); 
INSERT INTO `nazioni` VALUES (148,'CH','CHE','AUT,FRA,ITA,LIE,DEU','Bern','Swiss','.\\bandiere-nazioni\\CH.svg','Switzerland','Schweiz','756','8636896','Europe','Western Europe','SUI',
1,'{}'); 
INSERT INTO `nazioni` VALUES (149,'SY','SYR','IRQ,ISR,JOR,LBN,TUR','Damascus','Syrian','.\\bandiere-nazioni\\SY.svg','Syrian Arab Republic','سوريا','760','17500657','Asia','Western Asia','SYR',
2,'{}'); 
INSERT INTO `nazioni` VALUES (150,'TW','TWN','NPL','Taipei','Taiwanese','.\\bandiere-nazioni\\TW.svg','Taiwan','臺灣','158','23503349','Asia','Eastern Asia','TPE',
2,'{}'); 
INSERT INTO `nazioni` VALUES (151,'TJ','TJK','AFG,CHN,KGZ,UZB','Dushanbe','Tadzhik','.\\bandiere-nazioni\\TJ.svg','Tajikistan','Тоҷикистон','762','9537642','Asia','Central Asia','TJK',
3,'{}'); 
INSERT INTO `nazioni` VALUES (152,'TZ','TZA','BDI,COD,KEN,MWI,MOZ,RWA,UGA,ZMB','Dodoma','Tanzanian','.\\bandiere-nazioni\\TZ.svg','Tanzania, United Republic of','Tanzania','834','59734213','Africa','Eastern Africa','TAN',
3,'{}'); 
INSERT INTO `nazioni` VALUES (153,'TH','THA','MMR,KHM,LAO,MYS','Bangkok','Thai','.\\bandiere-nazioni\\TH.svg','Thailand','ประเทศไทย','764','69799978','Asia','South-Eastern Asia','THA',
2,'{}'); 
INSERT INTO `nazioni` VALUES (154,'TL','TLS','IDN','Dili','East Timorese','.\\bandiere-nazioni\\TL.svg','Timor-Leste','Timor-Leste','626','1318442','Asia','South-Eastern Asia','TLS',
3,'{}'); 
INSERT INTO `nazioni` VALUES (155,'TG','TGO','BEN,BFA,GHA','Lomé','Togolese','.\\bandiere-nazioni\\TG.svg','Togo','Togo','768','8278737','Africa','Western Africa','TOG',
3,'{}'); 
INSERT INTO `nazioni` VALUES (156,'TT','TTO','','Port of Spain','Trinidadian','.\\bandiere-nazioni\\TT.svg','Trinidad and Tobago','Trinidad and Tobago','780','1399491','Americas','Caribbean','TTO',
2,'{}'); 
INSERT INTO `nazioni` VALUES (157,'TN','TUN','DZA,LBY','Tunis','Tunisian','.\\bandiere-nazioni\\TN.svg','Tunisia','تونس','788','11818618','Africa','Northern Africa','TUN',
3,'{}'); 
INSERT INTO `nazioni` VALUES (158,'TR','TUR','ARM,AZE,BGR,GEO,GRC,IRN,IRQ,SYR','Ankara','Turkish','.\\bandiere-nazioni\\TR.svg','Turkey','Türkiye','792','84339067','Asia','Western Asia','TUR',
2,'{}'); 
INSERT INTO `nazioni` VALUES (159,'TM','TKM','AFG,IRN,KAZ,UZB','Ashgabat','Turkmen','.\\bandiere-nazioni\\TM.svg','Turkmenistan','Türkmenistan','795','6031187','Asia','Central Asia','TKM',
3,'{}'); 
INSERT INTO `nazioni` VALUES (160,'UG','UGA','COD,KEN,RWA,SSD,TZA','Kampala','Ugandan','.\\bandiere-nazioni\\UG.svg','Uganda','Uganda','800','45741000','Africa','Eastern Africa','UGA',
3,'{}'); 
INSERT INTO `nazioni` VALUES (161,'UA','UKR','BLR,HUN,MDA,POL,ROU,RUS,SVK','Kyiv','Ukrainian','.\\bandiere-nazioni\\UA.svg','Ukraine','Україна','804','44134693','Europe','Eastern Europe','UKR',
1,'{}'); 
INSERT INTO `nazioni` VALUES (162,'AE','ARE','OMN,SAU','Abu Dhabi','Emirati','.\\bandiere-nazioni\\AE.svg','United Arab Emirates','دولة الإمارات العربية المتحدة','784','9890400','Asia','Western Asia','UAE',
2,'{}'); 
INSERT INTO `nazioni` VALUES (163,'US','USA','CAN,MEX','Washington, D.C.','American','.\\bandiere-nazioni\\US.svg','United States of America','United States','840','329484123','Americas','Northern America','USA',
1,'{}'); 
INSERT INTO `nazioni` VALUES (164,'UY','URY','ARG,BRA','Montevideo','Uruguayan','.\\bandiere-nazioni\\UY.svg','Uruguay','Uruguay','858','3473727','Americas','South America','URU',
2,'{}'); 
INSERT INTO `nazioni` VALUES (165,'UZ','UZB','AFG,KAZ,KGZ,TJK,TKM','Tashkent','Uzbekistani','.\\bandiere-nazioni\\UZ.svg','Uzbekistan','O‘zbekiston','860','34232050','Asia','Central Asia','UZB',
3,'{}'); 
INSERT INTO `nazioni` VALUES (166,'VE','VEN','BRA,COL,GUY','Caracas','Venezuelan','.\\bandiere-nazioni\\VE.svg','Venezuela (Bolivarian Republic of)','Venezuela','862','28435943','Americas','South America','VEN',
2,'{}'); 
INSERT INTO `nazioni` VALUES (167,'VN','VNM','KHM,CHN,LAO','Hanoi','Vietnamese','.\\bandiere-nazioni\\VN.svg','Vietnam','Việt Nam','704','97338583','Asia','South-Eastern Asia','VIE',
3,'{}'); 
INSERT INTO `nazioni` VALUES (168,'YE','YEM','OMN,SAU','Sana''a','Yemeni','.\\bandiere-nazioni\\YE.svg','Yemen','اليَمَن','887','29825968','Asia','Western Asia','YEM',
2,'{}'); 
INSERT INTO `nazioni` VALUES (169,'ZM','ZMB','AGO,BWA,COD,MWI,MOZ,NAM,TZA,ZWE','Lusaka','Zambian','.\\bandiere-nazioni\\ZM.svg','Zambia','Zambia','894','18383956','Africa','Eastern Africa','ZAM',
3,'{}'); 
INSERT INTO `nazioni` VALUES (170,'ZW','ZWE','BWA,MOZ,ZAF,ZMB','Harare','Zimbabwean','.\\bandiere-nazioni\\ZW.svg','Zimbabwe','Zimbabwe','716','14862927','Africa','Eastern Africa','ZIM',
3,'{}');

UPDATE nazioni SET translations = '{"br": "Afeganistão", "cs": "Afgánistán", "de": "Afghanistan", "es": "Afganistán", "fa": "افغانستان", "fr": "Afghanistan", "hr": "Afganistan", "hu": "Afganisztán", "it": "Afghanistan", "ja": "アフガニスタン", "nl": "Afghanistan", "pl": "Afganistan", "pt": "Afeganistão", "ru": "Афганистан", "se": "Afghanistan", "zh": "阿富汗伊斯兰共和国"}' WHERE id = 1;
UPDATE nazioni SET translations = '{"br": "Albânia", "cs": "Albánie", "de": "Albanien", "es": "Albania", "fa": "آلبانی", "fr": "Albanie", "hr": "Albanija", "hu": "Albánia", "it": "Albania", "ja": "アルバニア", "nl": "Albanië", "pl": "Albania", "pt": "Albânia", "ru": "Албания", "se": "Albanien", "zh": "阿尔巴尼亚共和国"}' WHERE id = 2;
UPDATE nazioni SET translations = '{"br": "Argélia", "cs": "Alžírsko", "de": "Algerien", "es": "Argelia", "fa": "الجزایر", "fr": "Algérie", "hr": "Alžir", "hu": "Algéria", "it": "Algeria", "ja": "アルジェリア", "nl": "Algerije", "pl": "Algieria", "pt": "Argélia", "ru": "Алжир", "se": "Algeriet", "zh": "阿尔及利亚人民民主共和国"}' WHERE id = 3;
UPDATE nazioni SET translations = '{"br": "Angola", "cs": "Angola", "de": "Angola", "es": "Angola", "fa": "آنگولا", "fr": "Angola", "hr": "Angola", "hu": "Angola", "it": "Angola", "ja": "アンゴラ", "nl": "Angola", "pl": "Angola", "pt": "Angola", "ru": "Ангола", "se": "Angola", "zh": "安哥拉共和国"}' WHERE id = 4;
UPDATE nazioni SET translations = '{"br": "Argentina", "cs": "Argentina", "de": "Argentinien", "es": "Argentina", "fa": "آرژانتین", "fr": "Argentine", "hr": "Argentina", "hu": "Argentína", "it": "Argentina", "ja": "アルゼンチン", "nl": "Argentinië", "pl": "Argentyna", "pt": "Argentina", "ru": "Аргентина", "se": "Argentina", "zh": "阿根廷共和国"}' WHERE id = 5;
UPDATE nazioni SET translations = '{"br": "Armênia", "cs": "Arménie", "de": "Armenien", "es": "Armenia", "fa": "ارمنستان", "fr": "Arménie", "hr": "Armenija", "hu": "Örményország", "it": "Armenia", "ja": "アルメニア", "nl": "Armenië", "pl": "Armenia", "pt": "Arménia", "ru": "Армения", "se": "Armenien", "zh": "亚美尼亚共和国"}' WHERE id = 6;
UPDATE nazioni SET translations = '{"br": "Austrália", "cs": "Austrálie", "de": "Australien", "es": "Australia", "fa": "استرالیا", "fr": "Australie", "hr": "Australija", "hu": "Ausztrália", "it": "Australia", "ja": "オーストラリア", "nl": "Australië", "pl": "Australia", "pt": "Austrália", "ru": "Австралия", "se": "Australien", "zh": "澳大利亚联邦"}' WHERE id = 7;
UPDATE nazioni SET translations = '{"br": "Áustria", "cs": "Rakousko", "de": "Österreich", "es": "Austria", "fa": "اتریش", "fr": "Autriche", "hr": "Austrija", "hu": "Ausztria", "it": "Austria", "ja": "オーストリア", "nl": "Oostenrijk", "pl": "Austria", "pt": "Áustria", "ru": "Австрия", "se": "Österrike", "zh": "奥地利共和国"}' WHERE id = 8;
UPDATE nazioni SET translations = '{"br": "Azerbaijão", "cs": "Ázerbájdžán", "de": "Aserbaidschan", "es": "Azerbaiyán", "fa": "آذربایجان", "fr": "Azerbaïdjan", "hr": "Azerbajdžan", "hu": "Azerbajdzsán", "it": "Azerbaijan", "ja": "アゼルバイジャン", "nl": "Azerbeidzjan", "pl": "Azerbejdżan", "pt": "Azerbaijão", "ru": "Азербайджан", "se": "Azerbajdzjan", "zh": "阿塞拜疆共和国"}' WHERE id = 9;
UPDATE nazioni SET translations = '{"br": "Bahrein", "cs": "Bahrajn", "de": "Bahrain", "es": "Bahrein", "fa": "بحرین", "fr": "Bahreïn", "hr": "Bahrein", "hu": "Bahrein", "it": "Bahrein", "ja": "バーレーン", "nl": "Bahrein", "pl": "Bahrajn", "pt": "Barém", "ru": "Бахрейн", "se": "Bahrain", "zh": "巴林王国"}' WHERE id = 10;
UPDATE nazioni SET translations = '{"br": "Bangladesh", "cs": "Bangladéš", "de": "Bangladesch", "es": "Bangladesh", "fa": "بنگلادش", "fr": "Bangladesh", "hr": "Bangladeš", "hu": "Banglades", "it": "Bangladesh", "ja": "バングラデシュ", "nl": "Bangladesh", "pl": "Bangladesz", "pt": "Bangladeche", "ru": "Бангладеш", "se": "Bangladesh", "zh": "孟加拉人民共和国"}' WHERE id = 11;
UPDATE nazioni SET translations = '{"br": "Bielorrússia", "cs": "Bělorusko", "de": "Weißrussland", "es": "Bielorrusia", "fa": "بلاروس", "fr": "Biélorussie", "hr": "Bjelorusija", "hu": "Fehéroroszország", "it": "Bielorussia", "ja": "ベラルーシ", "nl": "Wit-Rusland", "pl": "Białoruś", "pt": "Bielorrússia", "ru": "Белоруссия", "se": "Vitryssland", "zh": "白俄罗斯共和国"}' WHERE id = 12;
UPDATE nazioni SET translations = '{"br": "Bélgica", "cs": "Belgie", "de": "Belgien", "es": "Bélgica", "fa": "بلژیک", "fr": "Belgique", "hr": "Belgija", "hu": "Belgium", "it": "Belgio", "ja": "ベルギー", "nl": "België", "pl": "Belgia", "pt": "Bélgica", "ru": "Бельгия", "se": "Belgien", "zh": "比利时王国"}' WHERE id = 13;
UPDATE nazioni SET translations = '{"br": "Belize", "cs": "Belize", "de": "Belize", "es": "Belice", "fa": "بلیز", "fr": "Belize", "hr": "Belize", "hu": "Belize", "it": "Belize", "ja": "ベリーズ", "nl": "Belize", "pl": "Belize", "pt": "Belize", "ru": "Белиз", "se": "Belize", "zh": "伯利兹"}' WHERE id = 14;
UPDATE nazioni SET translations = '{"br": "Benin", "cs": "Benin", "de": "Benin", "es": "Benín", "fa": "بنین", "fr": "Bénin", "hr": "Benin", "hu": "Benin", "it": "Benin", "ja": "ベナン", "nl": "Benin", "pl": "Benin", "pt": "Benim", "ru": "Бенин", "se": "Benin", "zh": "贝宁共和国"}' WHERE id = 15;
UPDATE nazioni SET translations = '{"br": "Butão", "cs": "Bhútán", "de": "Bhutan", "es": "Bután", "fa": "بوتان", "fr": "Bhoutan", "hr": "Butan", "hu": "Bhután", "it": "Bhutan", "ja": "ブータン", "nl": "Bhutan", "pl": "Bhutan", "pt": "Butão", "ru": "Бутан", "se": "Bhutan", "zh": "不丹王国"}' WHERE id = 16;
UPDATE nazioni SET translations = '{"br": "Bolívia", "cs": "Bolívie", "de": "Bolivien", "es": "Bolivia", "fa": "بولیوی", "fr": "Bolivie", "hr": "Bolivija", "hu": "Bolívia", "it": "Bolivia", "ja": "ボリビア多民族国", "nl": "Bolivia", "pl": "Boliwia", "pt": "Bolívia", "ru": "Боливия", "se": "Bolivia", "zh": "多民族玻利维亚国"}' WHERE id = 17;
UPDATE nazioni SET translations = '{"br": "Bósnia e Herzegovina", "cs": "Bosna a Hercegovina", "de": "Bosnien und Herzegowina", "es": "Bosnia y Herzegovina", "fa": "بوسنی و هرزگوین", "fr": "Bosnie-Herzégovine", "hr": "Bosna i Hercegovina", "hu": "Bosznia-Hercegovina", "it": "Bosnia ed Erzegovina", "ja": "ボスニア・ヘルツェゴビナ", "nl": "Bosnië en Herzegovina", "pl": "Bośnia i Hercegowina", "pt": "Bósnia e Herzegovina", "ru": "Босния и Герцеговина", "se": "Bosnien och Hercegovina", "zh": "波斯尼亚和黑塞哥维那"}' WHERE id = 18;
UPDATE nazioni SET translations = '{"br": "Botsuana", "cs": "Botswana", "de": "Botswana", "es": "Botswana", "fa": "بوتسوانا", "fr": "Botswana", "hr": "Bocvana", "hu": "Botswana", "it": "Botswana", "ja": "ボツワナ", "nl": "Botswana", "pl": "Botswana", "pt": "Botsuana", "ru": "Ботсвана", "se": "Botswana", "zh": "博茨瓦纳共和国"}' WHERE id = 19;
UPDATE nazioni SET translations = '{"br": "Brasil", "cs": "Brazílie", "de": "Brasilien", "es": "Brasil", "fa": "برزیل", "fr": "Brésil", "hr": "Brazil", "hu": "Brazília", "it": "Brasile", "ja": "ブラジル", "nl": "Brazilië", "pl": "Brazylia", "pt": "Brasil", "ru": "Бразилия", "se": "Brasilien", "zh": "巴西联邦共和国"}' WHERE id = 20;
UPDATE nazioni SET translations = '{"br": "Bulgária", "cs": "Bulharsko", "de": "Bulgarien", "es": "Bulgaria", "fa": "بلغارستان", "fr": "Bulgarie", "hr": "Bugarska", "hu": "Bulgária", "it": "Bulgaria", "ja": "ブルガリア", "nl": "Bulgarije", "pl": "Bułgaria", "pt": "Bulgária", "ru": "Болгария", "se": "Bulgarien", "zh": "保加利亚共和国"}' WHERE id = 21;
UPDATE nazioni SET translations = '{"br": "Burkina Faso", "cs": "Burkina Faso", "de": "Burkina Faso", "es": "Burkina Faso", "fa": "بورکینافاسو", "fr": "Burkina Faso", "hr": "Burkina Faso", "hu": "Burkina Faso", "it": "Burkina Faso", "ja": "ブルキナファソ", "nl": "Burkina Faso", "pl": "Burkina Faso", "pt": "Burquina Faso", "ru": "Буркина-Фасо", "se": "Burkina Faso", "zh": "布基纳法索"}' WHERE id = 22;
UPDATE nazioni SET translations = '{"br": "Burundi", "cs": "Burundi", "de": "Burundi", "es": "Burundi", "fa": "بوروندی", "fr": "Burundi", "hr": "Burundi", "hu": "Burundi", "it": "Burundi", "ja": "ブルンジ", "nl": "Burundi", "pl": "Burundi", "pt": "Burúndi", "ru": "Бурунди", "se": "Burundi", "zh": "布隆迪共和国"}' WHERE id = 23;
UPDATE nazioni SET translations = '{"br": "Camboja", "cs": "Kambodža", "de": "Kambodscha", "es": "Camboya", "fa": "کامبوج", "fr": "Cambodge", "hr": "Kambodža", "hu": "Kambodzsa", "it": "Cambogia", "ja": "カンボジア", "nl": "Cambodja", "pl": "Kambodża", "pt": "Camboja", "ru": "Камбоджа", "se": "Kambodja", "zh": "柬埔寨王国"}' WHERE id = 24;
UPDATE nazioni SET translations = '{"br": "Camarões", "cs": "Kamerun", "de": "Kamerun", "es": "Camerún", "fa": "کامرون", "fr": "Cameroun", "hr": "Kamerun", "hu": "Kamerun", "it": "Camerun", "ja": "カメルーン", "nl": "Kameroen", "pl": "Kamerun", "pt": "Camarões", "ru": "Камерун", "se": "Kamerun", "zh": "喀麦隆共和国"}' WHERE id = 25;
UPDATE nazioni SET translations = '{"br": "Canadá", "cs": "Kanada", "de": "Kanada", "es": "Canadá", "fa": "کانادا", "fr": "Canada", "hr": "Kanada", "hu": "Kanada", "it": "Canada", "ja": "カナダ", "nl": "Canada", "pl": "Kanada", "pt": "Canadá", "ru": "Канада", "se": "Kanada", "zh": "加拿大"}' WHERE id = 26;
UPDATE nazioni SET translations = '{"br": "Cabo Verde", "cs": "Kapverdy", "de": "Kap Verde", "es": "Cabo Verde", "fa": "کیپ ورد", "fr": "Cap Vert", "hr": "Zelenortska Republika", "hu": "Zöld-foki Köztársaság", "it": "Capo Verde", "ja": "カーボベルデ", "nl": "Kaapverdië", "pl": "Wyspy Zielonego Przylądka", "pt": "Cabo Verde", "ru": "Кабо-Верде", "se": "Kap Verde", "zh": "佛得角共和国"}' WHERE id = 27;
UPDATE nazioni SET translations = '{"br": "República Centro-Africana", "cs": "Středoafrická republika", "de": "Zentralafrikanische Republik", "es": "República Centroafricana", "fa": "جمهوری آفریقای مرکزی", "fr": "République centrafricaine", "hr": "Srednjoafrička Republika", "hu": "Közép-afrikai Köztársaság", "it": "Repubblica Centrafricana", "ja": "中央アフリカ共和国", "nl": "Centraal-Afrikaanse Republiek", "pl": "Republika Środkowoafrykańska", "pt": "República Centro-Africana", "ru": "ЦАР", "se": "Centralafrikanska republiken", "zh": "中非共和国"}' WHERE id = 28;
UPDATE nazioni SET translations = '{"br": "Chade", "cs": "Čad", "de": "Tschad", "es": "Chad", "fa": "چاد", "fr": "Tchad", "hr": "Čad", "hu": "Csád", "it": "Ciad", "ja": "チャド", "nl": "Tsjaad", "pl": "Czad", "pt": "Chade", "ru": "Чад", "se": "Tchad", "zh": "乍得共和国"}' WHERE id = 29;
UPDATE nazioni SET translations = '{"br": "Chile", "cs": "Chile", "de": "Chile", "es": "Chile", "fa": "شیلی", "fr": "Chili", "hr": "Čile", "hu": "Chile", "it": "Cile", "ja": "チリ", "nl": "Chili", "pl": "Chile", "pt": "Chile", "ru": "Чили", "se": "Chile", "zh": "智利共和国"}' WHERE id = 30;
UPDATE nazioni SET translations = '{"br": "China", "cs": "Čínská lidová republika", "de": "China", "es": "China", "fa": "چین", "fr": "Chine", "hr": "Kina", "hu": "Kína", "it": "Cina", "ja": "中国", "nl": "China", "pl": "Chiny", "pt": "China", "ru": "Китай (Китайская Народная Республика)", "se": "Kina", "zh": "中国"}' WHERE id = 31;
UPDATE nazioni SET translations = '{"br": "Colômbia", "cs": "Kolumbie", "de": "Kolumbien", "es": "Colombia", "fa": "کلمبیا", "fr": "Colombie", "hr": "Kolumbija", "hu": "Kolumbia", "it": "Colombia", "ja": "コロンビア", "nl": "Colombia", "pl": "Kolumbia", "pt": "Colômbia", "ru": "Колумбия", "se": "Colombia", "zh": "哥伦比亚共和国"}' WHERE id = 32;
UPDATE nazioni SET translations = '{"br": "Comores", "cs": "Komory", "de": "Union der Komoren", "es": "Comoras", "fa": "کومور", "fr": "Comores", "hr": "Komori", "hu": "Comore-szigetek", "it": "Comore", "ja": "コモロ", "nl": "Comoren", "pl": "Komory", "pt": "Comores", "ru": "Коморы", "se": "Komorerna", "zh": "科摩罗联盟"}' WHERE id = 33;
UPDATE nazioni SET translations = '{"br": "Congo", "cs": "Demokratická republika Kongo", "de": "Kongo", "es": "Congo", "fa": "کنگو", "fr": "Congo", "hr": "Kongo", "hu": "Kongói Köztársaság", "it": "Congo", "ja": "コンゴ共和国", "nl": "Congo [Republiek]", "pl": "Kongo", "pt": "Congo", "ru": "Республика Конго", "se": "Kongo-Brazzaville", "zh": "刚果共和国"}' WHERE id = 34;
UPDATE nazioni SET translations = '{"br": "Costa Rica", "cs": "Kostarika", "de": "Costa Rica", "es": "Costa Rica", "fa": "کاستاریکا", "fr": "Costa Rica", "hr": "Kostarika", "hu": "Costa Rica", "it": "Costa Rica", "ja": "コスタリカ", "nl": "Costa Rica", "pl": "Kostaryka", "pt": "Costa Rica", "ru": "Коста-Рика", "se": "Costa Rica", "zh": "哥斯达黎加共和国"}' WHERE id = 35;
UPDATE nazioni SET translations = '{"br": "Croácia", "cs": "Chorvatsko", "de": "Kroatien", "es": "Croacia", "fa": "کرواسی", "fr": "Croatie", "hr": "Hrvatska", "hu": "Horvátország", "it": "Croazia", "ja": "クロアチア", "nl": "Kroatië", "pl": "Chorwacja", "pt": "Croácia", "ru": "Хорватия", "se": "Kroatien", "zh": "克罗地亚共和国"}' WHERE id = 36;
UPDATE nazioni SET translations = '{"br": "Cuba", "cs": "Kuba", "de": "Kuba", "es": "Cuba", "fa": "کوبا", "fr": "Cuba", "hr": "Kuba", "hu": "Kuba", "it": "Cuba", "ja": "キューバ", "nl": "Cuba", "pl": "Kuba", "pt": "Cuba", "ru": "Куба", "se": "Kuba", "zh": "古巴共和国"}' WHERE id = 37;
UPDATE nazioni SET translations = '{"br": "Chipre", "cs": "Kypr", "de": "Zypern", "es": "Chipre", "fa": "قبرس", "fr": "Chypre", "hr": "Cipar", "hu": "Ciprus", "it": "Cipro", "ja": "キプロス", "nl": "Cyprus", "pl": "Cypr", "pt": "Chipre", "ru": "Кипр", "se": "Cypern", "zh": "塞浦路斯共和国"}' WHERE id = 38;
UPDATE nazioni SET translations = '{"br": "República Tcheca", "cs": "Česká republika", "de": "Tschechische Republik", "es": "República Checa", "fa": "جمهوری چک", "fr": "République tchèque", "hr": "Češka", "hu": "Csehország", "it": "Repubblica Ceca", "ja": "チェコ", "nl": "Tsjechië", "pl": "Czechy", "pt": "República Checa", "ru": "Чехия", "se": "Tjeckien", "zh": "捷克共和国"}' WHERE id = 39;
UPDATE nazioni SET translations = '{"br": "Dinamarca", "cs": "Dánsko", "de": "Dänemark", "es": "Dinamarca", "fa": "دانمارک", "fr": "Danemark", "hr": "Danska", "hu": "Dánia", "it": "Danimarca", "ja": "デンマーク", "nl": "Denemarken", "pl": "Dania", "pt": "Dinamarca", "ru": "Дания", "se": "Danmark", "zh": "丹麦王国"}' WHERE id = 40;
UPDATE nazioni SET translations = '{"br": "Djibuti", "cs": "Džibutsko", "de": "Dschibuti", "es": "Yibuti", "fa": "جیبوتی", "fr": "Djibouti", "hr": "Džibuti", "hu": "Dzsibuti", "it": "Gibuti", "ja": "ジブチ", "nl": "Djibouti", "pl": "Dżibuti", "pt": "Djibuti", "ru": "Джибути", "se": "Djibouti", "zh": "吉布提共和国"}' WHERE id = 41;
UPDATE nazioni SET translations = '{"br": "República Dominicana", "cs": "Dominikánská republika", "de": "Dominikanische Republik", "es": "República Dominicana", "fa": "جمهوری دومینیکن", "fr": "République dominicaine", "hr": "Dominikanska Republika", "hu": "Dominikai Köztársaság", "it": "Repubblica Dominicana", "ja": "ドミニカ共和国", "nl": "Dominicaanse Republiek", "pl": "Dominikana", "pt": "República Dominicana", "ru": "Доминиканская Республика", "se": "Dominikanska republiken", "zh": "多明尼加共和国"}' WHERE id = 42;
UPDATE nazioni SET translations = '{"br": "Equador", "cs": "Ekvádor", "de": "Ecuador", "es": "Ecuador", "fa": "اکوادور", "fr": "Équateur", "hr": "Ekvador", "hu": "Ecuador", "it": "Ecuador", "ja": "エクアドル", "nl": "Ecuador", "pl": "Ekwador", "pt": "Equador", "ru": "Эквадор", "se": "Ecuador", "zh": "厄瓜多尔共和国"}' WHERE id = 43;
UPDATE nazioni SET translations = '{"br": "Egito", "cs": "Egypt", "de": "Ägypten", "es": "Egipto", "fa": "مصر", "fr": "Égypte", "hr": "Egipat", "hu": "Egyiptom", "it": "Egitto", "ja": "エジプト", "nl": "Egypte", "pl": "Egipt", "pt": "Egipto", "ru": "Египет", "se": "Egypten", "zh": "阿拉伯埃及共和国"}' WHERE id = 44;
UPDATE nazioni SET translations = '{"br": "El Salvador", "cs": "Salvador", "de": "El Salvador", "es": "El Salvador", "fa": "السالوادور", "fr": "Salvador", "hr": "Salvador", "hu": "Salvador", "it": "El Salvador", "ja": "エルサルバドル", "nl": "El Salvador", "pl": "Salwador", "pt": "El Salvador", "ru": "Сальвадор", "se": "El Salvador", "zh": "萨尔瓦多共和国"}' WHERE id = 45;
UPDATE nazioni SET translations = '{"br": "Guiné Equatorial", "cs": "Rovníková Guinea", "de": "Äquatorial-Guinea", "es": "Guinea Ecuatorial", "fa": "گینه استوایی", "fr": "Guinée-Équatoriale", "hr": "Ekvatorijalna Gvineja", "hu": "Egyenlítői-Guinea", "it": "Guinea Equatoriale", "ja": "赤道ギニア", "nl": "Equatoriaal-Guinea", "pl": "Gwinea Równikowa", "pt": "Guiné Equatorial", "ru": "Экваториальная Гвинея", "se": "Ekvatorialguinea", "zh": "赤道几内亚共和国"}' WHERE id = 46;
UPDATE nazioni SET translations = '{"br": "Estônia", "cs": "Estonsko", "de": "Estland", "es": "Estonia", "fa": "استونی", "fr": "Estonie", "hr": "Estonija", "hu": "Észtország", "it": "Estonia", "ja": "エストニア", "nl": "Estland", "pl": "Estonia", "pt": "Estónia", "ru": "Эстония", "se": "Estland", "zh": "爱沙尼亚共和国"}' WHERE id = 47;
UPDATE nazioni SET translations = '{"br": "Etiópia", "cs": "Etiopie", "de": "Äthiopien", "es": "Etiopía", "fa": "اتیوپی", "fr": "Éthiopie", "hr": "Etiopija", "hu": "Etiópia", "it": "Etiopia", "ja": "エチオピア", "nl": "Ethiopië", "pl": "Etiopia", "pt": "Etiópia", "ru": "Эфиопия", "se": "Etiopien", "zh": "埃塞俄比亚联邦民主共和国"}' WHERE id = 48;
UPDATE nazioni SET translations = '{"br": "Fiji", "cs": "Fidži", "de": "Fidschi", "es": "Fiyi", "fa": "فیجی", "fr": "Fidji", "hr": "Fiđi", "hu": "Fidzsi-szigetek", "it": "Figi", "ja": "フィジー", "nl": "Fiji", "pl": "Fidżi", "pt": "Fiji", "ru": "Фиджи", "se": "Fiji", "zh": "斐济共和国"}' WHERE id = 49;
UPDATE nazioni SET translations = '{"br": "Finlândia", "cs": "Finsko", "de": "Finnland", "es": "Finlandia", "fa": "فنلاند", "fr": "Finlande", "hr": "Finska", "hu": "Finnország", "it": "Finlandia", "ja": "フィンランド", "nl": "Finland", "pl": "Finlandia", "pt": "Finlândia", "ru": "Финляндия", "se": "Finland", "zh": "芬兰共和国"}' WHERE id = 50;
UPDATE nazioni SET translations = '{"br": "França", "cs": "Francie", "de": "Frankreich", "es": "Francia", "fa": "فرانسه", "fr": "France", "hr": "Francuska", "hu": "Franciaország", "it": "Francia", "ja": "フランス", "nl": "Frankrijk", "pl": "Francja", "pt": "França", "ru": "Франция", "se": "Frankrike", "zh": "法兰西共和国"}' WHERE id = 51;
UPDATE nazioni SET translations = '{"br": "Gabão", "cs": "Gabon", "de": "Gabun", "es": "Gabón", "fa": "گابن", "fr": "Gabon", "hr": "Gabon", "hu": "Gabon", "it": "Gabon", "ja": "ガボン", "nl": "Gabon", "pl": "Gabon", "pt": "Gabão", "ru": "Габон", "se": "Gabon", "zh": "加蓬共和国"}' WHERE id = 52;
UPDATE nazioni SET translations = '{"br": "Geórgia", "cs": "Gruzie", "de": "Georgien", "es": "Georgia", "fa": "گرجستان", "fr": "Géorgie", "hr": "Gruzija", "hu": "Grúzia", "it": "Georgia", "ja": "グルジア", "nl": "Georgië", "pl": "Gruzja", "pt": "Geórgia", "ru": "Грузия", "se": "Georgien", "zh": "格鲁吉亚"}' WHERE id = 53;
UPDATE nazioni SET translations = '{"br": "Alemanha", "cs": "Německo", "de": "Deutschland", "es": "Alemania", "fa": "آلمان", "fr": "Allemagne", "hr": "Njemačka", "hu": "Németország", "it": "Germania", "ja": "ドイツ", "nl": "Duitsland", "pl": "Niemcy", "pt": "Alemanha", "ru": "Германия", "se": "Tyskland", "zh": "德意志联邦共和国"}' WHERE id = 54;
UPDATE nazioni SET translations = '{"br": "Gana", "cs": "Ghana", "de": "Ghana", "es": "Ghana", "fa": "غنا", "fr": "Ghana", "hr": "Gana", "hu": "Ghána", "it": "Ghana", "ja": "ガーナ", "nl": "Ghana", "pl": "Ghana", "pt": "Gana", "ru": "Гана", "se": "Ghana", "zh": "加纳共和国"}' WHERE id = 55;
UPDATE nazioni SET translations = '{"br": "Grécia", "cs": "Řecko", "de": "Griechenland", "es": "Grecia", "fa": "یونان", "fr": "Grèce", "hr": "Grčka", "hu": "Görögország", "it": "Grecia", "ja": "ギリシャ", "nl": "Griekenland", "pl": "Grecja", "pt": "Grécia", "ru": "Греция", "se": "Grekland", "zh": "希腊共和国"}' WHERE id = 56;
UPDATE nazioni SET translations = '{"br": "Guatemala", "cs": "Guatemala", "de": "Guatemala", "es": "Guatemala", "fa": "گواتمالا", "fr": "Guatemala", "hr": "Gvatemala", "hu": "Guatemala", "it": "Guatemala", "ja": "グアテマラ", "nl": "Guatemala", "pl": "Gwatemala", "pt": "Guatemala", "ru": "Гватемала", "se": "Guatemala", "zh": "危地马拉共和国"}' WHERE id = 57;
UPDATE nazioni SET translations = '{"br": "Guiné", "cs": "Guinea", "de": "Guinea", "es": "Guinea", "fa": "گینه", "fr": "Guinée", "hr": "Gvineja", "hu": "Guinea", "it": "Guinea", "ja": "ギニア", "nl": "Guinee", "pl": "Gwinea", "pt": "Guiné", "ru": "Гвинея", "se": "Guinea", "zh": "几内亚共和国"}' WHERE id = 58;
UPDATE nazioni SET translations = '{"br": "Guiné-Bissau", "cs": "Guinea-Bissau", "de": "Guinea-Bissau", "es": "Guinea-Bisáu", "fa": "گینه بیسائو", "fr": "Guinée-Bissau", "hr": "Gvineja Bisau", "hu": "Bissau-Guinea", "it": "Guinea-Bissau", "ja": "ギニアビサウ", "nl": "Guinee-Bissau", "pl": "Gwinea Bissau", "pt": "Guiné-Bissau", "ru": "Гвинея-Бисау", "se": "Guinea-Bissau", "zh": "几内亚比绍共和国"}' WHERE id = 59;
UPDATE nazioni SET translations = '{"br": "Guiana", "cs": "Guyana", "de": "Guyana", "es": "Guyana", "fa": "گویان", "fr": "Guyane", "hr": "Gvajana", "hu": "Guyana", "it": "Guyana", "ja": "ガイアナ", "nl": "Guyana", "pl": "Gujana", "pt": "Guiana", "ru": "Гайана", "se": "Guyana", "zh": "圭亚那共和国"}' WHERE id = 60;
UPDATE nazioni SET translations = '{"br": "Haiti", "cs": "Haiti", "de": "Haiti", "es": "Haiti", "fa": "هائیتی", "fr": "Haïti", "hr": "Haiti", "hu": "Haiti", "it": "Haiti", "ja": "ハイチ", "nl": "Haïti", "pl": "Haiti", "pt": "Haiti", "ru": "Гаити", "se": "Haiti", "zh": "海地共和国"}' WHERE id = 61;
UPDATE nazioni SET translations = '{"br": "Vaticano", "cs": "Svatý stolec", "de": "Vatikanstadt", "es": "Santa Sede", "fa": "سریر مقدس", "fr": "Vatican", "hr": "Sveta Stolica", "hu": "Vatikán", "it": "Santa Sede", "ja": "聖座", "nl": "Vaticaanstad", "pl": "Stolica Apostolska", "pt": "Vaticano", "ru": "Holy See", "se": "Vatikanstaten", "zh": "梵蒂冈城国"}' WHERE id = 62;
UPDATE nazioni SET translations = '{"br": "Honduras", "cs": "Honduras", "de": "Honduras", "es": "Honduras", "fa": "هندوراس", "fr": "Honduras", "hr": "Honduras", "hu": "Honduras", "it": "Honduras", "ja": "ホンジュラス", "nl": "Honduras", "pl": "Honduras", "pt": "Honduras", "ru": "Гондурас", "se": "Honduras", "zh": "洪都拉斯共和国"}' WHERE id = 63;
UPDATE nazioni SET translations = '{"br": "Hong Kong", "cs": "Hongkong", "de": "Hong Kong", "es": "Hong Kong", "fa": "هنگ‌کنگ", "fr": "Hong Kong", "hr": "Hong Kong", "hu": "Hong Kong", "it": "Hong Kong", "ja": "香港", "nl": "Hongkong", "pl": "Hongkong", "pt": "Hong Kong", "ru": "Hong Kong", "se": "Hongkong", "zh": "香港"}' WHERE id = 64;
UPDATE nazioni SET translations = '{"br": "Hungria", "cs": "Maďarsko", "de": "Ungarn", "es": "Hungría", "fa": "مجارستان", "fr": "Hongrie", "hr": "Mađarska", "hu": "Magyarország", "it": "Ungheria", "ja": "ハンガリー", "nl": "Hongarije", "pl": "Węgry", "pt": "Hungria", "ru": "Венгрия", "se": "Ungern", "zh": "匈牙利"}' WHERE id = 65;
UPDATE nazioni SET translations = '{"br": "Islândia", "cs": "Island", "de": "Island", "es": "Islandia", "fa": "ایسلند", "fr": "Islande", "hr": "Island", "hu": "Izland", "it": "Islanda", "ja": "アイスランド", "nl": "IJsland", "pl": "Islandia", "pt": "Islândia", "ru": "Исландия", "se": "Island", "zh": "冰岛"}' WHERE id = 66;
UPDATE nazioni SET translations = '{"br": "Índia", "cs": "Indie", "de": "Indien", "es": "India", "fa": "هند", "fr": "Inde", "hr": "Indija", "hu": "India", "it": "India", "ja": "インド", "nl": "India", "pl": "Indie", "pt": "Índia", "ru": "Индия", "se": "Indien", "zh": "印度共和国"}' WHERE id = 67;
UPDATE nazioni SET translations = '{"br": "Indonésia", "cs": "Indonésie", "de": "Indonesien", "es": "Indonesia", "fa": "اندونزی", "fr": "Indonésie", "hr": "Indonezija", "hu": "Indonézia", "it": "Indonesia", "ja": "インドネシア", "nl": "Indonesië", "pl": "Indonezja", "pt": "Indonésia", "ru": "Индонезия", "se": "Indonesien", "zh": "印度尼西亚共和国"}' WHERE id = 68;
UPDATE nazioni SET translations = '{"br": "Costa do Marfim", "cs": "Pobřeží slonoviny", "de": "Elfenbeinküste", "es": "Costa de Marfil", "fa": "ساحل عاج", "fr": "Côte d''Ivoire", "hr": "Obala Bjelokosti", "hu": "Elefántcsontpart", "it": "Costa D''Avorio", "ja": "コートジボワール", "nl": "Ivoorkust", "pl": "Wybrzeże Kości Słoniowej", "pt": "Costa do Marfim", "ru": "Кот-д’Ивуар", "se": "Elfenbenskusten", "zh": "科特迪瓦共和国"}' WHERE id = 69;
UPDATE nazioni SET translations = '{"br": "Irã", "cs": "Írán", "de": "Iran", "es": "Iran", "fa": "ایران", "fr": "Iran", "hr": "Iran", "hu": "Irán", "it": "Iran (Islamic Republic of)", "ja": "イラン・イスラム共和国", "nl": "Iran", "pl": "Iran", "pt": "Irão", "ru": "Иран", "se": "Iran", "zh": "伊朗伊斯兰共和国"}' WHERE id = 70;
UPDATE nazioni SET translations = '{"br": "Iraque", "cs": "Irák", "de": "Irak", "es": "Irak", "fa": "عراق", "fr": "Irak", "hr": "Irak", "hu": "Irak", "it": "Iraq", "ja": "イラク", "nl": "Irak", "pl": "Irak", "pt": "Iraque", "ru": "Ирак", "se": "Irak", "zh": "伊拉克共和国"}' WHERE id = 71;
UPDATE nazioni SET translations = '{"br": "Irlanda", "cs": "Irsko", "de": "Irland", "es": "Irlanda", "fa": "ایرلند", "fr": "Irlande", "hr": "Irska", "hu": "Írország", "it": "Irlanda", "ja": "アイルランド", "nl": "Ierland", "pl": "Irlandia", "pt": "Irlanda", "ru": "Ирландия", "se": "Irland", "zh": "爱尔兰共和国"}' WHERE id = 72;
UPDATE nazioni SET translations = '{"br": "Israel", "cs": "Izrael", "de": "Israel", "es": "Israel", "fa": "اسرائیل", "fr": "Israël", "hr": "Izrael", "hu": "Izrael", "it": "Israele", "ja": "イスラエル", "nl": "Israël", "pl": "Izrael", "pt": "Israel", "ru": "Израиль", "se": "Israel", "zh": "以色列国"}' WHERE id = 73;
UPDATE nazioni SET translations = '{"br": "Itália", "cs": "Itálie", "de": "Italien", "es": "Italia", "fa": "ایتالیا", "fr": "Italie", "hr": "Italija", "hu": "Olaszország", "it": "Italia", "ja": "イタリア", "nl": "Italië", "pl": "Włochy", "pt": "Itália", "ru": "Италия", "se": "Italien", "zh": "意大利共和国"}' WHERE id = 74;
UPDATE nazioni SET translations = '{"br": "Jamaica", "cs": "Jamajka", "de": "Jamaika", "es": "Jamaica", "fa": "جامائیکا", "fr": "Jamaïque", "hr": "Jamajka", "hu": "Jamaica", "it": "Giamaica", "ja": "ジャマイカ", "nl": "Jamaica", "pl": "Jamajka", "pt": "Jamaica", "ru": "Ямайка", "se": "Jamaica", "zh": "牙买加"}' WHERE id = 75;
UPDATE nazioni SET translations = '{"br": "Japão", "cs": "Japonsko", "de": "Japan", "es": "Japón", "fa": "ژاپن", "fr": "Japon", "hr": "Japan", "hu": "Japán", "it": "Giappone", "ja": "日本", "nl": "Japan", "pl": "Japonia", "pt": "Japão", "ru": "Япония", "se": "Japan", "zh": "日本国"}' WHERE id = 76;
UPDATE nazioni SET translations = '{"br": "Jordânia", "cs": "Jordánsko", "de": "Jordanien", "es": "Jordania", "fa": "اردن", "fr": "Jordanie", "hr": "Jordan", "hu": "Jordánia", "it": "Giordania", "ja": "ヨルダン", "nl": "Jordanië", "pl": "Jordania", "pt": "Jordânia", "ru": "Иордания", "se": "Jordanien", "zh": "约旦哈希姆王国"}' WHERE id = 77;
UPDATE nazioni SET translations = '{"br": "Cazaquistão", "cs": "Kazachstán", "de": "Kasachstan", "es": "Kazajistán", "fa": "قزاقستان", "fr": "Kazakhstan", "hr": "Kazahstan", "hu": "Kazahsztán", "it": "Kazakistan", "ja": "カザフスタン", "nl": "Kazachstan", "pl": "Kazachstan", "pt": "Cazaquistão", "ru": "Казахстан", "se": "Kazakstan", "zh": "哈萨克斯坦共和国"}' WHERE id = 78;
UPDATE nazioni SET translations = '{"br": "Quênia", "cs": "Keňa", "de": "Kenia", "es": "Kenia", "fa": "کنیا", "fr": "Kenya", "hr": "Kenija", "hu": "Kenya", "it": "Kenya", "ja": "ケニア", "nl": "Kenia", "pl": "Kenia", "pt": "Quénia", "ru": "Кения", "se": "Kenya", "zh": "肯尼亚共和国"}' WHERE id = 79;
UPDATE nazioni SET translations = '{"br": "Kuwait", "cs": "Kuvajt", "de": "Kuwait", "es": "Kuwait", "fa": "کویت", "fr": "Koweït", "hr": "Kuvajt", "hu": "Kuvait", "it": "Kuwait", "ja": "クウェート", "nl": "Koeweit", "pl": "Kuwejt", "pt": "Kuwait", "ru": "Кувейт", "se": "Kuwait", "zh": "科威特国"}' WHERE id = 80;
UPDATE nazioni SET translations = '{"br": "Quirguistão", "cs": "Kyrgyzstán", "de": "Kirgisistan", "es": "Kirguizistán", "fa": "قرقیزستان", "fr": "Kirghizistan", "hr": "Kirgistan", "hu": "Kirgizisztán", "it": "Kirghizistan", "ja": "キルギス", "nl": "Kirgizië", "pl": "Kirgistan", "pt": "Quirguizistão", "ru": "Киргизия", "se": "Kirgizistan", "zh": "吉尔吉斯斯坦共和国"}' WHERE id = 81;
UPDATE nazioni SET translations = '{"br": "Laos", "cs": "Laos", "de": "Laos", "es": "Laos", "fa": "لائوس", "fr": "Laos", "hr": "Laos", "hu": "Laosz", "it": "Laos", "ja": "ラオス人民民主共和国", "nl": "Laos", "pl": "Laos", "pt": "Laos", "ru": "Лаос", "se": "Laos", "zh": "老挝人民民主共和国"}' WHERE id = 82;
UPDATE nazioni SET translations = '{"br": "Letônia", "cs": "Lotyšsko", "de": "Lettland", "es": "Letonia", "fa": "لتونی", "fr": "Lettonie", "hr": "Latvija", "hu": "Lettország", "it": "Lettonia", "ja": "ラトビア", "nl": "Letland", "pl": "Łotwa", "pt": "Letónia", "ru": "Латвия", "se": "Lettland", "zh": "拉脱维亚共和国"}' WHERE id = 83;
UPDATE nazioni SET translations = '{"br": "Líbano", "cs": "Libanon", "de": "Libanon", "es": "Líbano", "fa": "لبنان", "fr": "Liban", "hr": "Libanon", "hu": "Libanon", "it": "Libano", "ja": "レバノン", "nl": "Libanon", "pl": "Liban", "pt": "Líbano", "ru": "Ливан", "se": "Libanon", "zh": "黎巴嫩共和国"}' WHERE id = 84;
UPDATE nazioni SET translations = '{"br": "Lesoto", "cs": "Lesotho", "de": "Lesotho", "es": "Lesotho", "fa": "لسوتو", "fr": "Lesotho", "hr": "Lesoto", "hu": "Lesotho", "it": "Lesotho", "ja": "レソト", "nl": "Lesotho", "pl": "Lesotho", "pt": "Lesoto", "ru": "Лесото", "se": "Lesotho", "zh": "莱索托王国"}' WHERE id = 85;
UPDATE nazioni SET translations = '{"br": "Libéria", "cs": "Libérie", "de": "Liberia", "es": "Liberia", "fa": "لیبریا", "fr": "Liberia", "hr": "Liberija", "hu": "Libéria", "it": "Liberia", "ja": "リベリア", "nl": "Liberia", "pl": "Liberia", "pt": "Libéria", "ru": "Либерия", "se": "Liberia", "zh": "利比里亚共和国"}' WHERE id = 86;
UPDATE nazioni SET translations = '{"br": "Líbia", "cs": "Libye", "de": "Libyen", "es": "Libia", "fa": "لیبی", "fr": "Libye", "hr": "Libija", "hu": "Líbia", "it": "Libia", "ja": "リビア", "nl": "Libië", "pl": "Libia", "pt": "Líbia", "ru": "Ливия", "se": "Libyen", "zh": "利比亚国"}' WHERE id = 87;
UPDATE nazioni SET translations = '{"br": "Lituânia", "cs": "Litva", "de": "Litauen", "es": "Lituania", "fa": "لیتوانی", "fr": "Lituanie", "hr": "Litva", "hu": "Litvánia", "it": "Lituania", "ja": "リトアニア", "nl": "Litouwen", "pl": "Litwa", "pt": "Lituânia", "ru": "Литва", "se": "Litauen", "zh": "立陶宛共和国"}' WHERE id = 88;
UPDATE nazioni SET translations = '{"br": "Luxemburgo", "cs": "Lucembursko", "de": "Luxemburg", "es": "Luxemburgo", "fa": "لوکزامبورگ", "fr": "Luxembourg", "hr": "Luksemburg", "hu": "Luxemburg", "it": "Lussemburgo", "ja": "ルクセンブルク", "nl": "Luxemburg", "pl": "Luksemburg", "pt": "Luxemburgo", "ru": "Люксембург", "se": "Luxemburg", "zh": "卢森堡大公国"}' WHERE id = 89;
UPDATE nazioni SET translations = '{"br": "Macedônia", "cs": "Makedonie", "de": "Mazedonien", "es": "Macedonia", "fa": "North Macedonia", "fr": "Macédoine", "hr": "Makedonija", "hu": "Macedónia", "it": "Macedonia", "ja": "マケドニア旧ユーゴスラビア共和国", "nl": "Macedonië", "pl": "Macedonia", "pt": "Macedónia", "ru": "Северная Македония", "se": "Nordmakedonien", "zh": "北馬其頓共和國"}' WHERE id = 90;
UPDATE nazioni SET translations = '{"br": "Madagascar", "cs": "Madagaskar", "de": "Madagaskar", "es": "Madagascar", "fa": "ماداگاسکار", "fr": "Madagascar", "hr": "Madagaskar", "hu": "Madagaszkár", "it": "Madagascar", "ja": "マダガスカル", "nl": "Madagaskar", "pl": "Madagaskar", "pt": "Madagáscar", "ru": "Мадагаскар", "se": "Madagaskar", "zh": "马达加斯加共和国"}' WHERE id = 91;
UPDATE nazioni SET translations = '{"br": "Malawi", "cs": "Malawi", "de": "Malawi", "es": "Malawi", "fa": "مالاوی", "fr": "Malawi", "hr": "Malavi", "hu": "Malawi", "it": "Malawi", "ja": "マラウイ", "nl": "Malawi", "pl": "Malawi", "pt": "Malávi", "ru": "Малави", "se": "Malawi", "zh": "马拉维共和国"}' WHERE id = 92;
UPDATE nazioni SET translations = '{"br": "Malásia", "cs": "Malajsie", "de": "Malaysia", "es": "Malasia", "fa": "مالزی", "fr": "Malaisie", "hr": "Malezija", "hu": "Malajzia", "it": "Malesia", "ja": "マレーシア", "nl": "Maleisië", "pl": "Malezja", "pt": "Malásia", "ru": "Малайзия", "se": "Malaysia", "zh": "马来西亚"}' WHERE id = 93;
UPDATE nazioni SET translations = '{"br": "Maldivas", "cs": "Maledivy", "de": "Malediven", "es": "Maldivas", "fa": "مالدیو", "fr": "Maldives", "hr": "Maldivi", "hu": "Maldív-szigetek", "it": "Maldive", "ja": "モルディブ", "nl": "Maldiven", "pl": "Malediwy", "pt": "Maldivas", "ru": "Мальдивы", "se": "Maldiverna", "zh": "马尔代夫共和国"}' WHERE id = 94;
UPDATE nazioni SET translations = '{"br": "Mali", "cs": "Mali", "de": "Mali", "es": "Mali", "fa": "مالی", "fr": "Mali", "hr": "Mali", "hu": "Mali", "it": "Mali", "ja": "マリ", "nl": "Mali", "pl": "Mali", "pt": "Mali", "ru": "Мали", "se": "Mali", "zh": "马里共和国"}' WHERE id = 95;
UPDATE nazioni SET translations = '{"br": "Malta", "cs": "Malta", "de": "Malta", "es": "Malta", "fa": "مالت", "fr": "Malte", "hr": "Malta", "hu": "Málta", "it": "Malta", "ja": "マルタ", "nl": "Malta", "pl": "Malta", "pt": "Malta", "ru": "Мальта", "se": "Malta", "zh": "马耳他共和国"}' WHERE id = 96;
UPDATE nazioni SET translations = '{"br": "Mauritânia", "cs": "Mauritánie", "de": "Mauretanien", "es": "Mauritania", "fa": "موریتانی", "fr": "Mauritanie", "hr": "Mauritanija", "hu": "Mauritánia", "it": "Mauritania", "ja": "モーリタニア", "nl": "Mauritanië", "pl": "Mauretania", "pt": "Mauritânia", "ru": "Мавритания", "se": "Mauretanien", "zh": "毛里塔尼亚伊斯兰共和国"}' WHERE id = 97;
UPDATE nazioni SET translations = '{"br": "Maurício", "cs": "Mauricius", "de": "Mauritius", "es": "Mauricio", "fa": "موریس", "fr": "Île Maurice", "hr": "Mauricijus", "hu": "Mauritius", "it": "Mauritius", "ja": "モーリシャス", "nl": "Mauritius", "pl": "Mauritius", "pt": "Maurícia", "ru": "Маврикий", "se": "Mauritius", "zh": "毛里求斯共和国"}' WHERE id = 98;
UPDATE nazioni SET translations = '{"br": "México", "cs": "Mexiko", "de": "Mexiko", "es": "México", "fa": "مکزیک", "fr": "Mexique", "hr": "Meksiko", "hu": "Mexikó", "it": "Messico", "ja": "メキシコ", "nl": "Mexico", "pl": "Meksyk", "pt": "México", "ru": "Мексика", "se": "Mexiko", "zh": "墨西哥合众国"}' WHERE id = 99;
UPDATE nazioni SET translations = '{"br": "Moldávia", "cs": "Moldavsko", "de": "Moldawie", "es": "Moldavia", "fa": "مولداوی", "fr": "Moldavie", "hr": "Moldova", "hu": "Moldova", "it": "Moldavia", "ja": "モルドバ共和国", "nl": "Moldavië", "pl": "Mołdawia", "pt": "Moldávia", "ru": "Молдавия", "se": "Moldavien", "zh": "摩尔多瓦共和国"}' WHERE id = 100;
UPDATE nazioni SET translations = '{"br": "Mongólia", "cs": "Mongolsko", "de": "Mongolei", "es": "Mongolia", "fa": "مغولستان", "fr": "Mongolie", "hr": "Mongolija", "hu": "Mongólia", "it": "Mongolia", "ja": "モンゴル", "nl": "Mongolië", "pl": "Mongolia", "pt": "Mongólia", "ru": "Монголия", "se": "Mongoliet", "zh": "蒙古"}' WHERE id = 101;
UPDATE nazioni SET translations = '{"br": "Montenegro", "cs": "Černá Hora", "de": "Montenegro", "es": "Montenegro", "fa": "مونته‌نگرو", "fr": "Monténégro", "hr": "Crna Gora", "hu": "Montenegró", "it": "Montenegro", "ja": "モンテネグロ", "nl": "Montenegro", "pl": "Czarnogóra", "pt": "Montenegro", "ru": "Черногория", "se": "Montenegro", "zh": "黑山"}' WHERE id = 102;
UPDATE nazioni SET translations = '{"br": "Marrocos", "cs": "Maroko", "de": "Marokko", "es": "Marruecos", "fa": "المغرب", "fr": "Maroc", "hr": "Maroko", "hu": "Marokkó", "it": "Marocco", "ja": "モロッコ", "nl": "Marokko", "pl": "Maroko", "pt": "Marrocos", "ru": "Марокко", "se": "Marocko", "zh": "摩洛哥王国"}' WHERE id = 103;
UPDATE nazioni SET translations = '{"br": "Moçambique", "cs": "Mosambik", "de": "Mosambik", "es": "Mozambique", "fa": "موزامبیک", "fr": "Mozambique", "hr": "Mozambik", "hu": "Mozambik", "it": "Mozambico", "ja": "モザンビーク", "nl": "Mozambique", "pl": "Mozambik", "pt": "Moçambique", "ru": "Мозамбик", "se": "Moçambique", "zh": "莫桑比克共和国"}' WHERE id = 104;
UPDATE nazioni SET translations = '{"br": "Myanmar", "cs": "Myanmar", "de": "Myanmar", "es": "Myanmar", "fa": "میانمار", "fr": "Myanmar", "hr": "Mijanmar", "hu": "Mianmar", "it": "Birmania", "ja": "ミャンマー", "nl": "Myanmar", "pl": "Mjanma (Birma)", "pt": "Myanmar", "ru": "Мьянма", "se": "Myanmar", "zh": "缅甸联邦共和国"}' WHERE id = 105;
UPDATE nazioni SET translations = '{"br": "Namíbia", "cs": "Namibie", "de": "Namibia", "es": "Namibia", "fa": "نامیبیا", "fr": "Namibie", "hr": "Namibija", "hu": "Namíbia", "it": "Namibia", "ja": "ナミビア", "nl": "Namibië", "pl": "Namibia", "pt": "Namíbia", "ru": "Намибия", "se": "Namibia", "zh": "纳米比亚共和国"}' WHERE id = 106;
UPDATE nazioni SET translations = '{"br": "Nepal", "cs": "Nepál", "de": "Népal", "es": "Nepal", "fa": "نپال", "fr": "Népal", "hr": "Nepal", "hu": "Nepál", "it": "Nepal", "ja": "ネパール", "nl": "Nepal", "pl": "Nepal", "pt": "Nepal", "ru": "Непал", "se": "Nepal", "zh": "尼泊尔联邦民主共和国"}' WHERE id = 107;
UPDATE nazioni SET translations = '{"br": "Holanda", "cs": "Nizozemsko", "de": "Niederlande", "es": "Países Bajos", "fa": "پادشاهی هلند", "fr": "Pays-Bas", "hr": "Nizozemska", "hu": "Hollandia", "it": "Paesi Bassi", "ja": "オランダ", "nl": "Nederland", "pl": "Holandia", "pt": "Países Baixos", "ru": "Нидерланды", "se": "Nederländerna", "zh": "荷兰"}' WHERE id = 108;
UPDATE nazioni SET translations = '{"br": "Nova Zelândia", "cs": "Nový Zéland", "de": "Neuseeland", "es": "Nueva Zelanda", "fa": "نیوزیلند", "fr": "Nouvelle-Zélande", "hr": "Novi Zeland", "hu": "Új-Zéland", "it": "Nuova Zelanda", "ja": "ニュージーランド", "nl": "Nieuw-Zeeland", "pl": "Nowa Zelandia", "pt": "Nova Zelândia", "ru": "Новая Зеландия", "se": "Nya Zeeland", "zh": "新西兰"}' WHERE id = 109;
UPDATE nazioni SET translations = '{"br": "Nicarágua", "cs": "Nikaragua", "de": "Nicaragua", "es": "Nicaragua", "fa": "نیکاراگوئه", "fr": "Nicaragua", "hr": "Nikaragva", "hu": "Nicaragua", "it": "Nicaragua", "ja": "ニカラグア", "nl": "Nicaragua", "pl": "Nikaragua", "pt": "Nicarágua", "ru": "Никарагуа", "se": "Nicaragua", "zh": "尼加拉瓜共和国"}' WHERE id = 110;
UPDATE nazioni SET translations = '{"br": "Níger", "cs": "Niger", "de": "Niger", "es": "Níger", "fa": "نیجر", "fr": "Niger", "hr": "Niger", "hu": "Niger", "it": "Niger", "ja": "ニジェール", "nl": "Niger", "pl": "Niger", "pt": "Níger", "ru": "Нигер", "se": "Niger", "zh": "尼日尔共和国"}' WHERE id = 111;
UPDATE nazioni SET translations = '{"br": "Nigéria", "cs": "Nigérie", "de": "Nigeria", "es": "Nigeria", "fa": "نیجریه", "fr": "Nigéria", "hr": "Nigerija", "hu": "Nigéria", "it": "Nigeria", "ja": "ナイジェリア", "nl": "Nigeria", "pl": "Nigeria", "pt": "Nigéria", "ru": "Нигерия", "se": "Nigeria", "zh": "尼日利亚联邦共和国"}' WHERE id = 112;
UPDATE nazioni SET translations = '{"br": "Coreia do Norte", "cs": "Severní Korea", "de": "Nordkorea", "es": "Corea del Norte", "fa": "کره جنوبی", "fr": "Corée du Nord", "hr": "Sjeverna Koreja", "hu": "Észak-Korea", "it": "Corea del Nord", "ja": "朝鮮民主主義人民共和国", "nl": "Noord-Korea", "pl": "Korea Północna", "pt": "Coreia do Norte", "ru": "КНДР (Корейская Народно-Демократическая Республика)", "se": "Nordkorea", "zh": "朝鲜人民民主共和国"}' WHERE id = 113;
UPDATE nazioni SET translations = '{"br": "Noruega", "cs": "Norsko", "de": "Norwegen", "es": "Noruega", "fa": "نروژ", "fr": "Norvège", "hr": "Norveška", "hu": "Norvégia", "it": "Norvegia", "ja": "ノルウェー", "nl": "Noorwegen", "pl": "Norwegia", "pt": "Noruega", "ru": "Норвегия", "se": "Norge", "zh": "挪威王国"}' WHERE id = 114;
UPDATE nazioni SET translations = '{"br": "Omã", "cs": "Omán", "de": "Oman", "es": "Omán", "fa": "عمان", "fr": "Oman", "hr": "Oman", "hu": "Omán", "it": "oman", "ja": "オマーン", "nl": "Oman", "pl": "Oman", "pt": "Omã", "ru": "Оман", "se": "Oman", "zh": "阿曼苏丹国"}' WHERE id = 115;
UPDATE nazioni SET translations = '{"br": "Paquistão", "cs": "Pákistán", "de": "Pakistan", "es": "Pakistán", "fa": "پاکستان", "fr": "Pakistan", "hr": "Pakistan", "hu": "Pakisztán", "it": "Pakistan", "ja": "パキスタン", "nl": "Pakistan", "pl": "Pakistan", "pt": "Paquistão", "ru": "Пакистан", "se": "Pakistan", "zh": "巴基斯坦伊斯兰共和国"}' WHERE id = 116;
UPDATE nazioni SET translations = '{"br": "Panamá", "cs": "Panama", "de": "Panama", "es": "Panamá", "fa": "پاناما", "fr": "Panama", "hr": "Panama", "hu": "Panama", "it": "Panama", "ja": "パナマ", "nl": "Panama", "pl": "Panama", "pt": "Panamá", "ru": "Панама", "se": "Panama", "zh": "巴拿马共和国"}' WHERE id = 117;
UPDATE nazioni SET translations = '{"br": "Papua Nova Guiné", "cs": "Papua-Nová Guinea", "de": "Papua-Neuguinea", "es": "Papúa Nueva Guinea", "fa": "پاپوآ گینه نو", "fr": "Papouasie-Nouvelle-Guinée", "hr": "Papua Nova Gvineja", "hu": "Pápua Új-Guinea", "it": "Papua Nuova Guinea", "ja": "パプアニューギニア", "nl": "Papoea-Nieuw-Guinea", "pl": "Papua-Nowa Gwinea", "pt": "Papua Nova Guiné", "ru": "Папуа — Новая Гвинея", "se": "Papua Nya Guinea", "zh": "巴布亚新几内亚"}' WHERE id = 118;
UPDATE nazioni SET translations = '{"br": "Paraguai", "cs": "Paraguay", "de": "Paraguay", "es": "Paraguay", "fa": "پاراگوئه", "fr": "Paraguay", "hr": "Paragvaj", "hu": "Paraguay", "it": "Paraguay", "ja": "パラグアイ", "nl": "Paraguay", "pl": "Paragwaj", "pt": "Paraguai", "ru": "Парагвай", "se": "Paraguay", "zh": "巴拉圭共和国"}' WHERE id = 119;
UPDATE nazioni SET translations = '{"br": "Peru", "cs": "Peru", "de": "Peru", "es": "Perú", "fa": "پرو", "fr": "Pérou", "hr": "Peru", "hu": "Peru", "it": "Perù", "ja": "ペルー", "nl": "Peru", "pl": "Peru", "pt": "Peru", "ru": "Перу", "se": "Peru", "zh": "秘鲁共和国"}' WHERE id = 120;
UPDATE nazioni SET translations = '{"br": "Filipinas", "cs": "Filipíny", "de": "Philippinen", "es": "Filipinas", "fa": "جزایر الندفیلیپین", "fr": "Philippines", "hr": "Filipini", "hu": "Fülöp-szigetek", "it": "Filippine", "ja": "フィリピン", "nl": "Filipijnen", "pl": "Filipiny", "pt": "Filipinas", "ru": "Филиппины", "se": "Filippinerna", "zh": "菲律宾共和国"}' WHERE id = 121;
UPDATE nazioni SET translations = '{"br": "Polônia", "cs": "Polsko", "de": "Polen", "es": "Polonia", "fa": "لهستان", "fr": "Pologne", "hr": "Poljska", "hu": "Lengyelország", "it": "Polonia", "ja": "ポーランド", "nl": "Polen", "pl": "Polska", "pt": "Polónia", "ru": "Польша", "se": "Polen", "zh": "波兰共和国"}' WHERE id = 122;
UPDATE nazioni SET translations = '{"br": "Portugal", "cs": "Portugalsko", "de": "Portugal", "es": "Portugal", "fa": "پرتغال", "fr": "Portugal", "hr": "Portugal", "hu": "Portugália", "it": "Portogallo", "ja": "ポルトガル", "nl": "Portugal", "pl": "Portugalia", "pt": "Portugal", "ru": "Португалия", "se": "Portugal", "zh": "葡萄牙共和国"}' WHERE id = 123;
UPDATE nazioni SET translations = '{"br": "Catar", "cs": "Katar", "de": "Katar", "es": "Catar", "fa": "قطر", "fr": "Qatar", "hr": "Katar", "hu": "Katar", "it": "Qatar", "ja": "カタール", "nl": "Qatar", "pl": "Katar", "pt": "Catar", "ru": "Катар", "se": "Qatar", "zh": "卡塔尔国"}' WHERE id = 124;
UPDATE nazioni SET translations = '{"br": "Romênia", "cs": "Rumunsko", "de": "Rumänien", "es": "Rumania", "fa": "رومانی", "fr": "Roumanie", "hr": "Rumunjska", "hu": "Románia", "it": "Romania", "ja": "ルーマニア", "nl": "Roemenië", "pl": "Rumunia", "pt": "Roménia", "ru": "Румыния", "se": "Rumänien", "zh": "罗马尼亚"}' WHERE id = 125;
UPDATE nazioni SET translations = '{"br": "Rússia", "cs": "Rusko", "de": "Russland", "es": "Rusia", "fa": "روسیه", "fr": "Russie", "hr": "Rusija", "hu": "Oroszország", "it": "Russia", "ja": "ロシア連邦", "nl": "Rusland", "pl": "Rosja", "pt": "Rússia", "ru": "Россия", "se": "Ryssland", "zh": "俄罗斯联邦"}' WHERE id = 126;
UPDATE nazioni SET translations = '{"br": "Ruanda", "cs": "Rwanda", "de": "Ruanda", "es": "Ruanda", "fa": "رواندا", "fr": "Rwanda", "hr": "Ruanda", "hu": "Ruanda", "it": "Ruanda", "ja": "ルワンダ", "nl": "Rwanda", "pl": "Rwanda", "pt": "Ruanda", "ru": "Руанда", "se": "Rwanda", "zh": "卢旺达共和国"}' WHERE id = 127;
UPDATE nazioni SET translations = '{"br": "Santa Lúcia", "cs": "Svatá Lucie", "de": "Saint Lucia", "es": "Santa Lucía", "fa": "سنت لوسیا", "fr": "Saint-Lucie", "hr": "Sveta Lucija", "hu": "Saint Lucia", "it": "Santa Lucia", "ja": "セントルシア", "nl": "Saint Lucia", "pl": "Saint Lucia", "pt": "Santa Lúcia", "ru": "Сент-Люсия", "se": "Saint Lucia", "zh": "圣卢西亚"}' WHERE id = 128;
UPDATE nazioni SET translations = '{"br": "São Tomé e Príncipe", "cs": "Svatý Tomáš a Princův ostrov", "de": "São Tomé und Príncipe", "es": "Santo Tomé y Príncipe", "fa": "کواترو دو فرویرو", "fr": "Sao Tomé-et-Principe", "hr": "Sveti Toma i Princip", "hu": "São Tomé és Príncipe", "it": "São Tomé e Príncipe", "ja": "サントメ・プリンシペ", "nl": "Sao Tomé en Principe", "pl": "Wyspy Świętego Tomasza i Książęca", "pt": "São Tomé e Príncipe", "ru": "Сан-Томе и Принсипи", "se": "São Tomé och Príncipe", "zh": "圣多美和普林西比民主共和国"}' WHERE id = 129;
UPDATE nazioni SET translations = '{"br": "Arábia Saudita", "cs": "Saúdská Arábie", "de": "Saudi-Arabien", "es": "Arabia Saudí", "fa": "عربستان سعودی", "fr": "Arabie Saoudite", "hr": "Saudijska Arabija", "hu": "Szaúd-Arábia", "it": "Arabia Saudita", "ja": "サウジアラビア", "nl": "Saoedi-Arabië", "pl": "Arabia Saudyjska", "pt": "Arábia Saudita", "ru": "Саудовская Аравия", "se": "Saudiarabien", "zh": "沙特阿拉伯王国"}' WHERE id = 130;
UPDATE nazioni SET translations = '{"br": "Senegal", "cs": "Senegal", "de": "Senegal", "es": "Senegal", "fa": "سنگال", "fr": "Sénégal", "hr": "Senegal", "hu": "Szenegál", "it": "Senegal", "ja": "セネガル", "nl": "Senegal", "pl": "Senegal", "pt": "Senegal", "ru": "Сенегал", "se": "Senegal", "zh": "塞内加尔共和国"}' WHERE id = 131;
UPDATE nazioni SET translations = '{"br": "Sérvia", "cs": "Srbsko", "de": "Serbien", "es": "Serbia", "fa": "صربستان", "fr": "Serbie", "hr": "Srbija", "hu": "Szerbia", "it": "Serbia", "ja": "セルビア", "nl": "Servië", "pl": "Serbia", "pt": "Sérvia", "ru": "Сербия", "se": "Serbien", "zh": "塞尔维亚共和国"}' WHERE id = 132;
UPDATE nazioni SET translations = '{"br": "Seicheles", "cs": "Seychely", "de": "Seychellen", "es": "Seychelles", "fa": "سیشل", "fr": "Seychelles", "hr": "Sejšeli", "hu": "Seychelle-szigetek", "it": "Seychelles", "ja": "セーシェル", "nl": "Seychellen", "pl": "Seszele", "pt": "Seicheles", "ru": "Сейшельские Острова", "se": "Seychellerna", "zh": "塞舌尔共和国"}' WHERE id = 133;
UPDATE nazioni SET translations = '{"br": "Serra Leoa", "cs": "Sierra Leone", "de": "Sierra Leone", "es": "Sierra Leone", "fa": "سیرالئون", "fr": "Sierra Leone", "hr": "Sijera Leone", "hu": "Sierra Leone", "it": "Sierra Leone", "ja": "シエラレオネ", "nl": "Sierra Leone", "pl": "Sierra Leone", "pt": "Serra Leoa", "ru": "Сьерра-Леоне", "se": "Sierra Leone", "zh": "塞拉利昂共和国"}' WHERE id = 134;
UPDATE nazioni SET translations = '{"br": "Singapura", "cs": "Singapur", "de": "Singapur", "es": "Singapur", "fa": "سنگاپور", "fr": "Singapour", "hr": "Singapur", "hu": "Szingapúr", "it": "Singapore", "ja": "シンガポール", "nl": "Singapore", "pl": "Singapur", "pt": "Singapura", "ru": "Сингапур", "se": "Singapore", "zh": "新加坡"}' WHERE id = 135;
UPDATE nazioni SET translations = '{"br": "Eslováquia", "cs": "Slovensko", "de": "Slowakei", "es": "República Eslovaca", "fa": "اسلواکی", "fr": "Slovaquie", "hr": "Slovačka", "hu": "Szlovákia", "it": "Slovacchia", "ja": "スロバキア", "nl": "Slowakije", "pl": "Słowacja", "pt": "Eslováquia", "ru": "Словакия", "se": "Slovakien", "zh": "斯洛伐克共和国"}' WHERE id = 136;
UPDATE nazioni SET translations = '{"br": "Eslovênia", "cs": "Slovinsko", "de": "Slowenien", "es": "Eslovenia", "fa": "اسلوونی", "fr": "Slovénie", "hr": "Slovenija", "hu": "Szlovénia", "it": "Slovenia", "ja": "スロベニア", "nl": "Slovenië", "pl": "Słowenia", "pt": "Eslovénia", "ru": "Словения", "se": "Slovenien", "zh": "斯洛文尼亚共和国"}' WHERE id = 137;
UPDATE nazioni SET translations = '{"br": "Somália", "cs": "Somálsko", "de": "Somalia", "es": "Somalia", "fa": "سومالی", "fr": "Somalie", "hr": "Somalija", "hu": "Szomália", "it": "Somalia", "ja": "ソマリア", "nl": "Somalië", "pl": "Somalia", "pt": "Somália", "ru": "Сомали", "se": "Somalia", "zh": "索马里共和国"}' WHERE id = 138;
UPDATE nazioni SET translations = '{"br": "República Sul-Africana", "cs": "Jihoafrická republika", "de": "Republik Südafrika", "es": "República de Sudáfrica", "fa": "آفریقای جنوبی", "fr": "Afrique du Sud", "hr": "Južnoafrička Republika", "hu": "Dél-afrikai Köztársaság", "it": "Sud Africa", "ja": "南アフリカ", "nl": "Zuid-Afrika", "pl": "Republika Południowej Afryki", "pt": "República Sul-Africana", "ru": "ЮАР", "se": "Sydafrika", "zh": "南非共和国"}' WHERE id = 139;
UPDATE nazioni SET translations = '{"br": "Coreia do Sul", "cs": "Jižní Korea", "de": "Südkorea", "es": "Corea del Sur", "fa": "کره شمالی", "fr": "Corée du Sud", "hr": "Južna Koreja", "hu": "Dél-Korea", "it": "Corea del Sud", "ja": "大韓民国", "nl": "Zuid-Korea", "pl": "Korea Południowa", "pt": "Coreia do Sul", "ru": "Республика Корея", "se": "Sydkorea", "zh": "大韩民国"}' WHERE id = 140;
UPDATE nazioni SET translations = '{"br": "Sudão do Sul", "cs": "Jižní Súdán", "de": "Südsudan", "es": "Sudán del Sur", "fa": "سودان جنوبی", "fr": "Soudan du Sud", "hr": "Južni Sudan", "hu": "Dél-Szudán", "it": "Sudan del sud", "ja": "南スーダン", "nl": "Zuid-Soedan", "pl": "Sudan Południowy", "pt": "Sudão do Sul", "ru": "Южный Судан", "se": "Sydsudan", "zh": "南苏丹共和国"}' WHERE id = 141;
UPDATE nazioni SET translations = '{"br": "Espanha", "cs": "Španělsko", "de": "Spanien", "es": "España", "fa": "اسپانیا", "fr": "Espagne", "hr": "Španjolska", "hu": "Spanyolország", "it": "Spagna", "ja": "スペイン", "nl": "Spanje", "pl": "Hiszpania", "pt": "Espanha", "ru": "Испания", "se": "Spanien", "zh": "西班牙王国"}' WHERE id = 142;
UPDATE nazioni SET translations = '{"br": "Sri Lanka", "cs": "Srí Lanka", "de": "Sri Lanka", "es": "Sri Lanka", "fa": "سری‌لانکا", "fr": "Sri Lanka", "hr": "Šri Lanka", "hu": "Srí Lanka", "it": "Sri Lanka", "ja": "スリランカ", "nl": "Sri Lanka", "pl": "Sri Lanka", "pt": "Sri Lanka", "ru": "Шри-Ланка", "se": "Sri Lanka", "zh": "斯里兰卡民主社会主义共和国"}' WHERE id = 143;
UPDATE nazioni SET translations = '{"br": "Sudão", "cs": "Súdán", "de": "Sudan", "es": "Sudán", "fa": "سودان", "fr": "Soudan", "hr": "Sudan", "hu": "Szudán", "it": "Sudan", "ja": "スーダン", "nl": "Soedan", "pl": "Sudan", "pt": "Sudão", "ru": "Судан", "se": "Sudan", "zh": "苏丹共和国"}' WHERE id = 144;
UPDATE nazioni SET translations = '{"br": "Suriname", "cs": "Surinam", "de": "Suriname", "es": "Surinam", "fa": "سورینام", "fr": "Surinam", "hr": "Surinam", "hu": "Suriname", "it": "Suriname", "ja": "スリナム", "nl": "Suriname", "pl": "Surinam", "pt": "Suriname", "ru": "Суринам", "se": "Surinam", "zh": "苏里南共和国"}' WHERE id = 145;
UPDATE nazioni SET translations = '{"br": "Suazilândia", "cs": "Svazijsko", "de": "Swasiland", "es": "Suazilandia", "fa": "سوازیلند", "fr": "Swaziland", "hr": "Svazi", "hu": "Szváziföld", "it": "Swaziland", "ja": "スワジランド", "nl": "Swaziland", "pl": "Suazi", "pt": "Suazilândia", "ru": "Эсватини", "se": "Swaziland", "zh": "斯威士兰王国"}' WHERE id = 146;
UPDATE nazioni SET translations = '{"br": "Suécia", "cs": "Švédsko", "de": "Schweden", "es": "Suecia", "fa": "سوئد", "fr": "Suède", "hr": "Švedska", "hu": "Svédország", "it": "Svezia", "ja": "スウェーデン", "nl": "Zweden", "pl": "Szwecja", "pt": "Suécia", "ru": "Швеция", "se": "Sverige", "zh": "瑞典王国"}' WHERE id = 147;
UPDATE nazioni SET translations = '{"br": "Suíça", "cs": "Švýcarsko", "de": "Schweiz", "es": "Suiza", "fa": "سوئیس", "fr": "Suisse", "hr": "Švicarska", "hu": "Svájc", "it": "Svizzera", "ja": "スイス", "nl": "Zwitserland", "pl": "Szwajcaria", "pt": "Suíça", "ru": "Швейцария", "se": "Schweiz", "zh": "瑞士联邦"}' WHERE id = 148;
UPDATE nazioni SET translations = '{"br": "Síria", "cs": "Sýrie", "de": "Syrien", "es": "Siria", "fa": "سوریه", "fr": "Syrie", "hr": "Sirija", "hu": "Szíria", "it": "Siria", "ja": "シリア・アラブ共和国", "nl": "Syrië", "pl": "Syria", "pt": "Síria", "ru": "Сирия", "se": "Syrien", "zh": "叙利亚阿拉伯共和国"}' WHERE id = 149;
UPDATE nazioni SET translations = '{"br": "Taiwan", "cs": "Taiwan", "de": "Taiwan", "es": "Taiwán", "fa": "تایوان", "fr": "Taïwan", "hr": "Tajvan", "hu": "Tajvan", "it": "Taiwan", "ja": "台湾（中華民国）", "nl": "Taiwan", "pl": "Tajwan", "pt": "Taiwan", "ru": "Taiwan", "se": "Taiwan", "zh": "台湾"}' WHERE id = 150;
UPDATE nazioni SET translations = '{"br": "Tajiquistão", "cs": "Tádžikistán", "de": "Tadschikistan", "es": "Tayikistán", "fa": "تاجیکستان", "fr": "Tadjikistan", "hr": "Tađikistan", "hu": "Tádzsikisztán", "it": "Tagikistan", "ja": "タジキスタン", "nl": "Tadzjikistan", "pl": "Tadżykistan", "pt": "Tajiquistão", "ru": "Таджикистан", "se": "Tadzjikistan", "zh": "塔吉克斯坦共和国"}' WHERE id = 151;
UPDATE nazioni SET translations = '{"br": "Tanzânia", "cs": "Tanzanie", "de": "Tansania", "es": "Tanzania", "fa": "تانزانیا", "fr": "Tanzanie", "hr": "Tanzanija", "hu": "Tádzsikisztán", "it": "Tanzania", "ja": "タンザニア", "nl": "Tanzania", "pl": "Tanzania", "pt": "Tanzânia", "ru": "Танзания", "se": "Tanzania", "zh": "坦桑尼亚联合共和国"}' WHERE id = 152;
UPDATE nazioni SET translations = '{"br": "Tailândia", "cs": "Thajsko", "de": "Thailand", "es": "Tailandia", "fa": "تایلند", "fr": "Thaïlande", "hr": "Tajland", "hu": "Thaiföld", "it": "Tailandia", "ja": "タイ", "nl": "Thailand", "pl": "Tajlandia", "pt": "Tailândia", "ru": "Таиланд", "se": "Thailand", "zh": "泰王国"}' WHERE id = 153;
UPDATE nazioni SET translations = '{"br": "Timor Leste", "cs": "Východní Timor", "de": "Timor-Leste", "es": "Timor Oriental", "fa": "تیمور شرقی", "fr": "Timor oriental", "hr": "Istočni Timor", "hu": "Kelet-Timor", "it": "Timor Est", "ja": "東ティモール", "nl": "Oost-Timor", "pl": "Timor Wschodni", "pt": "Timor Leste", "ru": "Восточный Тимор", "se": "Östtimor a.k.a. Timor-Leste", "zh": "东帝汶民主共和国"}' WHERE id = 154;
UPDATE nazioni SET translations = '{"br": "Togo", "cs": "Togo", "de": "Togo", "es": "Togo", "fa": "توگو", "fr": "Togo", "hr": "Togo", "hu": "Togo", "it": "Togo", "ja": "トーゴ", "nl": "Togo", "pl": "Togo", "pt": "Togo", "ru": "Того", "se": "Togo", "zh": "多哥共和国"}' WHERE id = 155;
UPDATE nazioni SET translations = '{"br": "Trinidad e Tobago", "cs": "Trinidad a Tobago", "de": "Trinidad und Tobago", "es": "Trinidad y Tobago", "fa": "ترینیداد و توباگو", "fr": "Trinité et Tobago", "hr": "Trinidad i Tobago", "hu": "Trinidad és Tobago", "it": "Trinidad e Tobago", "ja": "トリニダード・トバゴ", "nl": "Trinidad en Tobago", "pl": "Trynidad i Tobago", "pt": "Trindade e Tobago", "ru": "Тринидад и Тобаго", "se": "Trinidad och Tobago", "zh": "特立尼达和多巴哥共和国"}' WHERE id = 156;
UPDATE nazioni SET translations = '{"br": "Tunísia", "cs": "Tunisko", "de": "Tunesien", "es": "Túnez", "fa": "تونس", "fr": "Tunisie", "hr": "Tunis", "hu": "Tunézia", "it": "Tunisia", "ja": "チュニジア", "nl": "Tunesië", "pl": "Tunezja", "pt": "Tunísia", "ru": "Тунис", "se": "Tunisien", "zh": "突尼斯共和国"}' WHERE id = 157;
UPDATE nazioni SET translations = '{"br": "Turquia", "cs": "Turecko", "de": "Türkei", "es": "Turquía", "fa": "ترکیه", "fr": "Turquie", "hr": "Turska", "hu": "Törökország", "it": "Turchia", "ja": "トルコ", "nl": "Turkije", "pl": "Turcja", "pt": "Turquia", "ru": "Турция", "se": "Turkiet", "zh": "土耳其共和国"}' WHERE id = 158;
UPDATE nazioni SET translations = '{"br": "Turcomenistão", "cs": "Turkmenistán", "de": "Turkmenistan", "es": "Turkmenistán", "fa": "ترکمنستان", "fr": "Turkménistan", "hr": "Turkmenistan", "hu": "Türkmenisztán", "it": "Turkmenistan", "ja": "トルクメニスタン", "nl": "Turkmenistan", "pl": "Turkmenistan", "pt": "Turquemenistão", "ru": "Туркмения", "se": "Turkmenistan", "zh": "土库曼斯坦"}' WHERE id = 159;
UPDATE nazioni SET translations = '{"br": "Uganda", "cs": "Uganda", "de": "Uganda", "es": "Uganda", "fa": "اوگاندا", "fr": "Uganda", "hr": "Uganda", "hu": "Uganda", "it": "Uganda", "ja": "ウガンダ", "nl": "Oeganda", "pl": "Uganda", "pt": "Uganda", "ru": "Уганда", "se": "Uganda", "zh": "乌干达共和国"}' WHERE id = 160;
UPDATE nazioni SET translations = '{"br": "Ucrânia", "cs": "Ukrajina", "de": "Ukraine", "es": "Ucrania", "fa": "وکراین", "fr": "Ukraine", "hr": "Ukrajina", "hu": "Ukrajna", "it": "Ucraina", "ja": "ウクライナ", "nl": "Oekraïne", "pl": "Ukraina", "pt": "Ucrânia", "ru": "Украина", "se": "Ukraina", "zh": "乌克兰"}' WHERE id = 161;
UPDATE nazioni SET translations = '{"br": "Emirados árabes Unidos", "cs": "Spojené arabské emiráty", "de": "Vereinigte Arabische Emirate", "es": "Emiratos Árabes Unidos", "fa": "امارات متحده عربی", "fr": "Émirats arabes unis", "hr": "Ujedinjeni Arapski Emirati", "hu": "Egyesült Arab Emírségek", "it": "Emirati Arabi Uniti", "ja": "アラブ首長国連邦", "nl": "Verenigde Arabische Emiraten", "pl": "Zjednoczone Emiraty Arabskie", "pt": "Emirados árabes Unidos", "ru": "ОАЭ", "se": "Förenade Arabemiraten", "zh": "阿拉伯联合酋长国"}' WHERE id = 162;
UPDATE nazioni SET translations = '{"br": "Estados Unidos", "cs": "Spojené státy americké", "de": "Vereinigte Staaten von Amerika", "es": "Estados Unidos", "fa": "ایالات متحده آمریکا", "fr": "États-Unis", "hr": "Sjedinjene Američke Države", "hu": "Amerikai Egyesült Államok", "it": "Stati Uniti D''America", "ja": "アメリカ合衆国", "nl": "Verenigde Staten", "pl": "Stany Zjednoczone", "pt": "Estados Unidos", "ru": "США", "se": "USA", "zh": "美利坚合众国"}' WHERE id = 163;
UPDATE nazioni SET translations = '{"br": "Uruguai", "cs": "Uruguay", "de": "Uruguay", "es": "Uruguay", "fa": "اروگوئه", "fr": "Uruguay", "hr": "Urugvaj", "hu": "Uruguay", "it": "Uruguay", "ja": "ウルグアイ", "nl": "Uruguay", "pl": "Urugwaj", "pt": "Uruguai", "ru": "Уругвай", "se": "Uruguay", "zh": "乌拉圭东岸共和国"}' WHERE id = 164;
UPDATE nazioni SET translations = '{"br": "Uzbequistão", "cs": "Uzbekistán", "de": "Usbekistan", "es": "Uzbekistán", "fa": "ازبکستان", "fr": "Ouzbékistan", "hr": "Uzbekistan", "hu": "Üzbegisztán", "it": "Uzbekistan", "ja": "ウズベキスタン", "nl": "Oezbekistan", "pl": "Uzbekistan", "pt": "Usbequistão", "ru": "Узбекистан", "se": "Uzbekistan", "zh": "乌兹别克斯坦共和国"}' WHERE id = 165;
UPDATE nazioni SET translations = '{"br": "Venezuela", "cs": "Venezuela", "de": "Venezuela", "es": "Venezuela", "fa": "ونزوئلا", "fr": "Venezuela", "hr": "Venezuela", "hu": "Venezuela", "it": "Venezuela", "ja": "ベネズエラ・ボリバル共和国", "nl": "Venezuela", "pl": "Wenezuela", "pt": "Venezuela", "ru": "Венесуэла", "se": "Venezuela", "zh": "委内瑞拉玻利瓦尔共和国"}' WHERE id = 166;
UPDATE nazioni SET translations = '{"br": "Vietnã", "cs": "Vietnam", "de": "Vietnam", "es": "Vietnam", "fa": "ویتنام", "fr": "Viêt Nam", "hr": "Vijetnam", "hu": "Vietnám", "it": "Vietnam", "ja": "ベトナム", "nl": "Vietnam", "pl": "Wietnam", "pt": "Vietname", "ru": "Вьетнам", "se": "Vietnam", "zh": "越南社会主义共和国"}' WHERE id = 167;
UPDATE nazioni SET translations = '{"br": "Iêmen", "cs": "Jemen", "de": "Jemen", "es": "Yemen", "fa": "یمن", "fr": "Yémen", "hr": "Jemen", "hu": "Jemen", "it": "Yemen", "ja": "イエメン", "nl": "Jemen", "pl": "Jemen", "pt": "Iémen", "ru": "Йемен", "se": "Jemen", "zh": "也门共和国"}' WHERE id = 168;
UPDATE nazioni SET translations = '{"br": "Zâmbia", "cs": "Zambie", "de": "Sambia", "es": "Zambia", "fa": "زامبیا", "fr": "Zambie", "hr": "Zambija", "hu": "Zambia", "it": "Zambia", "ja": "ザンビア", "nl": "Zambia", "pl": "Zambia", "pt": "Zâmbia", "ru": "Замбия", "se": "Zambia", "zh": "赞比亚共和国"}' WHERE id = 169;
UPDATE nazioni SET translations = '{"br": "Zimbabwe", "cs": "Zimbabwe", "de": "Simbabwe", "es": "Zimbabue", "fa": "زیمباوه", "fr": "Zimbabwe", "hr": "Zimbabve", "hu": "Zimbabwe", "it": "Zimbabwe", "ja": "ジンバブエ", "nl": "Zimbabwe", "pl": "Zimbabwe", "pt": "Zimbabué", "ru": "Зимбабве", "se": "Zimbabwe", "zh": "津巴布韦共和国"}' WHERE id = 170;


