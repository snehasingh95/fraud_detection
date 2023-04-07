-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: localhost    Database: customer
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account_info`
--

DROP TABLE IF EXISTS `account_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_info` (
  `account_number` int NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `street_address` varchar(100) DEFAULT NULL,
  `unit` varchar(10) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(2) NOT NULL,
  `zip` int NOT NULL,
  `dob` date NOT NULL,
  `ssn` varchar(11) NOT NULL,
  `email_address` varchar(50) DEFAULT NULL,
  `mobile_number` bigint DEFAULT NULL,
  PRIMARY KEY (`account_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_info`
--

LOCK TABLES `account_info` WRITE;
/*!40000 ALTER TABLE `account_info` DISABLE KEYS */;
INSERT INTO `account_info` VALUES (11111,'Michael','Smith','4306 Yoakum Blvd','','Houston','TX',77006,'1965-07-29','108-60-1119','msmith111@gmail.com',7134921111),(13626,'Mirafuentes','Becky','30553 Washington Rd','','Plainfield','NJ',7062,'1986-02-18','933-95-7101','becky.mirafuentes@mirafuentes.com',6095243586),(13868,'Leto','Reita','55262 N French Rd','','Indianapolis','IN',46240,'1988-12-13','557-73-6098','reita.leto@gmail.com',6029069419),(13907,'Wolfgramm','Irma','9745 W Main St','','Randolph','NJ',7869,'1991-10-21','637-83-3065','irma.wolfgramm@hotmail.com',8479799545),(13986,'Gotter','Nieves','4940 Pulaski Park Dr','','Portland','OR',97202,'1952-12-06','652-19-4829','nieves_gotter@gmail.com',7737754522),(14215,'Hidvegi','Dorthy','9635 S Main St','','Boise','ID',83704,'1949-09-25','375-84-4942','dhidvegi@yahoo.com',9165913277),(14281,'Kolmetz','Willard','618 W Yakima Ave','','Irving','TX',75062,'1987-12-28','295-78-6006','willard@hotmail.com',4085401785),(14328,'Samu','Estrella','64 Lakeview Ave','','Beloit','WI',53511,'1992-07-28','836-97-8566','estrella@aol.com',5039393153),(14405,'Craghead','Lezlie','749 W 18th St','#45','Smithfield','NC',27577,'1976-08-19','421-15-6096','lezlie.craghead@craghead.org',5413264074),(14558,'Palaspas','Shawna','5 N Cleveland Massillon Rd','','Thousand Oaks','CA',91362,'1961-06-22','657-28-4128','shawna_palaspas@palaspas.org',4102249462),(14739,'Bruschke','Danica','840 15th Ave','','Waco','TX',76708,'1949-09-03','406-49-9428','danica_bruschke@gmail.com',6265721096),(14829,'Albares','Cammy','56 E Morehead St','','Laredo','TX',78045,'1976-03-25','431-08-6477','calbares@gmail.com',4407808425),(14889,'Cetta','Angella','185 Blackstone Bldge','','Honolulu','HI',96817,'1969-05-25','914-77-5912','angella.cetta@hotmail.com',5108287047),(15041,'Giguere','Wilda','1747 Calle Amanecer','#2','Anchorage','AK',99501,'1993-04-03','318-78-4058','wilda@cox.net',2547828569),(15451,'Dickerson','Dominque','69 Marquette Ave','','Hayward','CA',94545,'1943-12-16','541-64-9094','dominque.dickerson@dickerson.org',9047754480),(15482,'Caudy','Chanel','86 Nw 66th St','#8673','Shawnee','KS',66218,'1972-06-18','892-15-4289','chanel.caudy@caudy.org',7156626764),(15883,'Shin','Jesusa','2239 Shawnee Mission Pky','','Tullahoma','TN',37388,'1989-12-15','494-16-3129','jshin@shin.com',9726663413),(15971,'Mastella','Marjory','71 San Mateo Ave','','Wayne','PA',19087,'1969-09-02','232-44-8676','mmastella@mastella.com',8039255213),(16068,'Pawlowicz','Gregoria','455 N Main Ave','','Garden City','NY',11530,'1966-06-27','637-26-5571','gpawlowicz@yahoo.com',8564875412),(16090,'Bayless','Merilyn','195 13n N','','Santa Clara','CA',95054,'1943-04-26','919-99-7195','merilyn_bayless@cox.net',3522422570),(16392,'Klimek','Valentin','137 Pioneer Way','','Chicago','IL',60604,'1964-07-02','624-48-5014','vklimek@klimek.org',2143391809),(16456,'Chui','Ezekiel','2 Cedar Ave','#84','Easton','MD',21601,'1950-07-13','792-14-1333','ezekiel@chui.com',9133882079),(16841,'Shealy','Ozell','8 Industry Ln','','New York','NY',10002,'1977-10-14','229-42-9426','oshealy@hotmail.com',9195333762),(17032,'Goldammer','Cyndy','170 Wyoming Ave','','Burnsville','MN',55337,'1987-06-18','484-79-7413','cgoldammer@cox.net',8088927943),(17079,'Glick','Albina','4 Ralph Ct','','Dunellen','NJ',8812,'1993-01-31','798-85-9268','albina@glick.com',2017096245),(17178,'Rhymes','Micaela','20932 Hedley St','','Concord','CA',94520,'1978-10-04','368-34-6459','micaela_rhymes@gmail.com',6505285783),(17447,'Campain','Roxane','1048 Main St','','Fairbanks','AK',99708,'1964-04-26','981-01-6885','roxane@hotmail.com',9134134604),(17478,'Deleo','Carin','1844 Southern Blvd','','Little Rock','AR',72202,'1963-08-07','688-43-5741','cdeleo@deleo.com',5162121915),(17504,'Seewald','Shenika','4 Otis St','','Van Nuys','CA',91405,'1971-11-29','704-75-2483','shenika@gmail.com',2159348655),(17538,'Gibes','Cory','83649 W Belmont Ave','','San Gabriel','CA',91776,'1985-03-02','743-77-5189','cory.gibes@gmail.com',6508031936),(17561,'Saylors','Fatima','2 Lighthouse Ave','','Hopkins','MN',55343,'1942-09-14','669-94-4317','fsaylors@saylors.org',9077411044),(17593,'Hiatt','Marguerita','82 N Highway 67','','Oakley','CA',94561,'1950-07-23','760-82-4747','marguerita.hiatt@gmail.com',2019711638),(17777,'Vanheusen','Carma','68556 Central Hwy','','San Leandro','CA',94577,'1950-08-16','656-99-3419','carma@cox.net',4087038505),(18054,'Wieser','Sage','5 Boston Ave','#88','Sioux Falls','SD',57105,'1975-06-10','965-59-9766','sage_wieser@cox.net',4087523500),(18067,'Kohnert','Audra','134 Lewis Rd','','Nashville','TN',37211,'1976-06-03','568-58-1173','audra@kohnert.com',2544634368),(18230,'Yglesias','Maurine','59 Shady Ln','#53','Milwaukee','WI',53214,'1956-09-17','673-41-9947','maurine_yglesias@yglesias.com',3037247371),(18393,'Paprocki','Lenna','639 Main St','','Anchorage','AK',99501,'1986-02-11','581-28-7051','lpaprocki@hotmail.com',8566368749),(19444,'Isaacs','Bok','6 Gilson St','','Bronx','NY',10468,'1970-10-01','335-29-2756','bok.isaacs@aol.com',3217494981),(19485,'Caldarera','Kiley','25 E 75th St','#69','Los Angeles','CA',90034,'1955-09-27','322-92-7570','kiley.caldarera@aol.com',6313353414),(19505,'Maybury','Marti','4 Warehouse Point Rd','#7','Chicago','IL',60638,'1955-03-22','990-69-7499','marti.maybury@yahoo.com',5085844279),(19517,'Kulzer','Glory','55892 Jacksonville Rd','','Owings Mills','MD',21117,'1977-02-23','252-73-5298','gkulzer@kulzer.org',3054208970),(19820,'Buemi','Alease','4 Webbs Chapel Rd','','Boulder','CO',80303,'1990-06-01','335-82-1590','alease@buemi.com',5047105840),(19855,'Springe','Layla','229 N Forty Driv','','New York','NY',10011,'1950-02-26','236-12-1563','layla.springe@cox.net',9148552115),(19862,'Dilello','Lindsey','52777 Leaders Heights Rd','','Ontario','CA',91761,'1995-03-29','387-05-9052','lindsey.dilello@hotmail.com',6509335072),(19939,'Wardrip','Tammara','4800 Black Horse Pike','','Burlingame','CA',94010,'1948-03-23','239-44-7066','twardrip@cox.net',2152551641),(19990,'Blackwood','Kallie','701 S Harrison Rd','','San Francisco','CA',94104,'1970-04-16','700-68-2667','kallie.blackwood@gmail.com',2088625339),(20011,'Manno','Thurman','9387 Charcot Ave','','Absecon','NJ',8201,'1953-09-01','777-54-5408','thurman.manno@yahoo.com',9733101634),(20253,'Maynerich','Chantell','2023 Greg St','','Saint Paul','MN',55101,'1995-06-29','261-88-8538','chantell@yahoo.com',5013081040),(20565,'Bowley','Emerson','762 S Main St','','Madison','WI',53711,'1981-05-18','607-56-8700','emerson.bowley@bowley.org',3234532780),(20598,'Papasergi','Rory','83 County Road 437 ','#8581','Clarks Summit','PA',18411,'1950-03-15','670-88-3233','rpapasergi@cox.net',5184972940),(20669,'Shinko','Solange','426 Wolf St','','Metairie','LA',70002,'1986-02-28','400-86-4353','solange@shinko.com',2128601579),(20717,'Jillson','Fernanda','60480 Old Us Highway 51','','Preston','MD',21655,'1990-06-29','292-17-7679','fjillson@aol.com',4149592540),(20759,'Vocelka','Francine','366 South Dr','','Las Cruces','NM',88011,'1962-04-30','288-18-1881','francine_vocelka@vocelka.com',6148019788),(20908,'Haroldson','Cheryl','92 Main St','','Atlantic City','NJ',8401,'1951-01-04','715-53-3475','cheryl@haroldson.org',5169485768),(21152,'Lipke','Elza','6794 Lake Dr E','','Newark','NJ',7104,'1955-07-20','943-94-1781','elza@yahoo.com',7734465569),(21248,'Parlato','Moon','74989 Brandon St','','Wellsville','NY',14895,'1973-02-12','305-56-6141','moon@yahoo.com',7403438575),(21333,'Teresa','Kiles','54 E 75th St','#69','Los Angeles','CA',90034,'1955-09-27','322-92-1333','tkiles54@aol.com',6313353414),(21410,'Korando','Celeste','7 W Pinhook Rd','','Lynbrook','NY',11563,'1943-10-11','805-82-1942','ckorando@hotmail.com',3362435659),(21455,'Shields','Tyra','3 Fort Worth Ave','','Philadelphia','PA',19106,'1944-10-21','372-84-7538','tshields@gmail.com',3305375358),(21566,'Weight','Penney','18 Fountain St','','Anchorage','AK',99515,'1981-08-26','338-99-9898','penney_weight@aol.com',2126749610),(21777,'Shire','Van','90131 J St','','Pittstown','NJ',8867,'1955-08-10','974-79-4897','van.shire@shire.com',9732452133),(21795,'Kines','Donte','3 Aspen St','','Worcester','MA',1602,'1970-08-04','686-36-8791','dkines@hotmail.com',6089767199),(21994,'Cookey','Carmela','9 Murfreesboro Rd','','Chicago','IL',60623,'1970-08-21','874-38-6574','ccookey@cookey.org',9256347158),(22222,'John','Doe','1053 Hi Point St','','Los Angeles','CA',90035,'1979-03-03','122-62-2229','jdoe222@gmail.com',7134912222),(22239,'Riopelle','Talia','1 N Harlem Ave','#9','Orange','NJ',7050,'1968-08-13','861-01-3917','talia_riopelle@aol.com',5708677489),(22367,'Gato','Lai','37 Alabama Ave','','Evanston','IL',60201,'1939-04-05','719-07-5341','lai.gato@gato.org',3107747643),(22782,'Corrington','Beatriz','481 W Lemon St','','Middleboro','MA',2346,'1952-08-30','869-73-1483','beatriz@yahoo.com',9088778409),(22824,'Poquette','Mattie','73 State Road 434 E','','Phoenix','AZ',85013,'1941-02-22','709-90-6312','mattie@aol.com',9565376195),(22965,'Stockham','Jose','128 Bransten Rd','','New York','NY',10011,'1988-08-04','517-23-7218','jose@yahoo.com',5049799175),(22969,'Abdallah','Johnetta','1088 Pinehurst St','','Chapel Hill','NC',27514,'1982-06-06','445-46-4905','johnetta_abdallah@aol.com',4153152761),(23202,'Radde','Evangelina','992 Civic Center Dr','','Philadelphia','PA',19123,'1996-10-06','323-93-9629','evangelina@aol.com',5125875746),(23312,'Varriano','Claribel','6 Harry L Dr','#6327','Perrysburg','OH',43551,'1958-11-24','337-41-6133','claribel_varriano@cox.net',9739433423),(23427,'Weirather','Daren','9 N College Ave','#3','Milwaukee','WI',53216,'1965-04-03','704-56-9185','dweirather@aol.com',6154067854),(23697,'Benimadho','Elvera','99385 Charity St','#840','San Jose','CA',95110,'1975-12-31','841-49-4823','elvera.benimadho@cox.net',9078705536),(23777,'Waycott','Kanisha','5 Tomahawk Dr','','Los Angeles','CA',90006,'1948-06-30','559-78-9126','kanisha_waycott@yahoo.com',6173995124),(23800,'Eroman','Ilene','2853 S Central Expy','','Glen Burnie','MD',21061,'1974-01-24','409-19-2830','ilene.eroman@hotmail.com',8143935571),(23991,'Rhym','Bobbye','30 W 80th St','#1995','San Carlos','CA',94070,'1989-06-04','802-79-3430','brhym@rhym.com',9192259345),(24029,'Ostrosky','Rozella','17 Morena Blvd','','Camarillo','CA',93012,'1973-12-27','942-80-9716','rozella.ostrosky@ostrosky.com',2126758570),(24124,'Fern','Natalie','7140 University Ave','','Rock Springs','WY',82901,'1955-06-09','785-44-6111','natalie.fern@hotmail.com',3177225066),(24379,'Steffensmeier','Tiffiny','32860 Sierra Rd','','Miami','FL',33133,'1995-04-07','379-33-2544','tiffiny_steffensmeier@cox.net',5084298576),(24493,'Reitler','Laurel','6 Kains Ave','','Baltimore','MD',21215,'1994-08-23','484-89-6813','laurel_reitler@reitler.com',5858668313),(24616,'Paulas','Howard','866 34th Ave','','Denver','CO',80231,'1940-01-10','625-39-3954','hpaulas@gmail.com',8083153077),(24732,'Centini','Lisha','64 5th Ave','#1153','Mc Lean','VA',22102,'1948-04-12','538-75-7288','lisha@centini.org',3077048713),(25087,'Yum','Dierdre','63381 Jenks Ave','','Philadelphia','PA',19134,'1989-06-02','952-49-6267','dyum@yahoo.com',6515912583),(25368,'Schmierer','Pamella','5161 Dorsett Rd','','Homestead','FL',33030,'1971-05-30','443-44-9995','pamella.schmierer@schmierer.org',9736492922),(25423,'Wenner','Tonette','4545 Courthouse Rd','','Westbury','NY',11590,'1968-12-23','419-94-8007','twenner@aol.com',9088776135),(25471,'Gellinger','Gearldine','4 Bloomfield Ave','','Irving','TX',75061,'1939-10-17','997-55-7393','gearldine_gellinger@gellinger.com',4103875260),(25634,'Vinning','Stephaine','3717 Hamann Industrial Pky','','San Francisco','CA',94104,'1972-04-20','451-69-7394','stephaine@cox.net',9786976263),(25643,'Tollner','Mitsue','7 Eads St','','Chicago','IL',60632,'1985-03-31','726-64-8750','mitsue_tollner@yahoo.com',4195032484),(25770,'Klonowski','Karl','76 Brooks St','#9','Flemington','NJ',8822,'1955-12-30','879-61-5480','karl_klonowski@yahoo.com',6108145533),(26045,'Degroot','Novella','303 N Radcliffe St','','Hilo','HI',96720,'1989-09-25','726-07-8083','novella_degroot@degroot.org',2159643284),(26208,'Batman','Carissa','12270 Caton Center Dr','','Eugene','OR',97401,'1977-02-16','276-90-6166','carissa.batman@yahoo.com',5135087371),(26238,'Cousey','Sylvia','287 Youngstown Warren Rd','','Hampstead','MD',21074,'1945-11-23','384-25-9142','sylvia_cousey@cousey.org',8642563620),(26263,'Cartan','Scarlet','9390 S Howell Ave','','Albany','GA',31701,'1963-01-22','813-24-3598','scarlet.cartan@yahoo.com',8082156832),(26522,'Butt','James','6649 N Blue Gum St','','New Orleans','LA',70116,'1965-07-29','508-60-8859','jbutt@gmail.com',7134926037),(26603,'Sergi','Alishia','2742 Distribution Way','','New York','NY',10025,'1942-01-22','981-71-5987','asergi@gmail.com',7329247882),(26607,'Whobrey','Yuki','1 State Route 27','','Taylor','MI',48180,'1978-05-06','324-80-4342','yuki_whobrey@aol.com',4146619598),(26669,'Merced','Laticia','72 Mannix Dr','','Cincinnati','OH',45203,'1954-07-15','643-93-7552','lmerced@gmail.com',6095187697),(26777,'Corrio','Ammie','74874 Atlantic Ave','','Columbus','OH',43215,'1975-01-10','865-62-8550','ammie@corrio.com',9363363951),(26856,'Rim','Gladys','322 New Horizon Blvd','','Milwaukee','WI',53207,'1951-12-21','249-34-8665','gladys.rim@rim.org',9313139635),(26955,'Lary','Lucina','8597 W National Ave','','Cocoa','FL',32922,'1970-03-25','295-44-4351','lucina_lary@cox.net',9084092890),(26995,'Luczki','Yolando','422 E 21st St','','Syracuse','NY',13214,'1993-01-22','521-52-1366','yolando@cox.net',3172341135),(27014,'Kusko','Willow','90991 Thorburn Ave','','New York','NY',10011,'1955-05-18','719-41-7284','wkusko@yahoo.com',4106691642),(27143,'Mondella','Vallie','74 W College St','','Boise','ID',83707,'1948-05-09','620-25-4907','vmondella@mondella.com',4109149018),(27348,'Chickering','Devorah','31 Douglas Blvd','#950','Clovis','NM',88101,'1963-06-03','668-83-1637','devorah@hotmail.com',9739273447),(27486,'Felger','Twana','1 Commerce Way','','Portland','OR',97224,'1954-04-21','435-23-6883','twana.felger@felger.org',5165092347),(27694,'Hollack','Cecily','59 N Groesbeck Hwy','','Austin','TX',78731,'1944-11-07','506-77-1828','cecily@hollack.org',7322341546),(28042,'Emigh','Stephen','3777 E Richmond St','#900','Akron','OH',44302,'1949-10-11','665-64-6569','stephen_emigh@hotmail.com',8477287286),(28064,'Sawchuk','Nelida','3 State Route 35 S','','Paramus','NJ',7652,'1950-01-03','878-30-4646','nelida@gmail.com',4157676596),(28078,'Crupi','Delisa','47565 W Grand Ave','','Newark','NJ',7105,'1954-04-17','810-62-3331','delisa.crupi@crupi.com',4105204832),(28226,'Amigon','Minna','2371 Jerrold Ave','','Kulpsville','PA',19443,'1947-01-22','836-42-6534','minna_amigon@yahoo.com',4106558723),(28382,'Parvis','Arminda','1 Huntwood Ave','','Phoenix','AZ',85017,'1975-11-17','568-45-7893','arminda@parvis.com',2123328435),(28388,'Morocco','Elly','7 W 32nd St','','Erie','PA',16502,'1958-09-04','839-94-7882','elly_morocco@gmail.com',9077979628),(28440,'Toelkes','Viva','4284 Dorigo Ln','','Chicago','IL',60647,'1973-02-15','202-60-6544','viva.toelkes@gmail.com',9733542040),(28658,'Royster','Maryann','74 S Westgate St','','Albany','NY',12204,'1963-02-27','959-99-6560','mroyster@royster.com',9723039197),(29042,'Schemmer','Youlanda','2881 Lewis Rd','','Prineville','OR',97754,'1985-03-27','391-95-5844','youlanda@aol.com',7854637829),(29075,'Gudroe','Larae','6651 Municipal Rd','','Houma','LA',70360,'1961-10-01','878-15-1123','larae_gudroe@gmail.com',2153253042),(29162,'Skulski','Hillary','9 Wales Rd Ne','#914','Homosassa','FL',34448,'1984-12-04','418-85-4593','hillary.skulski@aol.com',3105792907),(29402,'Ennaco','Teri','99 Tank Farm Rd','','Hazleton','PA',18201,'1990-10-11','391-34-8484','tennaco@gmail.com',4087585015),(29437,'Hochard','Malinda','55 Riverside Ave','','Indianapolis','IN',46202,'1947-08-29','899-90-9751','malinda.hochard@yahoo.com',5105037169),(29455,'Miceli','Edna','555 Main St','','Erie','PA',16502,'1945-01-17','201-67-5659','emiceli@miceli.org',3053859695),(29833,'Buvens','Tawna','3305 Nabell Ave','#679','New York','NY',10009,'1947-09-13','236-64-4160','tawna@gmail.com',4147481374),(30100,'Perin','Lavera','678 3rd Ave','','Miami','FL',33196,'1948-10-13','573-59-1846','lperin@perin.org',9072314722),(30340,'Spickerman','Rolande','65 W Maple Ave','','Pearl City','HI',96782,'1965-09-08','974-06-4560','rolande.spickerman@spickerman.com',7188093762),(30483,'Uyetake','Sabra','98839 Hawthorne Blvd','#6101','Columbia','SC',29201,'1961-05-18','577-26-5158','sabra@uyetake.org',9318756644),(30772,'Madarang','Kimbery','798 Lund Farm Way','','Rockaway','NJ',7866,'1976-06-09','468-40-1341','kimbery_madarang@cox.net',3036234241),(30796,'Brideau','Junita','6 S Broadway St','','Cedar Grove','NJ',7009,'1942-02-27','658-23-9212','jbrideau@aol.com',7734944195),(30808,'Pugh','Blondell','201 Hawk Ct','','Providence','RI',2904,'1958-12-27','820-76-3572','bpugh@aol.com',2152119589),(30881,'Slusarski','Alisha','3273 State St','','Middlesex','NJ',8846,'1949-08-29','537-64-6119','alisha@slusarski.com',5189667987),(30885,'Cronauer','Louisa','524 Louisiana Ave Nw','','San Leandro','CA',94577,'1951-04-19','396-91-3422','louisa@cronauer.com',3033014946),(30942,'Padilla','Bulah','8927 Vandever Ave','','Waco','TX',76707,'1952-06-05','863-85-5959','bulah_padilla@hotmail.com',9516453605),(31010,'Tolfree','Latrice','81 Norris Ave','#525','Ronkonkoma','NY',11779,'1994-02-18','637-05-7034','latrice.tolfree@hotmail.com',9858907262),(31092,'Fallick','Jennifer','44 58th St','','Wheeling','IL',60090,'1967-03-23','560-94-2916','jfallick@yahoo.com',7755018109),(31094,'Venere','Art','8 W Cerritos Ave ','#54','Bridgeport','NJ',8014,'1947-11-10','793-96-7688','art@venere.org',8102929388),(31452,'Garufi','Meaghan','69734 E Carrillo St','','Mc Minnville','TN',37110,'1946-12-13','432-24-8074','meaghan@hotmail.com',6022774385),(31481,'Isenhower','Lettie','70 W Main St','','Beachwood','OH',44122,'1980-05-03','475-16-9431','lettie_isenhower@yahoo.com',5109933758),(31488,'Gillian','Valentine','775 W 17th St','','San Antonio','TX',78204,'1945-09-30','730-09-4476','valentine_gillian@gmail.com',8058326163),(31593,'Rulapaugh','Kati','6980 Dorsett Rd','','Abilene','KS',67410,'1954-08-05','445-65-4320','kati.rulapaugh@hotmail.com',2108129597),(31815,'Cork','Rosio','4 10th St W','','High Point','NC',27263,'1968-09-27','799-36-8050','rosio.cork@gmail.com',9523349408),(31844,'Kownacki','Sue','2 Se 3rd Ave','','Mesquite','TX',75149,'1992-05-20','918-28-4777','sue@aol.com',8144602655),(31938,'Darakjy','Josephine','4 B Blue Ridge Blvd','','Brighton','MI',48116,'1975-03-01','205-81-3006','josephine_darakjy@darakjy.org',5046218927),(31957,'Callaro','Brandon','7 Benton Dr','','Honolulu','HI',96819,'1965-05-01','750-37-1076','brandon_callaro@hotmail.com',8052753566),(32104,'Briddick','Jina','38938 Park Blvd','','Boston','MA',2128,'1949-01-17','903-17-8397','jina_briddick@briddick.com',9527682416),(32130,'Barfield','Stephaine','47154 Whipple Ave Nw','','Gardena','CA',90247,'1958-06-03','321-52-1088','stephaine@barfield.com',8179147518),(32218,'Malet','Blair','209 Decker Dr','','Philadelphia','PA',19132,'1988-11-21','952-98-9755','bmalet@yahoo.com',6083367444),(32240,'Francescon','Rolland','2726 Charcot Ave','','Paterson','NJ',7501,'1958-09-15','609-51-4228','rolland@cox.net',9312738709),(32307,'Perez','Devora','72868 Blackington Ave','','Oakland','CA',94606,'1992-01-15','884-06-8032','devora_perez@perez.org',9096399887),(32407,'Lindall','Carmelina','2664 Lewis Rd','','Littleton','CO',80126,'1986-07-17','938-91-5916','carmelina_lindall@lindall.com',5124863817),(32489,'Munns','Myra','461 Prospect Pl','#316','Euless','TX',76040,'1977-01-14','246-73-6741','mmunns@cox.net',2166577668),(32628,'Dilliard','Leota','7 W Jackson Blvd','','San Jose','CA',95111,'1979-02-23','873-25-6496','leota@hotmail.com',7735736914),(32764,'Klusman','Arlene','3 Secor Rd','','New Orleans','LA',70112,'1944-12-15','726-39-2318','arlene_klusman@gmail.com',7032353937),(32779,'Wrinkles','Nana','6 Van Buren St','','Mount Vernon','NY',10553,'1995-09-17','669-72-7713','nana@aol.com',4102099545),(32922,'Stenseth','Ernie','45 E Liberty St','','Ridgefield Park','NJ',7660,'1976-01-02','668-59-1234','ernie_stenseth@aol.com',5059773911),(32946,'Nestle','Lorrie','39 S 7th St','','Tullahoma','TN',37388,'1980-05-05','996-30-7551','lnestle@hotmail.com',2124029216),(32977,'Lungren','Fannie','17 Us Highway 111','','Round Rock','TX',78664,'1975-05-25','759-82-7734','fannie.lungren@yahoo.com',2086492373),(33013,'Oldroyd','Dyan','7219 Woodfield Rd','','Overland Park','KS',66204,'1982-08-12','354-61-8954','doldroyd@aol.com',5415488197),(33152,'Iturbide','Allene','1 Central Ave','','Stevens Point','WI',54481,'1985-02-24','771-35-1835','allene_iturbide@cox.net',7326583154),(33168,'Boord','Annabelle','523 Marquette Ave','','Concord','MA',1742,'1977-09-19','245-76-3666','annabelle.boord@cox.net',5106779785),(33333,'Jane','Doe','5905 Broadway St','','New York','NY',10463,'1982-01-02','133-63-3339','jdoe333@gmail.com',7134913333),(33452,'Stem','Lizette','501 N 19th Ave','','Cherry Hill','NJ',8002,'1951-10-07','214-91-5566','lizette.stem@aol.com',3153044759),(33555,'Monica','Abel','13727 St  Rt 17m M','','Middle Island','NY',11953,'1965-12-12','282-99-2555','mabel99@gmail.com',2158741229),(33653,'Ahle','Delmy','65895 S 16th St','','Providence','RI',2909,'1987-02-01','694-83-9579','delmy.ahle@hotmail.com',8184234007),(33717,'Inouye','Veronika','6 Greenleaf Ave','','San Jose','CA',95111,'1996-12-23','357-08-2396','vinouye@aol.com',6105453615),(33788,'Mulqueen','Timothy','44 W 4th St','','Staten Island','NY',10309,'1942-10-07','895-27-9722','timothy_mulqueen@mulqueen.org',5059758559),(33945,'Ruta','Graciela','98 Connecticut Ave Nw','','Chagrin Falls','OH',44023,'1956-05-03','369-95-8546','gruta@cox.net',3104985651),(34454,'Figeroa','Bernardo','386 9th Ave N','','Conroe','TX',77301,'1955-04-13','858-14-2437','bfigeroa@aol.com',2125824976),(34729,'Menter','Oretha','8 County Center Dr',' #647','Boston','MA',2210,'1948-11-02','966-27-9200','oretha_menter@yahoo.com',2297353378),(34882,'Degonia','Joesph','2887 Knowlton St','#5435','Berkeley','CA',94710,'1991-01-05','824-68-1427','joesph_degonia@degonia.org',2122603151),(35903,'Skursky','Benton','47939 Porter Ave','','Gardena','CA',90248,'1975-06-26','289-76-4017','benton.skursky@aol.com',4195444900),(35934,'Hoa','Clay','73 Saint Ann St','#86','Reno','NV',89502,'1977-04-13','948-54-3033','choa@hoa.org',8084774775),(36086,'Frey','Theola','54169 N Main St','','Massapequa','NY',11758,'1967-06-07','277-80-2793','theola_frey@frey.com',3105608022),(36403,'Hoogland','Tamar','2737 Pistorio Rd ','#9230','London','OH',43140,'1969-08-18','771-92-2761','tamar@hotmail.com',9256473298),(36453,'Monarrez','Amber','14288 Foster Ave','#4121','Jenkintown','PA',19046,'1954-10-18','544-01-9522','amber_monarrez@monarrez.org',5169686051),(36620,'Bolognia','Brock','4486 W O St','#1','New York','NY',10003,'1963-10-21','619-36-4722','bbolognia@yahoo.com',2159079111),(36717,'Flosi','Fletcher','394 Manchester Blvd','','Rockford','IL',61109,'1968-04-18','733-27-4800','fletcher.flosi@yahoo.com',3132887937),(36827,'Hagele','Leatha','627 Walford Ave','','Dallas','TX',75227,'1939-04-28','622-16-2635','lhagele@cox.net',5035275274),(36836,'Demesa','Herman','9 Norristown Rd','','Troy','NY',12180,'1960-07-31','833-83-4886','hdemesa@cox.net',5109553016),(37096,'Vanausdal','Jamal','53075 Sw 152nd Ter','#615','Monroe Township','NJ',8831,'1946-11-11','861-03-8266','jamal@vanausdal.org',4019608259),(37222,'Ruth','Green','128 Connecticut Ave Nw','','Columbus','OH',44023,'1956-05-03','369-95-7222','ruth759@cox.net',3104985651),(37226,'Maclead','Abel','37275 St  Rt 17m M','','Middle Island','NY',11953,'1965-12-12','282-99-7138','amaclead@gmail.com',2158741229),(37385,'Nicka','Bette','6 S 33rd St','','Aston','PA',19014,'1959-03-17','550-22-5793','bette_nicka@cox.net',8158282147),(37466,'Foller','Donette','34 Center St','','Hamilton','OH',45011,'1939-06-11','375-46-8304','donette.foller@cox.net',9073854412),(37500,'Juhas','Deeanna','14302 Pennsylvania Ave','','Huntingdon Valley','PA',19006,'1992-06-07','879-39-2882','deeanna_juhas@gmail.com',4014582547),(37616,'Zane','Sheridan','2409 Alabama Rd','','Riverside','CA',92501,'1955-12-24','217-14-7775','sheridan.zane@zane.com',4199393613),(37632,'Marrier','Kris','228 Runamuck Pl','#2808','Baltimore','MD',21224,'1973-03-25','557-49-4226','kris@gmail.com',6054142147),(37639,'Smith','Ty','4646 Kaahumanu St','','Hackensack','NJ',7601,'1974-02-03','748-18-6394','tsmith@aol.com',6174185043),(38206,'Ferencz','Erick','20 S Babcock St','','Fairbanks','AK',99712,'1978-08-12','751-83-6541','erick.ferencz@aol.com',3056067291),(38256,'Wiklund','Melissa','61 13 Stoneridge','#835','Findlay','OH',45840,'1940-11-02','859-36-7982','melissa@cox.net',3123035453),(38303,'Coody','Eun','84 Bloomfield Ave','','Spartanburg','SC',29301,'1989-11-14','412-52-2233','eun@yahoo.com',9735457355),(38829,'Morasca','Simona','3 Mcauley Dr','','Ashland','OH',44805,'1968-01-12','760-78-8845','simona@morasca.com',5135701893),(38915,'Theodorov','Kerry','6916 W Main St','','Sacramento','CA',95827,'1979-09-21','613-88-4366','kerry.theodorov@gmail.com',6319577624),(39184,'Kitzman','Chau','429 Tiger Ln','','Beverly Hills','CA',90212,'1989-07-26','492-15-1843','chau@gmail.com',9729346914),(39236,'Honeywell','Arlette','11279 Loytan St','','Jacksonville','FL',32254,'1986-12-17','349-88-8033','ahoneywell@honeywell.com',7183326527),(39330,'Rochin','Xuan','2 Monroe St','','San Mateo','CA',94403,'1987-02-14','704-48-4700','xuan@gmail.com',2016721553),(43991,'Joseph','Dark','7 B Blue Ridge Blvd','','Brighton','MI',48116,'1975-03-01','205-81-3991','jdarky@darakjy.org',5046218927),(44891,'Artie','Venn','81 W Cerritos Ave ','#54','Bridgeport','NJ',8014,'1947-11-10','793-96-4891','art@venere.org',8102929388),(46762,'Lenord','Paps','6391 Main St','','Anchorage','AK',99501,'1986-02-11','581-28-6762','lenpaps@hotmail.com',8566368749),(53111,'Don','Fuller','345 Center St','','Hamilton','OH',45011,'1939-06-11','375-46-3111','donniefuller.foller@cox.net',9073854412),(53222,'Mirasca','Sam','321 Mcauley Dr','','Ashland','OH',44805,'1968-01-12','760-78-3222','smirasca@hotmail.com',5135701893),(54566,'Tanner','Mitchel','17 Eads St','','Chicago','IL',60632,'1985-03-31','726-64-4566','mtanner@yahoo.com',4195032484),(54722,'Dilliard','Smith','3 W Jackson Blvd','','San Jose','CA',95111,'1979-02-23','873-25-4722','sdillard@hotmail.com',7735736914),(54891,'Anthony','West','2152 Boston Ave','#88','Sioux Falls','SD',57105,'1975-06-10','965-59-4891','west_anthony@cox.net',4087523500),(54992,'Davis','Cris','132 Runamuck Pl','#2808','Baltimore','MD',21224,'1973-03-25','557-49-4992','chris@gmail.com',6054142147),(54999,'May','Wilson','7132 Jerrold Ave','','Kulpsville','PA',19443,'1947-01-22','836-42-4999','may_wilson@yahoo.com',4106558723);
/*!40000 ALTER TABLE `account_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-07  3:42:46
