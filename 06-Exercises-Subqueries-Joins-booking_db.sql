CREATE TABLE IF NOT EXISTS customers (
  customer_id SERIAL PRIMARY KEY,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  companion_full_name VARCHAR(200) NOT NULL,
  job_title VARCHAR(80) NOT NULL,
  job_type VARCHAR(70) NOT NULL,
  phone VARCHAR(30) NOT NULL,
  email VARCHAR(255),
  image VARCHAR(100) DEFAULT NULL,
  country VARCHAR(50) NOT NULL,
  city VARCHAR(50) NOT NULL,
  onboarding_completion INT DEFAULT 0,
  CONSTRAINT customers_email_check CHECK (email ~* '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$')
);


INSERT INTO customers (
	first_name, last_name, companion_full_name, job_title, job_type, phone, email, image, country, city, onboarding_completion
) 
VALUES 	
	 ('Kattie','Hane','Darrel Champlin','Senior Data Orchestrator','District','292.479.2831','Kirk_Torphy92@gmail.com','https://cdn.fakercloud.com/avatars/antjanus_128.jpg','Berkshire','New Gaetano',82),
	 ('Orin','Kshlerin','Robert Gerlach','Forward Assurance Designer','Future','901.373.5326 x6273','Jordon39@yahoo.com','https://cdn.fakercloud.com/avatars/txcx_128.jpg','Buckinghamshire','Felipeborough',61),
	 ('Floy','Klein','Carla Huels','Human Branding Specialist','Dynamic','681.721.0550 x5379','Wilfred.Terry@yahoo.com','https://cdn.fakercloud.com/avatars/ssbb_me_128.jpg','Bedfordshire','Padbergport',39),
	 ('Breanne','Jacobi','John Hirthe','Investor Implementation Manager','Principal','1-320-695-1664 x4548','Jed.OKon@yahoo.com','https://cdn.fakercloud.com/avatars/longlivemyword_128.jpg','Cambridgeshire','Kissimmee',79),
	 ('Augustine','Reichert','Marco Reichel','International Group Supervisor','District','1-240-795-7808','Rodrigo_Renner@gmail.com','https://cdn.fakercloud.com/avatars/itolmach_128.jpg','Berkshire','West Meaghan',89),
	 ('Wilfredo','Hahn','Arlene Herzog','Product Directives Consultant','Dynamic','1-785-528-8056 x39916','Hal.Keebler60@gmail.com','https://cdn.fakercloud.com/avatars/keryilmaz_128.jpg','Borders','East Teresashire',107),
	 ('Fletcher','O`Keefe','Ms. Brandy Rice','National Factors Technician','Dynamic','635-250-9518','Rosalind_Hudson@hotmail.com','https://cdn.fakercloud.com/avatars/okandungel_128.jpg','Bedfordshire','North Cobybury',18),
	 ('Eliza','Considine','Alma Lebsack','Human Solutions Architect','Central','727-456-4141','Angelita_Miller@gmail.com','https://cdn.fakercloud.com/avatars/divya_128.jpg','Borders','North Jaquelineton',11),
	 ('Abel','Brakus','Dr. Luther Bartoletti','Lead Integration Executive','Global','1-215-987-8205','Edwin24@yahoo.com','https://cdn.fakercloud.com/avatars/bargaorobalo_128.jpg','Borders','Nigelburgh',83),
	 ('Jessy','Friesen','Rhonda Kuvalis','Dynamic Group Facilitator','Corporate','823.378.9164 x178','Chanel.Kunde@yahoo.com','https://cdn.fakercloud.com/avatars/stalewine_128.jpg','Bedfordshire','Lancaster',50),
	 ('Dudley','Lynch','Roger Reichert V','Global Usability Developer','Product','(309) 936-8561 x2062','Reginald_DuBuque@yahoo.com','https://cdn.fakercloud.com/avatars/benoitboucart_128.jpg','Buckinghamshire','Hudsonmouth',29),
	 ('Dillon','Kulas','Jacqueline Kihn','National Program Orchestrator','Central','335.461.9207','Abbie.McKenzie40@yahoo.com','https://cdn.fakercloud.com/avatars/noufalibrahim_128.jpg','Avon','Port Bernadette',47),
	 ('Marcos','Purdy','Mrs. Isabel Corwin','Chief Communications Strategist','Lead','769.665.8765 x94027','Bulah.Considine@yahoo.com','https://cdn.fakercloud.com/avatars/jmfsocial_128.jpg','Cambridgeshire','North Gennaroshire',8),
	 ('Berta','Friesen','Angelina Wehner','Central Optimization Engineer','International','613-618-4250 x0293','Cory.Blick40@hotmail.com','https://cdn.fakercloud.com/avatars/chacky14_128.jpg','Avon','North Miami',40),
	 ('Margarett','Mohr','Floyd Balistreri','Dynamic Brand Manager','Corporate','356-291-7356','Angie.Balistreri93@yahoo.com','https://cdn.fakercloud.com/avatars/jpenico_128.jpg','Bedfordshire','Port Auroreberg',16),
	 ('Wilfredo','Hahn','Arlene Herzog','Product Directives Consultant','Dynamic','1-785-528-8056 x39916','Hal.Keebler60@gmail.com','https://cdn.fakercloud.com/avatars/keryilmaz_128.jpg','Borders','East Teresashire',9),
	 ('Santiago','Spencer','Marty Kerluke','Human Directives Producer','Dynamic','(395) 551-9028 x35883','Marcelle39@gmail.com','https://cdn.fakercloud.com/avatars/charliegann_128.jpg','Cambridgeshire','East Devan',89),
	 ('Eleanora','Kuvalis','Vincent Abbott','Investor Quality Analyst','Investor','245-831-4431 x4708','Clifford60@yahoo.com','https://cdn.fakercloud.com/avatars/ionuss_128.jpg','Cambridgeshire','Paramount',71),
	 ('Ryan','Koss','Brenda Nolan','Senior Directives Technician','Lead','1-337-659-5108','Linnie62@yahoo.com','https://cdn.fakercloud.com/avatars/stayuber_128.jpg','Buckinghamshire','South Kaia',29),
	 ('Arnulfo','Cummerata','Matt Kilback I','Central Web Strategist','Central','1-394-879-4762','Isobel55@yahoo.com','https://cdn.fakercloud.com/avatars/nehfy_128.jpg','Berkshire','Virgilmouth',95),
	 ('Gudrun','Ziemann','Kevin Gleason','Product Quality Specialist','National','864.328.6556','Jessie.Hoppe@yahoo.com','https://cdn.fakercloud.com/avatars/wikiziner_128.jpg','Buckinghamshire','Lake Georgiana',69),
	 ('Myrtie','Predovic','Hannah Casper','Future Division Liaison','Dynamic','701-562-6687','Gus.Wolf40@hotmail.com','https://cdn.fakercloud.com/avatars/randomlies_128.jpg','Bedfordshire','Arianemouth',44),
	 ('Arvilla','Schaefer','Hugo Schmitt','Product Directives Assistant','Legacy','1-672-735-4257','Emil16@yahoo.com','https://cdn.fakercloud.com/avatars/r_garcia_128.jpg','Cambridgeshire','Pacochatown',12),
	 ('Vida','Schuster','Kevin Cartwright','District Security Analyst','Human','(702) 379-2069 x99327','Desmond.Block19@yahoo.com','https://cdn.fakercloud.com/avatars/hafeeskhan_128.jpg','Bedfordshire','Lake Cheyennehaven',47),
	 ('Mireya','Wisozk','Marcus Thompson','Customer Optimization Supervisor','Future','(248) 321-3397 x861','Garrison_Luettgen51@gmail.com','https://cdn.fakercloud.com/avatars/timpetricola_128.jpg','Cambridgeshire','New Maxie',67),
	 ('Arvel','Pfannerstill','Barry Cronin','International Response Specialist','Principal','(297) 351-1870 x342','Tod_Russel73@hotmail.com','https://cdn.fakercloud.com/avatars/safrankov_128.jpg','Berkshire','North Marcelostad',43),
	 ('Gerard','McLaughlin','Miguel Reilly','International Factors Liaison','Global','645.774.3688 x4199','Glennie95@hotmail.com','https://cdn.fakercloud.com/avatars/chadengle_128.jpg','Buckinghamshire','Diamond Bar',83),
	 ('Wilfredo','Hahn','Arlene Herzog','Product Directives Consultant','Dynamic','1-785-528-8056 x39916','Hal.Keebler60@gmail.com','https://cdn.fakercloud.com/avatars/keryilmaz_128.jpg','Borders','East Teresashire',7),
	 ('Kristina','Glover','Dr. Fred Bednar','Chief Tactics Analyst','Chief','243-605-0477 x24995','Ladarius.Ortiz36@hotmail.com','https://cdn.fakercloud.com/avatars/urrutimeoli_128.jpg','Avon','Callieville',25),
	 ('Katrine','Ullrich','Roger Koss','Lead Division Executive','Forward','1-565-435-4667','Jameson_Anderson51@gmail.com','https://cdn.fakercloud.com/avatars/stefvdham_128.jpg','Avon','Walterville',11),
	 ('Madaline','Marvin','Cedric Lynch','District Accountability Manager','Internal','260-432-6506 x4672','Colby_Hilpert@hotmail.com','https://cdn.fakercloud.com/avatars/Chakintosh_128.jpg','Buckinghamshire','Torranceville',94),
	 ('Isac','Muller','Lola Bradtke','Dynamic Mobility Architect','Central','(345) 986-9182','Durward.Kautzer29@gmail.com','https://cdn.fakercloud.com/avatars/lmjabreu_128.jpg','Buckinghamshire','Camarillo',50),
	 ('Kole','Ziemann','Bernadette Ferry','Dynamic Tactics Developer','Central','418.643.0713 x71944','Damian74@hotmail.com','https://cdn.fakercloud.com/avatars/jeremery_128.jpg','Cambridgeshire','Schoenmouth',79),
	 ('Krystina','Koelpin','Donnie Becker','Principal Usability Agent','Future','559-867-3235 x2799','Osvaldo28@hotmail.com','https://cdn.fakercloud.com/avatars/danillos_128.jpg','Avon','Lake Luisafurt',66),
	 ('Rod','Mayert','Victor Predovic','Central Interactions Consultant','Human','1-914-912-9355','Walton66@hotmail.com','https://cdn.fakercloud.com/avatars/herbigt_128.jpg','Cambridgeshire','Port Margret',40),
	 ('Maryse','Rolfson','Inez Harris PhD','District Optimization Coordinator','National','205-933-9496','Garnett.Dickinson@yahoo.com','https://cdn.fakercloud.com/avatars/marklamb_128.jpg','Cambridgeshire','West Hildamouth',14),
	 ('Bernadine','Zulauf','Juan Hansen DDS','Human Assurance Consultant','Dynamic','948.271.4112 x016','Rolando.Goodwin@gmail.com','https://cdn.fakercloud.com/avatars/nsamoylov_128.jpg','Buckinghamshire','Wilson',91),
	 ('Adella','Nicolas','Fannie Wiza','Future Applications Associate','Future','(813) 938-2831 x898','Jany89@yahoo.com','https://cdn.fakercloud.com/avatars/puzik_128.jpg','Borders','West Marcelinoport',57),
	 ('Kaylee','Schinner','Debra Quitzon','Dynamic Metrics Engineer','Principal','(973) 225-8673','Allan.Bode97@gmail.com','https://cdn.fakercloud.com/avatars/sydlawrence_128.jpg','Bedfordshire','Gusikowskistad',73),
	 ('Wilfredo','Hahn','Arlene Herzog','Product Directives Consultant','Dynamic','1-785-528-8056 x39916','Hal.Keebler60@gmail.com','https://cdn.fakercloud.com/avatars/keryilmaz_128.jpg','Borders','East Teresashire',97),
	 ('Aniya','Terry','Terrell Blanda IV','Regional Security Specialist','Global','894-432-3355 x066','Macie87@hotmail.com','https://cdn.fakercloud.com/avatars/langate_128.jpg','Buckinghamshire','Lake Marlene',73),
	 ('Treva','Blick','Kellie Barton','Global Integration Technician','Chief','920.650.0036','Alek.Murray@hotmail.com','https://cdn.fakercloud.com/avatars/bungiwan_128.jpg','Buckinghamshire','North Germainebury',29),
	 ('Garrick','Cronin','Mrs. Darla Schiller','Dynamic Web Consultant','Lead','892.814.2736 x027','Sydnie.Beier26@yahoo.com','https://cdn.fakercloud.com/avatars/rohixx_128.jpg','Berkshire','Port Antoniettachester',19),
	 ('Odie','Spinka','Dr. Hugo Lueilwitz','Direct Interactions Orchestrator','Future','1-752-849-0571 x77995','Ivah_Boehm65@yahoo.com','https://cdn.fakercloud.com/avatars/tanveerrao_128.jpg','Buckinghamshire','Lake Stan',68),
	 ('Wilfredo','Hahn','Arlene Herzog','Product Directives Consultant','Dynamic','1-785-528-8056 x39916','Hal.Keebler60@gmail.com','https://cdn.fakercloud.com/avatars/keryilmaz_128.jpg','Borders','East Teresashire',150),
	 ('Tyrel','Cole','Mr. Shelia Thompson','Legacy Branding Specialist','International','236-727-5044 x38682','Mariah_Williamson60@hotmail.com','https://cdn.fakercloud.com/avatars/falconerie_128.jpg','Berkshire','Smithburgh',9),
	 ('Rosamond','Schaden','Drew Walsh','Dynamic Configuration Producer','Future','748.895.1217','Alvena87@hotmail.com','https://cdn.fakercloud.com/avatars/sandywoodruff_128.jpg','Cambridgeshire','Brandyntown',12),
	 ('Audra','Heaney','Clifford Prosacco IV','Regional Accountability Director','Global','1-466-921-6636 x6283','Chasity_Mosciski@gmail.com','https://cdn.fakercloud.com/avatars/logorado_128.jpg','Cambridgeshire','Lake Dale',30),
	 ('Abbey','Oberbrunner','Mrs. Chad Bogisich','Investor Optimization Developer','Lead','1-326-667-4395 x35992','Sam_Quitzon42@hotmail.com','https://cdn.fakercloud.com/avatars/aluisio_azevedo_128.jpg','Cambridgeshire','Port Felipe',23),
	 ('Blanca','Mayert','Merle Schiller','Central Communications Orchestrator','Dynamic','206.415.4758 x2610','Bailey_Rau@yahoo.com','https://cdn.fakercloud.com/avatars/carlyson_128.jpg','Berkshire','Port Lilianhaven',69),
	 ('Chaz','MacGyver','Lorenzo Bahringer','Human Identity Consultant','Lead','(488) 801-5356 x672','Jayden_Huel@hotmail.com','https://cdn.fakercloud.com/avatars/scott_riley_128.jpg','Buckinghamshire','South Laurie',94),
	 ('Maudie','Gutkowski','Erick Cronin','Human Factors Manager','Lead','809-375-2185','Eliane.Sanford50@gmail.com','https://cdn.fakercloud.com/avatars/sergeyalmone_128.jpg','Avon','South Ravenmouth',28),
	 ('Davon','Thiel','Wm Gibson','Central Integration Engineer','Principal','663.934.6283','Juliana75@hotmail.com','https://cdn.fakercloud.com/avatars/marcoramires_128.jpg','Avon','Port Astrid',87),
	 ('Niko','Rolfson','Doreen Shanahan','Central Communications Assistant','Senior','631.663.7079 x97845','Vernie70@gmail.com','https://cdn.fakercloud.com/avatars/johannesneu_128.jpg','Cambridgeshire','Trentbury',51),
	 ('Garrick','Dooley','Winston Schinner','Central Data Agent','Lead','616.649.3788 x6673','Johnathan4@hotmail.com','https://cdn.fakercloud.com/avatars/nfedoroff_128.jpg','Berkshire','Padbergside',93),
	 ('Marlon','Frami','Jeannette Kling','Internal Infrastructure Assistant','Central','(667) 612-5196 x514','Paolo_Tromp86@hotmail.com','https://cdn.fakercloud.com/avatars/to_soham_128.jpg','Bedfordshire','Framishire',13),
	 ('Armani','Predovic','Howard Grady','Internal Metrics Liaison','Central','533.352.8046 x43215','Vivien36@gmail.com','https://cdn.fakercloud.com/avatars/kirangopal_128.jpg','Borders','Palm Springs',91),
	 ('Jedediah','Bashirian','Ms. Eula Gutkowski','Legacy Applications Engineer','Dynamic','(615) 369-4856','Felicia23@yahoo.com','https://cdn.fakercloud.com/avatars/alevizio_128.jpg','Bedfordshire','Spring Valley',49),
	 ('Wilfredo','Hahn','Arlene Herzog','Product Directives Consultant','Dynamic','1-785-528-8056 x39916','Hal.Keebler60@gmail.com','https://cdn.fakercloud.com/avatars/keryilmaz_128.jpg','Borders','East Teresashire',20),
	 ('Verona','Pacocha','Brad Wyman','Human Group Developer','Dynamic','(349) 541-5064','Imelda_Schmitt@yahoo.com','https://cdn.fakercloud.com/avatars/madshensel_128.jpg','Cambridgeshire','Chicago',96),
	 ('Araceli','O`Conner','Rochelle Hirthe','Internal Creative Specialist','Dynamic','1-784-454-4296 x882','Mara5@gmail.com','https://cdn.fakercloud.com/avatars/gt_128.jpg','Cambridgeshire','Cheektowaga',10),
	 ('Jeramie','Leannon','Pam Kozey','International Tactics Analyst','Product','908.239.8518','Asa.Torp@gmail.com','https://cdn.fakercloud.com/avatars/peejfancher_128.jpg','Borders','West Emorychester',55),
	 ('Ruthe','Yundt','Herman Jones','Corporate Accounts Producer','Corporate','1-231-226-9339 x9458','Lonnie_Gaylord@yahoo.com','https://cdn.fakercloud.com/avatars/baluli_128.jpg','Cambridgeshire','Bayerburgh',24),
	 ('Clarabelle','Flatley','Kara Heller V','Direct Communications Strategist','Investor','(559) 205-7990 x6064','Marilyne_Stroman@hotmail.com','https://cdn.fakercloud.com/avatars/kolsvein_128.jpg','Cambridgeshire','Hampton',84),
	 ('Elza','Ward','Stacey Crooks','Global Quality Representative','Future','233.666.8221','Shany63@yahoo.com','https://cdn.fakercloud.com/avatars/kumarrajan12123_128.jpg','Borders','North Mazie',52),
	 ('Jaida','Schimmel','Stacey Robel','Lead Configuration Supervisor','Senior','(417) 452-6643','Casimer34@hotmail.com','https://cdn.fakercloud.com/avatars/tristanlegros_128.jpg','Avon','Gibsonmouth',24),
	 ('Kyle','Kutch','Joy Conroy','Lead Creative Supervisor','Human','287.976.8797 x5995','Catalina.Grady75@hotmail.com','https://cdn.fakercloud.com/avatars/langate_128.jpg','Avon','South Addison',76),
	 ('Judson','Macejkovic','Lynda Bartell','District Program Manager','Investor','250-542-3079 x636','Newell41@gmail.com','https://cdn.fakercloud.com/avatars/ChrisFarina78_128.jpg','Avon','Norfolk',1),
	 ('Doyle','Kuhn','Andrew Gottlieb PhD','Central Accounts Consultant','Chief','(471) 955-8285 x2007','Alfred.Purdy2@gmail.com','https://cdn.fakercloud.com/avatars/mufaddal_mw_128.jpg','Borders','South Theo',1),
	 ('Wilfredo','Hahn','Arlene Herzog','Product Directives Consultant','Dynamic','1-785-528-8056 x39916','Hal.Keebler60@gmail.com','https://cdn.fakercloud.com/avatars/keryilmaz_128.jpg','Borders','East Teresashire',4),
	 ('Estelle','Murray','Eric Gleichner','Customer Quality Director','Direct','864-878-9333 x5470','Demarcus36@hotmail.com','https://cdn.fakercloud.com/avatars/iamjdeleon_128.jpg','Bedfordshire','Libbieland',18),
	 ('Nola','Maggio','Jerald Howe','International Paradigm Supervisor','Product','(304) 363-4101 x803','Guillermo80@hotmail.com','https://cdn.fakercloud.com/avatars/carlfairclough_128.jpg','Borders','Swiftside',80),
	 ('Addison','Douglas','Glenn Bogisich','Dynamic Identity Architect','Legacy','(618) 518-3191','Jeremy.Heller86@yahoo.com','https://cdn.fakercloud.com/avatars/miguelkooreman_128.jpg','Bedfordshire','Zackland',30),
	 ('Jaydon','Cormier','Shawna Gottlieb','Dynamic Assurance Agent','Legacy','1-968-327-1702 x0911','Orlando.Towne@gmail.com','https://cdn.fakercloud.com/avatars/rtyukmaev_128.jpg','Buckinghamshire','Lysannefurt',97),
	 ('Mario','Purdy','Santos Adams','Customer Security Associate','Central','212-554-7249','Matilda23@gmail.com','https://cdn.fakercloud.com/avatars/goddardlewis_128.jpg','Buckinghamshire','San Marcos',96),
	 ('Clovis','Goodwin','Mattie Moen Jr.','Dynamic Integration Assistant','Principal','1-517-814-9348 x808','Jeanie.Oberbrunner52@gmail.com','https://cdn.fakercloud.com/avatars/d33pthought_128.jpg','Berkshire','Duluth',88),
	 ('Bulah','Toy','Jana Spinka','District Research Officer','Dynamic','950.603.8691','Vaughn.Veum30@hotmail.com','https://cdn.fakercloud.com/avatars/osvaldas_128.jpg','Cambridgeshire','Eloyside',42),
	 ('Ike','Reynolds','Priscilla Hauck','Global Solutions Designer','Dynamic','663-510-4549 x39941','Marisa_Kunze@hotmail.com','https://cdn.fakercloud.com/avatars/ryuchi311_128.jpg','Avon','Pacochaland',13),
	 ('Eulalia','Toy','Ms. Elizabeth Swift','Internal Brand Specialist','Chief','273.579.2451','Cale.Baumbach@yahoo.com','https://cdn.fakercloud.com/avatars/albertaugustin_128.jpg','Borders','Zitaborough',35),
	 ('Wilfredo','Hahn','Arlene Herzog','Product Directives Consultant','Dynamic','1-785-528-8056 x39916','Hal.Keebler60@gmail.com','https://cdn.fakercloud.com/avatars/keryilmaz_128.jpg','Borders','East Teresashire',60),
	 ('Jacklyn','Tillman','Esther Pouros','Dynamic Optimization Associate','International','1-705-604-8418 x7457','Zoila_Daniel77@gmail.com','https://cdn.fakercloud.com/avatars/gregrwilkinson_128.jpg','Cambridgeshire','Orenshire',28),
	 ('Lurline','Quitzon','Leah Wilkinson','Regional Identity Producer','Senior','1-822-293-5089','Adah25@hotmail.com','https://cdn.fakercloud.com/avatars/kevinoh_128.jpg','Bedfordshire','Lake Gladyce',16),
	 ('Mckenna','Sanford','Irene Bergnaum','Senior Mobility Architect','Lead','269-356-9572','Yvonne_Kessler@yahoo.com','https://cdn.fakercloud.com/avatars/dzantievm_128.jpg','Berkshire','South Zachary',56),
	 ('Arvid','Rath','Robin Kulas','Chief Interactions Consultant','District','(572) 827-0878 x8329','Scarlett54@gmail.com','https://cdn.fakercloud.com/avatars/billyroshan_128.jpg','Avon','North Spencerside',34),
	 ('Jules','Predovic','Van Jakubowski','Senior Markets Strategist','Direct','(857) 348-3759 x2786','Eloy63@gmail.com','https://cdn.fakercloud.com/avatars/kuldarkalvik_128.jpg','Buckinghamshire','West Ellastad',8),
	 ('Tillman','Koch','Mattie Metz','Central Tactics Designer','District','1-495-587-1082','Scarlett_Schmeler@yahoo.com','https://cdn.fakercloud.com/avatars/andyisonline_128.jpg','Cambridgeshire','Ann Arbor',6),
	 ('Lucinda','Ebert','Becky Friesen','Corporate Data Associate','Direct','354-200-3103 x61362','Karlie_Haag@yahoo.com','https://cdn.fakercloud.com/avatars/jagan123_128.jpg','Berkshire','Lake Nyamouth',94),
	 ('Hailee','Hyatt','Tracey Prohaska','District Web Planner','Forward','1-375-836-4926 x4635','Mark.Wolff@yahoo.com','https://cdn.fakercloud.com/avatars/balintorosz_128.jpg','Bedfordshire','Huntington Park',43),
	 ('Rory','Hauck','Dr. Cory Borer','Principal Directives Facilitator','Global','(889) 566-4852 x994','Jerry.McKenzie78@gmail.com','https://cdn.fakercloud.com/avatars/hanna_smi_128.jpg','Avon','Isabelshire',89),
	 ('Gabrielle','Collier','Roy Wiza','Chief Operations Orchestrator','Senior','371-846-7940 x749','Dexter_Schowalter@yahoo.com','https://cdn.fakercloud.com/avatars/a_brixen_128.jpg','Avon','Manteca',49),
	 ('Odell','Wehner','Melvin D`Amore','Direct Intranet Designer','Legacy','317.785.8276 x6600','Hudson40@yahoo.com','https://cdn.fakercloud.com/avatars/demersdesigns_128.jpg','Avon','Connellytown',64),
	 ('Colt','Schimmel','Jeannette Turcotte','Investor Assurance Architect','Dynamic','390-238-0854 x5069','Kay38@gmail.com','https://cdn.fakercloud.com/avatars/ernestsemerda_128.jpg','Cambridgeshire','Norwalk',12),
	 ('Abby','Konopelski','Dallas Davis','Direct Interactions Executive','Principal','285-756-8821','Erica_Jast@hotmail.com','https://cdn.fakercloud.com/avatars/iamgarth_128.jpg','Bedfordshire','South Ida',22),
	 ('Davonte','Ebert','Lorena Kuhlman','Dynamic Integration Planner','Regional','1-963-243-3857 x276','Alexander_Mayert71@gmail.com','https://cdn.fakercloud.com/avatars/andresdjasso_128.jpg','Avon','Davontefurt',46),
	 ('Liliane','Bernier','Naomi Watsica','Global Paradigm Supervisor','Direct','(921) 266-5175','Beverly74@gmail.com','https://cdn.fakercloud.com/avatars/tonymillion_128.jpg','Berkshire','Edmond',15),
	 ('Ardith','Prohaska','Calvin Bahringer','Future Research Officer','Regional','1-373-268-5924 x902','Lewis66@gmail.com','https://cdn.fakercloud.com/avatars/sergeyalmone_128.jpg','Buckinghamshire','North Agustinshire',70),
	 ('Cathrine','Beier','Bradley Brekke','Regional Intranet Coordinator','Customer','1-810-979-6821 x1955','Alanna_Satterfield@hotmail.com','https://cdn.fakercloud.com/avatars/vlajki_128.jpg','Avon','Kent',52),
	 ('Lawson','Corkery','Tina Walter','Legacy Branding Representative','Human','781.445.7023','Brook97@hotmail.com','https://cdn.fakercloud.com/avatars/fronx_128.jpg','Buckinghamshire','Langstad',2),
	 ('Roel','Schiller','Sandra Langosh','Dynamic Infrastructure Administrator','Future','432.870.8850','Thalia_Wehner78@gmail.com','https://cdn.fakercloud.com/avatars/jeremyshimko_128.jpg','Borders','Rapid City',58),
	 ('Boyd','Gerlach','Mrs. Jeannie Jaskolski','District Accounts Developer','Internal','(208) 650-5437 x8452','Jeffrey_Dickens40@gmail.com','https://cdn.fakercloud.com/avatars/kianoshp_128.jpg','Buckinghamshire','West Kristina',85),
	 ('Lyla','Cronin','Sherman Farrell II','Investor Identity Consultant','International','906.204.1302','Kraig47@yahoo.com','https://cdn.fakercloud.com/avatars/greenbes_128.jpg','Borders','Akron',21),
	 ('Wilfredo','Hahn','Arlene Herzog','Product Directives Consultant','Dynamic','1-785-528-8056 x39916','Hal.Keebler60@gmail.com','https://cdn.fakercloud.com/avatars/keryilmaz_128.jpg','Borders','East Teresashire',34),
	 ('Chyna','Dicki','Tara Johnson','Chief Accountability Officer','Central','(748) 814-2153','Jerry_Morar@gmail.com','https://cdn.fakercloud.com/avatars/wake_gs_128.jpg','Buckinghamshire','Lakewood',92),
	 ('Aliya','Ruecker','Henry Turner','Central Marketing Analyst','Lead','(956) 595-4922 x994','Halle40@gmail.com','https://cdn.fakercloud.com/avatars/91bilal_128.jpg','Avon','South Nyasia',13),
	 ('Odessa','Konopelski','Nettie Pacocha II','Senior Identity Designer','International','887.798.2807 x4249','Karson58@gmail.com','https://cdn.fakercloud.com/avatars/josecarlospsh_128.jpg','Berkshire','Rowanside',69),
	 ('Ken','Schuppe','Louise Hodkiewicz','Regional Optimization Planner','Regional','292-583-6572 x73721','Mafalda.Denesik@hotmail.com','https://cdn.fakercloud.com/avatars/emsgulam_128.jpg','Bedfordshire','Port Heleneshire',10),
	 ('Jannie','Mueller','Elbert Reichel','Customer Implementation Designer','Investor','1-639-236-3283 x2932','Odie9@hotmail.com','https://cdn.fakercloud.com/avatars/jffgrdnr_128.jpg','Buckinghamshire','Lake April',56),
	 ('Monica','Jones','Kathleen Schneider','Investor Communications Liaison','Global','1-673-718-0307 x8225','Vicente_Hane@yahoo.com','https://cdn.fakercloud.com/avatars/jitachi_128.jpg','Cambridgeshire','Kleinfort',50),
	 ('Noe','Leffler','Brent Wehner','Direct Web Administrator','Lead','591-350-1863','Jeremie8@hotmail.com','https://cdn.fakercloud.com/avatars/davecraige_128.jpg','Cambridgeshire','Simoneview',26),
	 ('Linwood','Stroman','Doreen Langworth','Product Creative Consultant','Chief','(443) 811-7175 x747','Wanda.Beahan32@hotmail.com','https://cdn.fakercloud.com/avatars/sweetdelisa_128.jpg','Bedfordshire','Gary',15),
	 ('Grover','Goyette','Carlos Maggio','Human Usability Manager','Global','714-952-5756','Katarina2@gmail.com','https://cdn.fakercloud.com/avatars/karsh_128.jpg','Cambridgeshire','North Violettetown',59),
	 ('Gregorio','Rolfson','Veronica Gislason','Product Assurance Executive','Regional','257.814.0976','Keaton_Kreiger77@yahoo.com','https://cdn.fakercloud.com/avatars/sergeyalmone_128.jpg','Bedfordshire','Cormierhaven',54),
	 ('Jaron','Hackett','Sheryl Klocko','Customer Brand Supervisor','Central','(711) 591-1508','Dorian_Boehm40@yahoo.com','https://cdn.fakercloud.com/avatars/apriendeau_128.jpg','Borders','Herzogtown',11),
	 ('Ubaldo','Crooks','Virgil Hoppe V','Regional Factors Specialist','Dynamic','(429) 723-1147 x65503','Ron.Mohr@gmail.com','https://cdn.fakercloud.com/avatars/bassamology_128.jpg','Cambridgeshire','Kleinport',14),
	 ('Iliana','Lesch','Annie Macejkovic III','District Web Coordinator','Customer','(943) 774-5529 x687','Soledad92@hotmail.com','https://cdn.fakercloud.com/avatars/olaolusoga_128.jpg','Bedfordshire','Pfannerstillfort',52),
	 ('Brayan','Gorczany','Jean Schimmel','Direct Interactions Associate','Dynamic','(384) 393-7587','Devante47@yahoo.com','https://cdn.fakercloud.com/avatars/mgonto_128.jpg','Avon','Whittier',33),
	 ('Sammie','Cummings','Julia Cruickshank','National Brand Supervisor','Lead','(791) 967-2561 x99221','Yvette_Streich@hotmail.com','https://cdn.fakercloud.com/avatars/gizmeedevil1991_128.jpg','Borders','Kenner',88),
	 ('Danielle','Lueilwitz','Lance Zulauf','Legacy Metrics Technician','Principal','1-348-318-5783 x5289','Dixie_Conroy@hotmail.com','https://cdn.fakercloud.com/avatars/jcubic_128.jpg','Buckinghamshire','Aurora',61),
	 ('Cortez','Connelly','Gwendolyn Sawayn','Chief Accountability Manager','Direct','1-418-341-8847','Devyn_Emmerich98@hotmail.com','https://cdn.fakercloud.com/avatars/flexrs_128.jpg','Berkshire','North Mandyville',89),
	 ('Murl','Champlin','Ryan Swaniawski','Corporate Group Orchestrator','National','(948) 368-6063 x42116','Casey_Bins11@gmail.com','https://cdn.fakercloud.com/avatars/adrienths_128.jpg','Bedfordshire','South Dangeloton',12),
	 ('Wilfredo','Hahn','Arlene Herzog','Product Directives Consultant','Dynamic','1-785-528-8056 x39916','Hal.Keebler60@gmail.com','https://cdn.fakercloud.com/avatars/keryilmaz_128.jpg','Borders','East Teresashire',92),
	 ('Paula','Mann','Melinda Erdman','International Operations Designer','Product','216-713-4657 x3359','Belle_Block72@gmail.com','https://cdn.fakercloud.com/avatars/madshensel_128.jpg','Avon','New Modesta',40),
	 ('Eugene','Hyatt','Verna O`Hara IV','Central Markets Liaison','Senior','(891) 753-0934 x357','Nasir48@hotmail.com','https://cdn.fakercloud.com/avatars/beweinreich_128.jpg','Avon','Delano',57),
	 ('Ahmed','Botsford','Eleanor Balistreri','Lead Operations Strategist','Dynamic','422.326.1204 x25552','Veronica32@gmail.com','https://cdn.fakercloud.com/avatars/ahmetalpbalkan_128.jpg','Berkshire','Eunaside',31),
	 ('Vladimir','Frami','Josefina Abshire','International Functionality Producer','Principal','658.586.8574','Furman21@hotmail.com','https://cdn.fakercloud.com/avatars/chaensel_128.jpg','Berkshire','West Yesenia',27),
	 ('Melvin','Nikolaus','Francisco Stoltenberg','Future Functionality Consultant','District','1-606-266-8110','Edyth_Hickle@gmail.com','https://cdn.fakercloud.com/avatars/AlbertoCococi_128.jpg','Bedfordshire','New Manuelahaven',52);


CREATE TABLE IF NOT EXISTS bookings (
  booking_id SERIAL PRIMARY KEY,
  starts_at TIMESTAMPTZ DEFAULT NULL,
  booked_at TIMESTAMPTZ DEFAULT NULL,
  booked_for INT NOT NULL,
  confirmed INT,
  apartment_id INT,
  customer_id INT,
  CONSTRAINT bookings_booked_for_check CHECK (booked_for >= 0),
  CONSTRAINT bookings_confirmed_check CHECK (confirmed = 0 OR confirmed = 1),
  CONSTRAINT fk_bookings_customers
	FOREIGN KEY (customer_id) 
	REFERENCES customers(customer_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);


INSERT INTO bookings (
	customer_id, starts_at, booked_at, booked_for, apartment_id, confirmed
) 
VALUES 	
	 (125,'2021-11-19T13:22:09.767Z','2021-10-16T08:08:59.839Z',1,NULL,0),
	 (97,'2022-11-18T22:38:13.126Z','2022-10-17T12:31:05.411Z',5,32,0),
	 (8,'2023-11-18T16:08:18.545Z','2023-10-15T00:16:44.889Z',11,98,0),
	 (63,'2021-11-18T22:55:58.485Z','2021-01-10T03:25:37.954Z',4,NULL,0),
	 (28,'2020-11-19T07:09:25.341Z','2020-05-17T20:01:02.244Z',4,32,1),
	 (99,'2021-11-18T18:19:47.775Z','2021-04-09T09:52:51.470Z',2,NULL,1),
	 (50,'2021-11-19T14:20:22.366Z','2021-03-05T05:56:31.594Z',18,72,0),
	 (42,'2021-11-18T18:24:52.359Z','2021-07-02T09:02:52.730Z',5,27,0),
	 (5,'2020-11-18T21:04:38.236Z','2020-09-03T04:00:13.990Z',11,NULL,1),
	 (78,'2021-11-18T16:24:30.166Z','2021-02-11T15:57:27.186Z',2,15,0),
	 (25,'2021-11-18T19:01:52.203Z','2021-11-10T04:02:39.879Z',9,32,1),
	 (76,'2021-11-19T10:08:06.996Z','2021-11-15T09:55:59.415Z',8,24,1),
	 (32,'2021-11-18T22:20:31.058Z','2021-11-01T10:44:41.549Z',6,NULL,1),
	 (53,'2021-11-19T02:14:24.065Z','2021-11-05T16:29:45.949Z',7,137,0),
	 (116,'2021-11-18T21:20:34.042Z','2021-11-12T02:20:27.251Z',8,18,0),
	 (42,'2022-11-19T09:45:45.037Z','2022-10-18T06:18:53.373Z',13,101,0),
	 (101,'2021-11-19T11:03:09.775Z','2021-03-18T01:28:31.484Z',4,NULL,0),
	 (15,'2021-11-18T15:29:27.426Z','2021-02-18T10:15:02.804Z',12,113,1),
	 (116,'2021-11-19T03:20:08.763Z','2021-06-18T01:47:13.971Z',11,123,1),
	 (85,'2023-11-18T15:27:01.805Z','2023-11-17T18:53:46.066Z',8,100,1),
	 (47,'2021-11-18T16:21:12.778Z','2021-05-17T20:05:41.211Z',3,90,1),
	 (103,'2021-11-19T03:08:43.822Z','2021-11-05T22:05:23.206Z',5,52,0),
	 (53,'2021-11-19T12:07:45.883Z','2021-01-18T11:32:38.332Z',17,46,0),
	 (7,'2021-11-19T10:14:00.338Z','2021-04-18T06:17:42.792Z',12,NULL,0),
	 (81,'2021-11-19T10:58:36.583Z','2021-02-17T18:17:01.934Z',17,97,0),
	 (58,'2021-11-19T09:59:39.838Z','2021-08-18T07:32:51.033Z',14,78,1),
	 (96,'2021-11-18T19:52:33.035Z','2021-09-17T23:49:44.940Z',17,16,1),
	 (47,'2020-11-19T00:36:53.714Z','2020-10-17T20:19:33.762Z',2,47,1),
	 (122,'2021-11-19T14:37:11.087Z','2021-11-10T08:00:23.612Z',9,104,1),
	 (95,'2021-11-18T23:06:46.807Z','2021-11-15T21:19:14.904Z',5,NULL,1),
	 (85,'2021-11-18T20:57:36.773Z','2021-11-12T21:50:01.571Z',13,21,1),
	 (106,'2021-11-19T12:38:58.640Z','2021-11-09T23:24:04.140Z',12,88,1),
	 (46,'2021-11-18T20:29:03.359Z','2021-11-04T00:54:00.736Z',10,23,1),
	 (72,'2021-11-18T15:48:34.373Z','2021-11-07T01:31:05.413Z',15,41,0),
	 (56,'2021-11-18T17:02:44.702Z','2021-06-18T14:21:20.542Z',9,93,1),
	 (42,'2023-11-19T01:54:23.507Z','2023-04-17T17:25:59.854Z',15,22,1),
	 (35,'2021-11-19T07:43:46.589Z','2021-03-18T14:04:10.345Z',19,NULL,1),
	 (30,'2021-11-19T06:52:27.239Z','2021-07-18T02:37:50.055Z',6,33,1),
	 (112,'2021-11-19T08:18:30.730Z','2021-08-17T20:39:13.244Z',18,95,0),
	 (9,'2021-11-18T15:49:11.795Z','2021-09-17T16:48:02.147Z',3,83,1),
	 (18,'2021-11-19T00:25:09.946Z','2021-01-18T11:58:36.323Z',16,83,1),
	 (22,'2021-11-18T16:25:28.140Z','2021-01-18T12:50:34.392Z',3,NULL,0),
	 (111,'2022-11-18T17:09:24.114Z','2022-01-17T15:16:15.190Z',6,97,1),
	 (97,'2021-11-19T14:37:49.587Z','2021-04-18T09:40:20.194Z',10,NULL,0),
	 (92,'2021-11-19T08:16:50.395Z','2021-05-17T22:46:02.643Z',6,64,1),
	 (15,'2021-11-19T09:24:02.642Z','2021-03-17T15:38:31.426Z',15,41,1),
	 (125,'2021-11-18T22:24:02.655Z','2021-02-17T21:56:57.230Z',13,106,0),
	 (6,'2021-11-19T07:46:23.872Z','2021-11-02T21:41:53.447Z',20,NULL,0),
	 (6,'2021-11-19T12:59:28.152Z','2021-11-05T18:16:54.930Z',5,95,1),
	 (42,'2021-11-18T20:37:08.037Z','2021-11-07T09:09:21.931Z',8,16,0),
	 (26,'2020-11-19T07:17:11.990Z','2020-11-07T23:37:07.905Z',3,25,0),
	 (59,'2020-11-18T19:22:45.478Z','2020-11-08T04:21:53.917Z',9,NULL,1),
	 (37,'2020-11-19T07:08:38.702Z','2020-11-03T23:33:37.319Z',8,21,0),
	 (117,'2020-11-18T23:38:35.008Z','2020-11-05T13:07:50.216Z',14,46,0),
	 (41,'2021-11-19T10:12:41.996Z','2021-10-18T12:19:38.859Z',20,90,1),
	 (73,'2021-11-19T11:55:54.358Z','2021-07-17T18:37:23.571Z',15,94,0),
	 (40,'2021-11-19T14:45:13.887Z','2021-08-18T08:01:45.323Z',3,93,0),
	 (96,'2021-11-19T03:59:58.638Z','2021-06-17T18:50:33.777Z',20,40,0),
	 (5,'2021-11-19T10:00:37.519Z','2021-09-17T23:36:25.753Z',18,114,0),
	 (125,'2021-11-19T08:06:37.471Z','2021-01-18T14:17:41.983Z',14,87,0),
	 (117,'2021-11-19T01:07:33.894Z','2021-04-17T17:38:57.162Z',5,NULL,1),
	 (3,'2022-11-18T23:05:08.823Z','2022-02-17T23:33:05.058Z',7,69,0),
	 (126,'2022-11-19T01:37:51.408Z','2022-06-17T18:50:21.989Z',6,84,1),
	 (21,'2022-11-19T09:06:44.323Z','2022-03-17T22:06:54.561Z',19,150,0),
	 (8,'2022-11-19T04:54:04.719Z','2022-03-18T14:47:24.825Z',2,160,0),
	 (67,'2021-11-18T23:36:33.471Z','2021-03-18T11:09:23.543Z',13,104,1),
	 (114,'2021-11-18T17:51:01.976Z','2021-05-18T04:52:09.904Z',14,NULL,1),
	 (79,'2021-11-19T10:48:13.750Z','2021-04-18T01:28:30.987Z',6,11,0),
	 (116,'2021-11-19T08:07:52.476Z','2021-02-18T03:25:25.655Z',9,42,0),
	 (80,'2021-11-19T12:03:26.090Z','2021-06-17T22:40:45.883Z',4,30,1),
	 (31,'2021-11-19T10:17:44.036Z','2021-07-18T00:05:15.886Z',15,88,1),
	 (37,'2021-11-18T17:58:57.430Z','2021-08-18T15:08:01.215Z',8,21,0),
	 (76,'2021-11-18T22:40:51.801Z','2021-09-18T04:03:29.627Z',15,88,0),
	 (112,'2021-11-19T00:28:05.026Z','2021-11-18T09:01:56.100Z',2,29,0),
	 (101,'2021-11-18T16:46:56.746Z','2021-11-17T17:05:20.885Z',16,108,0),
	 (103,'2021-11-18T21:39:15.495Z','2021-05-18T04:41:39.142Z',9,57,0),
	 (102,'2022-11-19T12:09:30.457Z','2022-01-17T18:28:04.193Z',2,82,1),
	 (102,'2022-11-18T19:51:02.367Z','2022-02-17T21:29:26.245Z',15,136,0),
	 (68,'2021-11-19T00:22:42.177Z','2021-05-18T12:18:26.672Z',18,NULL,0),
	 (86,'2021-11-19T03:14:52.516Z','2021-11-18T04:08:28.876Z',1,128,1),
	 (50,'2021-11-19T07:00:37.235Z','2021-11-18T09:02:34.519Z',8,107,0),
	 (103,'2021-11-19T11:32:11.600Z','2021-11-18T09:04:40.448Z',7,139,0),
	 (82,'2021-11-18T18:40:00.700Z','2021-06-18T10:57:50.935Z',3,75,0),
	 (85,'2023-11-19T09:55:23.285Z','2023-07-17T23:58:34.958Z',4,141,1),
	 (107,'2021-11-18T20:59:31.406Z','2021-08-18T14:00:42.355Z',5,NULL,1),
	 (18,'2021-11-19T01:49:25.665Z','2021-09-17T23:56:39.335Z',2,33,1),
	 (10,'2021-11-19T11:44:41.354Z','2021-05-18T05:01:56.896Z',16,90,1),
	 (126,'2021-11-18T17:34:13.967Z','2021-06-17T18:48:32.064Z',12,28,1),
	 (113,'2021-11-18T19:19:44.576Z','2021-06-18T04:45:46.762Z',8,90,1),
	 (82,'2021-11-18T17:25:19.027Z','2021-07-17T23:40:43.050Z',20,3,0),
	 (47,'2023-11-19T07:47:54.587Z','2023-04-18T14:17:24.095Z',18,48,1),
	 (118,'2021-11-18T15:46:53.892Z','2021-05-18T09:18:07.868Z',3,35,0),
	 (8,'2021-11-18T19:48:19.504Z','2021-01-17T18:46:22.634Z',11,25,0),
	 (56,'2021-11-19T05:26:42.661Z','2021-04-18T14:18:39.100Z',8,33,0),
	 (91,'2021-11-19T05:20:30.003Z','2021-11-18T13:52:36.688Z',7,59,0),
	 (14,'2021-11-19T03:20:05.074Z','2021-11-17T21:02:26.023Z',2,82,0),
	 (42,'2020-11-18T15:44:30.631Z','2020-11-18T04:59:23.111Z',9,93,1),
	 (107,'2020-11-19T13:12:30.988Z','2020-05-17T21:54:02.540Z',6,8,0),
	 (12,'2020-11-18T15:28:50.276Z','2020-05-17T17:02:16.501Z',14,NULL,0),
	 (88,'2021-11-19T02:02:57.728Z','2021-08-18T08:52:13.983Z',12,32,0),
	 (126,'2021-11-18T16:13:51.263Z','2021-10-17T23:09:03.766Z',16,14,1),
	 (91,'2021-11-19T09:30:27.274Z','2021-03-18T08:27:37.683Z',4,74,1),
	 (23,'2021-11-19T08:27:13.600Z','2021-05-18T10:25:17.720Z',12,98,1),
	 (93,'2021-11-19T06:20:37.466Z','2021-06-18T10:45:21.947Z',2,16,1),
	 (79,'2021-11-19T07:55:55.791Z','2021-07-18T04:00:36.845Z',4,107,1),
	 (30,'2021-11-19T01:42:21.178Z','2021-08-18T02:36:51.301Z',16,12,0),
	 (7,'2021-11-19T06:31:44.443Z','2021-09-17T18:53:13.819Z',1,22,1),
	 (32,'2021-11-19T07:57:37.018Z','2021-10-18T00:51:07.850Z',10,93,0),
	 (113,'2021-11-18T22:50:22.566Z','2021-02-18T09:04:35.806Z',4,96,0),
	 (27,'2021-11-18T18:45:13.604Z','2021-11-18T00:18:32.272Z',12,NULL,1),
	 (114,'2021-11-18T21:13:34.564Z','2021-11-18T12:55:13.534Z',18,49,0),
	 (48,'2021-11-19T11:57:37.272Z','2021-05-17T18:05:43.569Z',9,25,0),
	 (37,'2021-11-19T15:07:54.205Z','2021-05-17T20:34:19.605Z',12,133,0),
	 (114,'2021-11-19T06:01:54.510Z','2021-08-18T03:51:24.070Z',18,18,1),
	 (72,'2021-11-18T20:14:09.503Z','2021-09-17T16:23:27.220Z',5,59,0),
	 (96,'2021-11-18T20:07:19.952Z','2021-07-17T21:38:06.758Z',12,97,1),
	 (102,'2022-11-19T07:38:45.148Z','2022-07-18T00:02:22.232Z',15,68,1),
	 (98,'2022-11-19T12:50:44.117Z','2022-07-18T04:40:10.056Z',14,33,0),
	 (113,'2022-11-18T20:02:48.787Z','2022-08-18T14:08:25.760Z',14,40,0),
	 (73,'2022-11-19T12:55:51.702Z','2022-08-18T08:16:39.471Z',8,66,0),
	 (99,'2022-11-18T22:49:13.940Z','2022-09-17T18:19:20.212Z',15,50,1),
	 (21,'2021-11-19T04:43:52.189Z','2021-09-18T13:06:37.241Z',2,32,0),
	 (21,'2021-11-19T12:45:19.464Z','2021-09-18T08:00:39.894Z',2,105,1),
	 (89,'2021-11-19T07:06:17.369Z','2021-09-17T21:33:46.142Z',8,109,1),
	 (46,'2021-11-18T18:25:12.233Z','2021-08-18T08:00:00.890Z',5,111,1),
	 (88,'2021-11-19T09:42:10.424Z','2021-08-17T19:00:17.875Z',7,60,1),
	 (125,'2023-11-19T13:22:09.767Z','2023-11-14T08:08:59.839Z',1,93,0),
	 (97,'2023-11-18T22:38:13.126Z','2023-11-15T12:31:05.411Z',5,NULL,0),
	 (8,'2023-11-18T16:08:18.545Z','2023-11-17T00:16:44.889Z',11,98,0),
	 (63,'2023-11-18T22:55:58.485Z','2023-11-08T03:25:37.954Z',4,56,0),
	 (28,'2023-11-19T07:09:25.341Z','2023-11-10T20:01:02.244Z',4,33,1),
	 (99,'2021-11-18T18:19:47.775Z','2021-11-02T09:52:51.470Z',2,76,1),
	 (50,'2021-11-19T14:20:22.366Z','2021-11-06T05:56:31.594Z',18,72,0),
	 (42,'2021-11-18T18:24:52.359Z','2021-06-18T09:02:52.730Z',5,27,0),
	 (5,'2021-11-18T21:04:38.236Z','2021-05-18T04:00:13.990Z',11,63,1),
	 (78,'2021-11-18T16:24:30.166Z','2021-06-17T15:57:27.186Z',2,15,0),
	 (25,'2021-11-18T19:01:52.203Z','2021-05-18T04:02:39.879Z',9,40,1),
	 (76,'2021-11-19T10:08:06.996Z','2021-06-18T09:55:59.415Z',8,24,1),
	 (32,'2021-11-18T22:20:31.058Z','2021-05-18T10:44:41.549Z',6,69,1),
	 (53,'2021-11-19T02:14:24.065Z','2021-05-17T16:29:45.949Z',7,37,0),
	 (116,'2021-11-18T21:20:34.042Z','2021-05-18T02:20:27.251Z',8,18,0),
	 (42,'2021-11-19T09:45:45.037Z','2021-08-18T06:18:53.373Z',13,101,0),
	 (101,'2020-11-19T11:03:09.775Z','2020-09-18T01:28:31.484Z',4,132,0),
	 (15,'2020-11-18T15:29:27.426Z','2020-07-18T10:15:02.804Z',12,13,1),
	 (116,'2020-11-19T03:20:08.763Z','2020-08-18T01:47:13.971Z',11,23,1),
	 (85,'2020-11-18T15:27:01.805Z','2020-06-17T18:53:46.066Z',8,100,1),
	 (47,'2020-11-18T16:21:12.778Z','2020-11-17T20:05:41.211Z',3,90,1),
	 (103,'2020-11-19T03:08:43.822Z','2020-11-17T22:05:23.206Z',5,NULL,0),
	 (53,'2021-11-19T12:07:45.883Z','2021-01-18T11:32:38.332Z',17,46,0),
	 (7,'2021-11-19T10:14:00.338Z','2021-01-18T06:17:42.792Z',12,45,0),
	 (81,'2021-11-19T10:58:36.583Z','2021-10-17T18:17:01.934Z',17,97,0),
	 (58,'2021-11-19T09:59:39.838Z','2021-05-18T07:32:51.033Z',14,78,1),
	 (96,'2021-11-18T19:52:33.035Z','2021-07-17T23:49:44.940Z',17,16,1),
	 (47,'2021-11-19T00:36:53.714Z','2021-06-17T20:19:33.762Z',2,47,1),
	 (122,'2021-11-19T14:37:11.087Z','2021-05-18T08:00:23.612Z',9,104,1),
	 (95,'2021-11-18T23:06:46.807Z','2021-04-17T21:19:14.904Z',5,91,1),
	 (85,'2021-11-18T20:57:36.773Z','2021-02-17T21:50:01.571Z',13,21,1),
	 (106,'2021-11-19T12:38:58.640Z','2021-03-17T23:24:04.140Z',12,88,1),
	 (46,'2021-11-18T20:29:03.359Z','2021-06-18T00:54:00.736Z',10,23,1),
	 (72,'2021-11-18T15:48:34.373Z','2021-05-18T01:31:05.413Z',15,41,0),
	 (47,'2021-11-19T02:46:26.719Z','2021-11-18T15:03:17.825Z',17,12,0),
	 (56,'2022-11-18T17:02:44.702Z','2022-11-18T14:21:20.542Z',9,93,1),
	 (42,'2022-11-19T01:54:23.507Z','2022-08-17T17:25:59.854Z',15,22,1),
	 (35,'2022-11-19T07:43:46.589Z','2022-09-18T14:04:10.345Z',19,43,1),
	 (30,'2022-11-19T06:52:27.239Z','2022-07-18T02:37:50.055Z',6,33,1),
	 (112,'2021-11-19T08:18:30.730Z','2021-08-17T20:39:13.244Z',18,95,0),
	 (9,'2021-11-18T15:49:11.795Z','2021-09-17T16:48:02.147Z',3,83,1),
	 (18,'2021-11-19T00:25:09.946Z','2021-01-18T11:58:36.323Z',16,NULL,1),
	 (22,'2021-11-18T16:25:28.140Z','2021-04-18T12:50:34.392Z',3,82,0);
	 

CREATE TABLE IF NOT EXISTS apartments (
  apartment_id SERIAL PRIMARY KEY,
  "name" VARCHAR(45) NOT NULL,
  image VARCHAR(50) DEFAULT NULL,
  country VARCHAR(50) NOT NULL,
  city VARCHAR(50) NOT NULL,
  zip_code CHAR(10),
  address VARCHAR(50) NOT NULL,
  address_2 VARCHAR(50),
  latitude NUMERIC(15, 4), 
  longitude NUMERIC(15, 4), 
  direction VARCHAR(15) NOT NULL,
  booking_id INT,
  CONSTRAINT fk_apartments_bookings
	FOREIGN KEY (booking_id) 
	REFERENCES bookings(booking_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);


INSERT INTO apartments (
	"name", image, country, city, zip_code, address, address_2, latitude, longitude, direction, booking_id
) 
VALUES 	
	 ('Wolff LLC','http://placeimg.com/640/480/city','Bedfordshire','South Macstad','80679','761 Nikita Mews','Suite 306',38.1941,58.315,'North',37),
	 ('O`Keefe - Wunsch','http://placeimg.com/640/480/city','Buckinghamshire','Rosariomouth','32225-6871','016 Jules Harbor','Apt. 583',5.9271,-95.1855,'Northeast',38),
	 ('Waters Group','http://placeimg.com/640/480/city','Cambridgeshire','East Garett','24852-4545','690 Ullrich Ridges','Apt. 303',-10.6776,-105.1542,'West',5),
	 ('McDermott, Little and Waelchi','http://placeimg.com/640/480/city','Buckinghamshire','New Karlmouth','74416-4346','9546 Block Circle','Apt. 616',82.1055,-142.8697,'East',NULL),
	 ('Welch Group','http://placeimg.com/640/480/city','Bedfordshire','Naderborough','60182-2880','92830 Predovic Meadow','Suite 058',-32.5269,45.3129,'West',22),
	 ('Metz - Wunsch','http://placeimg.com/640/480/city','Bedfordshire','Pleasanton','56414','6894 Bins Wells','Suite 495',80.6713,-175.7865,'West',37),
	 ('Ondricka - Cartwright','http://placeimg.com/640/480/city','Bedfordshire','Bozeman','83891','71968 Pollich Pines','Suite 068',-61.4242,24.1151,'Northwest',NULL),
	 ('Cartwright and Sons','http://placeimg.com/640/480/city','Berkshire','Hilmashire','40737-9204','015 Rosalinda Parkway','Apt. 452',73.8368,94.3394,'East',70),
	 ('Ebert Inc','http://placeimg.com/640/480/city','Berkshire','Rancho Santa Margarita','05366-6264','08073 Hartmann Harbors','Apt. 793',-44.5338,-72.9646,'Southeast',76),
	 ('O`Hara - Towne','http://placeimg.com/640/480/city','Berkshire','Hegmannstad','14353-8008','0194 Shirley Estate','Apt. 318',-45.0083,-106.1228,'Southwest',NULL),
	 ('Lindgren LLC','http://placeimg.com/640/480/city','Cambridgeshire','Turlock','90050-0724','835 Casimer Brooks','Suite 680',-26.7704,144.2188,'Northwest',10),
	 ('Hodkiewicz Group','http://placeimg.com/640/480/city','Berkshire','East Norris','58841','542 Labadie Burgs','Suite 371',-69.4822,-179.5697,'Northwest',15),
	 ('Runolfsson, Bradtke and Wolff','http://placeimg.com/640/480/city','Buckinghamshire','Wizaburgh','74319','263 Walker Motorway','Apt. 217',-35.5491,36.7316,'Northwest',78),
	 ('Nikolaus, Rogahn and Ondricka','http://placeimg.com/640/480/city','Bedfordshire','Stammmouth','82951-3467','5152 Edwina Dam','Apt. 851',-58.7717,-55.113,'Southeast',87),
	 ('Cruickshank, Ritchie and Purdy','http://placeimg.com/640/480/city','Cambridgeshire','Ocieville','84929-3733','93754 Filiberto Mission','Suite 907',-34.4685,31.3036,'West',NULL),
	 ('Langworth and Sons','http://placeimg.com/640/480/city','Borders','Rauhaven','49402','457 Metz Flat','Suite 410',-18.437,11.4392,'Southeast',2),
	 ('MacGyver Group','http://placeimg.com/640/480/city','Buckinghamshire','Lake Braedenborough','30931','93106 Parker Drive','Apt. 167',46.1953,-137.6581,'South',16),
	 ('Streich, Russel and Will','http://placeimg.com/640/480/city','Buckinghamshire','Westminster','23514-3594','507 Bennett Forge','Apt. 402',-30.9145,7.9758,'South',93),
	 ('Haag LLC','http://placeimg.com/640/480/city','Berkshire','West Carter','65747-1000','61853 Lindgren Union','Apt. 355',30.6205,-99.3798,'Southwest',16),
	 ('Hickle, Jerde and Watsica','http://placeimg.com/640/480/city','Berkshire','Emardside','21986','9130 Anderson Path','Apt. 324',-29.9816,-171.5498,'North',67),
	 ('Little LLC','http://placeimg.com/640/480/city','Avon','Norwoodview','80469-4183','0425 Zieme Prairie','Apt. 328',6.1634,-49.1943,'Southwest',43),
	 ('Little and Sons','http://placeimg.com/640/480/city','Avon','Myriamfurt','79568-2026','007 Sarina Unions','Apt. 465',-13.1055,11.7036,'West',35),
	 ('Schmitt - Carter','http://placeimg.com/640/480/city','Bedfordshire','Anaischester','11904-8709','91959 Ondricka Loaf','Apt. 912',-56.6477,72.0574,'Southwest',66),
	 ('Tillman - Stark','http://placeimg.com/640/480/city','Avon','New Irving','65249','675 Osborne Springs','Apt. 655',40.2512,32.7595,'Northwest',68),
	 ('McClure, O`Connell and Grady','http://placeimg.com/640/480/city','Cambridgeshire','Rigobertoside','31301-3433','78522 Halvorson Fort','Apt. 492',-54.6271,129.7056,'East',17),
	 ('Schuster Inc','http://placeimg.com/640/480/city','Cambridgeshire','Erdmanville','29378-4489','2931 Alanna Manor','Suite 297',-51.0291,104.1645,'Northeast',76),
	 ('Gulgowski LLC','http://placeimg.com/640/480/city','Cambridgeshire','Dinamouth','27958-2942','61979 Harry Forks','Suite 538',-27.1432,146.3493,'West',51),
	 ('Schmitt LLC','http://placeimg.com/640/480/city','Berkshire','Baileybury','29473','2894 Madilyn Estates','Suite 337',-64.0007,-111.7045,'East',42),
	 ('Rowe, Huels and Nolan','http://placeimg.com/640/480/city','Bedfordshire','Hesperia','47379','0855 McCullough Trail','Suite 271',-81.0103,175.5241,'Southwest',NULL),
	 ('Champlin Group','http://placeimg.com/640/480/city','Berkshire','Josephineberg','40180','270 Pollich Unions','Apt. 899',79.069,-95.4661,'Southwest',73),
	 ('Towne LLC','http://placeimg.com/640/480/city','Berkshire','South Monserrat','55517-3802','59700 Leonard Falls','Suite 279',-12.3558,-99.1729,'Northeast',18),
	 ('Dare and Sons','http://placeimg.com/640/480/city','Bedfordshire','Rasheedton','29406','347 Fadel Lake','Apt. 917',2.8684,19.6504,'Southwest',4),
	 ('Satterfield LLC','http://placeimg.com/640/480/city','Borders','New Deven','52679','114 Gleichner Avenue','Apt. 343',-85.9771,83.6119,'East',5),
	 ('Lubowitz - Hyatt','http://placeimg.com/640/480/city','Bedfordshire','Raymundofort','54615','6816 Rutherford Meadow','Apt. 700',-7.024,74.0549,'Southwest',78),
	 ('Nienow - Zieme','http://placeimg.com/640/480/city','Cambridgeshire','New Gardner','31355','540 Morar Drive','Suite 524',-49.7006,78.9451,'Northeast',71),
	 ('Rippin, Nienow and Donnelly','http://placeimg.com/640/480/city','Bedfordshire','Cathedral City','80287','3655 Kertzmann Ridges','Apt. 611',-23.5449,-71.8978,'North',97),
	 ('Bernier Inc','http://placeimg.com/640/480/city','Buckinghamshire','Port Coltenborough','23238-3279','070 Newell Mountains','Suite 121',-50.9542,-9.3723,'Southwest',74),
	 ('Adams - Abernathy','http://placeimg.com/640/480/city','Borders','Bartlett','24180-9178','5772 Idell Shores','Suite 373',-22.3246,178.741,'West',44),
	 ('Becker, McDermott and Marvin','http://placeimg.com/640/480/city','Avon','Moore','49610','1028 Richard Harbor','Suite 043',62.8777,-98.6119,'East',99),
	 ('Abernathy, Herman and Marks','http://placeimg.com/640/480/city','Avon','Elviebury','12913','75123 Quigley Road','Suite 087',41.3968,51.0063,'East',NULL),
	 ('Yundt - Bernier','http://placeimg.com/640/480/city','Berkshire','Hoboken','04524-1946','5311 Tressie Brooks','Apt. 605',-36.9432,121.4913,'Southeast',35),
	 ('Wehner Inc','http://placeimg.com/640/480/city','Borders','South Lorna','78056','914 Schmeler Trace','Apt. 264',-66.9698,89.8179,'Southeast',29),
	 ('McCullough, Armstrong and Kozey','http://placeimg.com/640/480/city','Cambridgeshire','Fritschfort','34335-1429','049 Stokes Forks','Suite 946',-42.2238,-6.913,'Northeast',3),
	 ('Waters, Hodkiewicz and Cummings','http://placeimg.com/640/480/city','Avon','Mayatown','35268','47805 Kuphal Overpass','Apt. 314',39.1401,-22.3377,'North',68),
	 ('White - Ziemann','http://placeimg.com/640/480/city','Buckinghamshire','North Garretport','61723-1960','340 Charles Mount','Apt. 750',13.9501,-127.5516,'Southeast',18),
	 ('Hirthe, Mayert and Abbott','http://placeimg.com/640/480/city','Avon','Valdosta','33080-2516','109 Seamus Lakes','Suite 955',86.5933,-61.9731,'Northeast',83),
	 ('Legros, Johnston and Ullrich','http://placeimg.com/640/480/city','Bedfordshire','Busterville','65909','55120 Kirlin Stravenue','Suite 702',78.4748,-94.1991,'West',8),
	 ('Metz, Feeney and Marquardt','http://placeimg.com/640/480/city','Avon','South Arnoldchester','61199','2741 Evelyn Wells','Apt. 229',-1.7472,49.9888,'East',5),
	 ('Denesik - Thompson','http://placeimg.com/640/480/city','Bedfordshire','Cartermouth','28711-8560','91023 Marks Light','Suite 730',23.7064,24.5829,'North',28),
	 ('Cormier, Reynolds and Wiegand','http://placeimg.com/640/480/city','Bedfordshire','Emmerichton','89542','2441 Rylee Ranch','Suite 448',-38.6937,58.5908,'Northwest',36),
	 ('Schumm - Leuschke','http://placeimg.com/640/480/city','Borders','Kennedychester','32702-5383','518 Briana Light','Suite 865',-48.5468,-10.8028,'Southwest',58),
	 ('Jakubowski, Wisozk and Donnelly','http://placeimg.com/640/480/city','Avon','South Hollieside','00275','489 Alysson Burgs','Apt. 900',78.3794,-72.757,'South',49),
	 ('Connelly - Hartmann','http://placeimg.com/640/480/city','Bedfordshire','Reingerbury','39484-0960','2383 Ebert Avenue','Suite 265',15.0336,-173.206,'West',61),
	 ('Kuhic, Cremin and Nienow','http://placeimg.com/640/480/city','Bedfordshire','North Winston','05119','2424 Emelia Parkway','Apt. 273',-75.4771,-13.5541,'West',37),
	 ('Cormier, Botsford and Wolf','http://placeimg.com/640/480/city','Berkshire','Bradenton','47563','68298 Tillman Freeway','Apt. 690',-12.5872,150.4307,'West',10),
	 ('Jacobi - Hand','http://placeimg.com/640/480/city','Bedfordshire','Port Magdalenaberg','81897','271 Steuber Cliff','Suite 490',81.1087,-108.1922,'Northwest',NULL),
	 ('Botsford - Beer','http://placeimg.com/640/480/city','Cambridgeshire','Boyermouth','48983-9521','655 Rocky Row','Apt. 019',-12.3766,90.3885,'East',60),
	 ('Moore Inc','http://placeimg.com/640/480/city','Borders','Lake Kurtberg','34318','425 Cummings Tunnel','Apt. 605',-28.842,179.6248,'East',60),
	 ('Bode, Carter and Roob','http://placeimg.com/640/480/city','Buckinghamshire','Elliottborough','60381-3121','8753 Turner Squares','Apt. 054',36.7663,65.2866,'Northeast',76),
	 ('Waelchi Group','http://placeimg.com/640/480/city','Berkshire','North Gerard','66710-2471','557 Ernser Road','Apt. 142',-17.2362,-52.0576,'Southwest',93),
	 ('Ledner, Kertzmann and Botsford','http://placeimg.com/640/480/city','Buckinghamshire','Texas City','90952-7327','8235 Bobby Hill','Suite 221',-87.5879,-164.9875,'Northwest',90),
	 ('Armstrong Group','http://placeimg.com/640/480/city','Avon','Port Thalia','73424-8988','279 Grimes Course','Apt. 113',-75.2545,76.0359,'North',6),
	 ('Bartoletti, O`Connell and Buckridge','http://placeimg.com/640/480/city','Berkshire','Zolaview','47747','3736 Esther Ports','Apt. 418',-13.5245,78.8681,'Northwest',39),
	 ('Smith, Huel and Huel','http://placeimg.com/640/480/city','Avon','McKinney','46417','2732 Kunze Heights','Suite 073',32.9926,127.0232,'South',80),
	 ('Gibson - Heidenreich','http://placeimg.com/640/480/city','Avon','East Orlandshire','16818','299 Deonte Forges','Suite 926',-46.0266,-52.5982,'East',57),
	 ('Beer Inc','http://placeimg.com/640/480/city','Berkshire','South Lewport','04988-6529','348 Ernser Creek','Suite 356',31.4881,-7.0439,'South',NULL),
	 ('Howe LLC','http://placeimg.com/640/480/city','Borders','North Darby','57157','1664 Jillian Union','Suite 352',-62.8213,-44.0795,'Southeast',21),
	 ('Shanahan, Witting and Jacobson','http://placeimg.com/640/480/city','Berkshire','South Christopherborough','09547-5070','980 Cassin Rapid','Apt. 374',82.6553,-29.5273,'Southwest',15),
	 ('Bradtke - Bernhard','http://placeimg.com/640/480/city','Avon','Lake Kaileebury','13061','4978 Witting Port','Suite 811',28.5359,-57.5573,'West',10),
	 ('Will LLC','http://placeimg.com/640/480/city','Borders','Zboncakfort','76539','599 Leuschke Ways','Suite 475',25.9727,-15.5066,'Southeast',74),
	 ('Ratke - Rogahn','http://placeimg.com/640/480/city','Cambridgeshire','South Margarete','02969','590 Maye Square','Suite 133',-34.2777,59.3492,'Northwest',64),
	 ('Kling, Wilderman and Hansen','http://placeimg.com/640/480/city','Buckinghamshire','Norenefurt','50242','8884 Lauriane Stream','Apt. 017',27.3216,-177.7965,'West',54),
	 ('Quigley and Sons','http://placeimg.com/640/480/city','Borders','South Marty','64916-2092','8227 Derrick Rapids','Apt. 271',20.9997,-45.7533,'Northeast',84),
	 ('Volkman, Thiel and Schulist','http://placeimg.com/640/480/city','Bedfordshire','Iowa City','06480','077 Bradtke Viaduct','Apt. 208',-75.9405,161.4289,'Southeast',NULL),
	 ('Kihn, Paucek and Carter','http://placeimg.com/640/480/city','Berkshire','Haleyhaven','18722-4219','5742 Runte Vista','Suite 996',-85.2893,136.4228,'East',56),
	 ('Bins and Sons','http://placeimg.com/640/480/city','Avon','Kertzmannmouth','86932','18313 Lizzie Row','Apt. 903',40.4398,176.0136,'North',73),
	 ('Crooks LLC','http://placeimg.com/640/480/city','Buckinghamshire','West Elisafort','74529','3222 Nicolas Bypass','Suite 383',21.6169,64.9738,'North',NULL),
	 ('Rolfson - Nader','http://placeimg.com/640/480/city','Berkshire','South Brisa','55507','1746 Johnson Harbors','Apt. 948',-52.7313,150.2467,'Southeast',49),
	 ('Bogisich, Tromp and O`Conner','http://placeimg.com/640/480/city','Buckinghamshire','Raoulhaven','75620-2131','8972 Prosacco Glens','Suite 354',-73.7736,-164.5863,'Southwest',97),
	 ('Lubowitz, McKenzie and Treutel','http://placeimg.com/640/480/city','Avon','Lake Alfton','73658-5538','80001 Devonte Estates','Suite 003',-51.3627,122.8067,'North',33),
	 ('Heller, Kirlin and Kirlin','http://placeimg.com/640/480/city','Berkshire','West Josiahberg','77714','68702 Laisha Place','Apt. 394',-0.7679,91.9955,'Northwest',39),
	 ('Kohler - Grant','http://placeimg.com/640/480/city','Cambridgeshire','East Christview','48031-0423','912 Swaniawski Vista','Apt. 280',-81.8604,127.6818,'North',22),
	 ('Leuschke - Breitenberg','http://placeimg.com/640/480/city','Buckinghamshire','North Ernestoton','89209','7726 Leannon Haven','Apt. 710',68.8783,51.8336,'Southeast',NULL),
	 ('Connelly - Kihn','http://placeimg.com/640/480/city','Bedfordshire','North Graham','12312-4511','7545 Stokes Ville','Apt. 561',-54.1103,-101.4496,'Southeast',99),
	 ('Bode Group','http://placeimg.com/640/480/city','Berkshire','East Elisechester','36162','51717 Chester Station','Apt. 787',-45.8774,-146.1084,'Southeast',40),
	 ('Swaniawski, Kris and Casper','http://placeimg.com/640/480/city','Bedfordshire','North Eda','86745','0046 Jayden Court','Suite 430',87.1683,-146.8946,'South',94),
	 ('Ankunding - Gibson','http://placeimg.com/640/480/city','Avon','Weymouth Town','74701-9356','73339 Ziemann Port','Apt. 021',-87.7366,162.6008,'Southeast',72),
	 ('Upton, Lesch and Leffler','http://placeimg.com/640/480/city','Bedfordshire','Huntington Park','82018-3794','4661 Annamarie Camp','Suite 462',-52.3535,-3.7364,'North',85),
	 ('Torphy, Roberts and Hammes','http://placeimg.com/640/480/city','Bedfordshire','Schroederhaven','57387-6146','9198 Barton Knoll','Apt. 134',-33.2241,-23.3023,'Southeast',NULL),
	 ('O`Reilly - King','http://placeimg.com/640/480/city','Bedfordshire','Ferryland','89620-4742','5111 Torp View','Suite 030',69.384,-82.8434,'Northwest',22),
	 ('Schmidt - Crist','http://placeimg.com/640/480/city','Bedfordshire','Soniachester','65920','676 Conn Courts','Suite 535',32.7788,175.9985,'Northwest',16),
	 ('Weimann, Conroy and Greenfelder','http://placeimg.com/640/480/city','Cambridgeshire','Port Generalland','62790','08479 Hane View','Suite 779',-3.735,-15.772,'East',72),
	 ('Gaylord Group','http://placeimg.com/640/480/city','Cambridgeshire','Lake Keeley','03782','63732 Kemmer Valley','Suite 300',52.9573,77.0681,'West',26),
	 ('Ondricka - Sanford','http://placeimg.com/640/480/city','Cambridgeshire','New Marco','94980-6207','614 Buster Cove','Suite 035',-25.5203,6.8926,'Northwest',NULL),
	 ('Harber Inc','http://placeimg.com/640/480/city','Borders','Daphneefort','25010-8675','0793 Reichel Keys','Suite 147',48.0027,75.6682,'Southwest',72),
	 ('Mayert and Sons','http://placeimg.com/640/480/city','Berkshire','Jastberg','68873-7559','660 Kuhlman Hollow','Apt. 698',14.0222,-119.9575,'West',11),
	 ('White - Mayer','http://placeimg.com/640/480/city','Borders','Blacksburg','98061','73986 Leuschke Shore','Apt. 007',-46.3781,-80.2542,'North',59),
	 ('Wilderman - Mante','http://placeimg.com/640/480/city','Bedfordshire','Stromanshire','54524','3926 Dietrich Points','Apt. 344',-73.4902,-163.5809,'East',90),
	 ('Quitzon, Rath and Carter','http://placeimg.com/640/480/city','Borders','Cummingsmouth','19195-1552','0962 Alfreda Field','Suite 134',25.3545,109.9022,'Northwest',13),
	 ('Franecki, Rath and Deckow','http://placeimg.com/640/480/city','Cambridgeshire','Sauerberg','71297','0096 Daniel Trail','Suite 954',-49.7424,19.0314,'Southwest',NULL),
	 ('Tillman Group','http://placeimg.com/640/480/city','Berkshire','New Elmoretown','01578-8271','402 Nienow Cliffs','Apt. 107',-18.5072,-152.9886,'Northeast',72),
	 ('Volkman - Denesik','http://placeimg.com/640/480/city','Cambridgeshire','Douglasport','41795-0366','7314 Turner Plain','Suite 929',-39.6958,-178.4883,'West',13),
	 ('Shanahan Group','http://placeimg.com/640/480/city','Buckinghamshire','Bayerside','08859','3151 Kris Motorway','Suite 734',-47.5376,47.4335,'Northeast',78),
	 ('Haley Group','http://placeimg.com/640/480/city','Avon','East Kristofferfurt','49355-2313','701 Colleen Gardens','Suite 514',22.1393,-117.1663,'Northeast',NULL),
	 ('Reinger and Sons','http://placeimg.com/640/480/city','Avon','Naderfort','39528-0598','65587 Maximilian River','Suite 456',44.7747,101.8602,'West',67),
	 ('Lang, Harber and Erdman','http://placeimg.com/640/480/city','Berkshire','East Gilbertview','54377','7392 Christiansen Villages','Apt. 549',42.8633,-73.6368,'Northwest',95),
	 ('Swaniawski Inc','http://placeimg.com/640/480/city','Borders','Carrollview','84754-3783','598 Mraz Cape','Suite 519',-63.8571,-88.6334,'Southwest',20),
	 ('Brakus, Anderson and D`Amore','http://placeimg.com/640/480/city','Avon','Rodrickton','04417','490 Prosacco Mall','Apt. 978',34.5273,-128.2908,'Northeast',NULL),
	 ('Pfannerstill - Homenick','http://placeimg.com/640/480/city','Berkshire','Weimannton','34402-8372','6109 Godfrey Pines','Suite 687',30.9882,3.8896,'Southeast',72),
	 ('Sporer, Rau and Hackett','http://placeimg.com/640/480/city','Buckinghamshire','East Camrynville','48017-7318','33115 Zackery Harbor','Apt. 044',28.2913,120.1567,'South',37),
	 ('Blick, Abshire and McDermott','http://placeimg.com/640/480/city','Avon','West Eulahberg','82155-1515','4257 Runolfsdottir Springs','Apt. 378',-39.3775,73.6115,'South',NULL),
	 ('Osinski, Rohan and Friesen','http://placeimg.com/640/480/city','Borders','Longview','55898-9240','62522 Maye Views','Apt. 491',28.9498,-71.5038,'Southeast',45),
	 ('Sanford Group','http://placeimg.com/640/480/city','Berkshire','New Melodyhaven','12848-2796','3105 Dion Walks','Suite 210',74.1427,84.8494,'Northeast',77),
	 ('Okuneva, Kulas and Bayer','http://placeimg.com/640/480/city','Berkshire','Elnafurt','68031','6449 Evangeline Way','Apt. 892',37.8726,-166.1304,'Southwest',NULL),
	 ('Runte - Hamill','http://placeimg.com/640/480/city','Bedfordshire','Arelyville','91773-0335','99308 Glover Streets','Suite 214',79.7989,36.1647,'West',66),
	 ('Moore - Hackett','http://placeimg.com/640/480/city','Avon','Port Pat','20200','42000 Lonny Lodge','Suite 133',-81.9006,-133.688,'North',3),
	 ('Collier Inc','http://placeimg.com/640/480/city','Avon','Patricialand','83899','37180 Grimes Gateway','Suite 573',-89.6617,-3.2167,'Southeast',NULL),
	 ('Yundt Group','http://placeimg.com/640/480/city','Bedfordshire','Jeanfurt','02461','45914 Wuckert Skyway','Suite 537',26.8188,-33.9183,'South',91),
	 ('Stehr, Marks and Jacobson','http://placeimg.com/640/480/city','Berkshire','Kayceeburgh','05484','7845 Cruickshank Glen','Apt. 666',22.0461,168.9516,'East',NULL),
	 ('Stanton LLC','http://placeimg.com/640/480/city','Cambridgeshire','Livonia','87060-6380','7730 Fahey Groves','Apt. 117',54.2232,-45.0768,'Northwest',81),
	 ('Cummerata LLC','http://placeimg.com/640/480/city','Bedfordshire','Orvilleburgh','45491-3693','98738 Alayna Mountain','Apt. 474',-47.5477,-125.7289,'Southwest',35),
	 ('Emard LLC','http://placeimg.com/640/480/city','Bedfordshire','Maryjanechester','37515-7576','378 Lamont Manor','Apt. 973',-65.3991,-51.1749,'Southeast',52),
	 ('Buckridge Group','http://placeimg.com/640/480/city','Buckinghamshire','East Hoyt','22166-6974','0844 Gottlieb Spur','Apt. 383',-27.6636,-105.5614,'Northwest',44),
	 ('Hauck Group','http://placeimg.com/640/480/city','Cambridgeshire','East Camylleview','59281-2586','215 Dooley Passage','Suite 055',-49.5332,25.9815,'Southeast',NULL),
	 ('Thompson Group','http://placeimg.com/640/480/city','Berkshire','Plano','83551-6146','48578 Swift Mission','Suite 529',-84.2807,109.8943,'Northeast',11),
	 ('Huel and Sons','http://placeimg.com/640/480/city','Borders','South Matilda','26942-1162','684 Freida Views','Apt. 812',-58.1426,-154.9795,'South',NULL),
	 ('Spencer, Koss and Bergnaum','http://placeimg.com/640/480/city','Buckinghamshire','Baumbachshire','41410-2472','73676 Terry Skyway','Apt. 322',-88.5015,-21.4911,'South',29),
	 ('Grimes - Walsh','http://placeimg.com/640/480/city','Berkshire','Koelpinfurt','08617-5098','600 Sandrine Coves','Apt. 396',-80.6639,111.9027,'Northwest',67),
	 ('Wolff, Bins and Lang','http://placeimg.com/640/480/city','Buckinghamshire','North Asaborough','47046-6485','516 Katelyn Lock','Suite 457',19.0321,80.1572,'Northeast',NULL),
	 ('Barrows Inc','http://placeimg.com/640/480/city','Berkshire','Nienowbury','59411','34979 Janelle Passage','Suite 021',68.8962,113.9715,'Northeast',43),
	 ('Sawayn, Stark and Dicki','http://placeimg.com/640/480/city','Buckinghamshire','Lake Oriemouth','28582-8179','22673 Savanah Camp','Apt. 178',-11.9975,-4.8349,'Southwest',18),
	 ('Smith - Powlowski','http://placeimg.com/640/480/city','Borders','South Jolie','63693','285 Rogahn Rest','Suite 933',73.1286,-50.2609,'East',96),
	 ('Leffler - Casper','http://placeimg.com/640/480/city','Borders','West Chesterberg','69305','62518 Donna Mills','Suite 923',40.9531,132.5193,'Southeast',95),
	 ('Vandervort LLC','http://placeimg.com/640/480/city','Avon','West Annettebury','37078','50973 Bartoletti Unions','Apt. 661',0.5886,-116.3572,'South',45),
	 ('Tromp Inc','http://placeimg.com/640/480/city','Bedfordshire','Aminaville','86050-7909','6704 Benny Prairie','Suite 666',57.6142,96.3358,'Northeast',NULL),
	 ('Wolf - Collier','http://placeimg.com/640/480/city','Buckinghamshire','Lake Forest','94799','2240 Rosendo Mills','Apt. 521',-86.1777,140.5349,'Southwest',30),
	 ('D`Amore Inc','http://placeimg.com/640/480/city','Buckinghamshire','Flower Mound','87684','111 Janessa Inlet','Suite 038',-47.3501,82.8162,'Northeast',83),
	 ('Kemmer Group','http://placeimg.com/640/480/city','Avon','Port Erickahaven','90197-3537','461 Helene Drive','Suite 410',6.7355,-36.0461,'Southeast',41),
	 ('Roob, Herzog and Haag','http://placeimg.com/640/480/city','Borders','North Tevin','78602-7503','80601 Zoila Glen','Apt. 590',-71.7161,83.9274,'Southwest',43),
	 ('Runolfsson - Harris','http://placeimg.com/640/480/city','Bedfordshire','Pflugerville','20839-2859','8763 Zemlak Lodge','Apt. 085',-30.0072,-89.2641,'Southwest',NULL),
	 ('Robel - Klocko','http://placeimg.com/640/480/city','Berkshire','East Sarahshire','27428','34502 Grady Fork','Apt. 832',-77.9303,-104.6019,'North',49),
	 ('Moore, Streich and Howell','http://placeimg.com/640/480/city','Berkshire','Hillsshire','32634','060 Jakubowski Circles','Suite 683',-14.5444,-109.9973,'Northeast',18),
	 ('Dietrich, Heidenreich and Schuppe','http://placeimg.com/640/480/city','Avon','East Elinor','36960-7459','408 Hilll Junction','Apt. 600',-59.3419,-158.0067,'Southwest',70),
	 ('Kiehn, Kovacek and Marvin','http://placeimg.com/640/480/city','Buckinghamshire','New Kiarramouth','66860-8673','4176 Ryan Islands','Suite 892',60.2707,-87.2091,'North',3),
	 ('Kuphal, Weimann and Thompson','http://placeimg.com/640/480/city','Berkshire','East Taryntown','83082','828 Alexandra Port','Suite 163',43.8219,109.5011,'South',NULL),
	 ('Wunsch - Carter','http://placeimg.com/640/480/city','Borders','West Lincolnville','76908','677 Crona Springs','Suite 837',-61.215,-99.5561,'Southwest',21),
	 ('Padberg, Langosh and Sipes','http://placeimg.com/640/480/city','Buckinghamshire','South Anaborough','01528-7668','3813 Cruickshank River','Suite 593',-48.8242,-34.976,'East',36),
	 ('Roob, Kirlin and Weber','http://placeimg.com/640/480/city','Berkshire','Port Anjalifurt','86533-5705','811 Stefanie Mission','Suite 916',-40.7135,44.4657,'West',NULL),
	 ('Sanford LLC','http://placeimg.com/640/480/city','Borders','North Mervinberg','13468','95131 Marjorie Path','Apt. 797',29.1416,127.1921,'Southwest',7),
	 ('Howell, Bergstrom and MacGyver','http://placeimg.com/640/480/city','Buckinghamshire','West Russelshire','17939','674 Rau Field','Suite 098',10.4786,-31.0548,'East',43),
	 ('Will Group','http://placeimg.com/640/480/city','Bedfordshire','Mohammadborough','68056-7541','75484 Jacobi Keys','Suite 340',-44.4403,175.4722,'South',79),
	 ('Hilpert - Sanford','http://placeimg.com/640/480/city','Bedfordshire','South Lenniestad','86147-5946','368 Garry Spurs','Apt. 144',77.9146,-81.2208,'Southeast',57),
	 ('Reinger, Halvorson and Dickinson','http://placeimg.com/640/480/city','Berkshire','West Domenick','31277','931 Schultz Plains','Apt. 542',-28.5056,-0.9749,'Northeast',NULL),
	 ('Schumm - Hand','http://placeimg.com/640/480/city','Buckinghamshire','South Meta','18091-9144','70685 Hegmann Park','Suite 673',9.3978,-17.3197,'West',21),
	 ('Spencer LLC','http://placeimg.com/640/480/city','Bedfordshire','Elwynburgh','63709','60961 Etha Centers','Apt. 638',61.5109,-10.3258,'Northwest',45),
	 ('Weimann, Donnelly and Hegmann','http://placeimg.com/640/480/city','Avon','Landenton','14509-6107','9173 Lueilwitz Camp','Apt. 770',-74.3436,-123.1041,'East',47),
	 ('Davis, Rath and O`Keefe','http://placeimg.com/640/480/city','Bedfordshire','Huntington Park','87600','69838 Bode Ford','Suite 194',-2.5838,-128.059,'Northwest',75),
	 ('Haley, Stehr and Mayert','http://placeimg.com/640/480/city','Berkshire','West Nathenborough','03771','637 Melody Stream','Apt. 498',45.8766,-46.6299,'West',17),
	 ('VonRueden and Sons','http://placeimg.com/640/480/city','Borders','South Helgamouth','91671-7698','6332 Gabrielle Ways','Suite 839',41.7393,-57.1891,'South',NULL),
	 ('White - Lindgren','http://placeimg.com/640/480/city','Avon','West Jamir','99314-7475','85561 Johnson Expressway','Suite 047',-67.5961,-96.6056,'Northwest',60);


SELECT
	CONCAT(a.address, ' ', a.address_2) AS apartment_address,
	b.booked_for
FROM
	apartments AS a
JOIN
	bookings AS b
ON
	b.booking_id = a.booking_id
ORDER BY
	a.apartment_id;
	

SELECT
	a.name,
	a.country,
	CAST(b.booked_at AS DATE)
FROM
	apartments AS a
	
LEFT JOIN
	bookings AS b
ON
	a.booking_id = b.booking_id
LIMIT 10;


SELECT
	b.booking_id,
	CAST(b.starts_at AS DATE),
	b.apartment_id,
	CONCAT(c.first_name, ' ', c.last_name) AS customer_name
FROM
	bookings AS b
RIGHT JOIN
	customers AS c
ON
	b.customer_id = c.customer_id
ORDER BY
	customer_name ASC
LIMIT 10;



SELECT
	b.booking_id,
	a.name AS apartment_owner,
	a.apartment_id,
	CONCAT(c.first_name, ' ',c.last_name) AS customer_name
FROM
	bookings AS b
FULL JOIN
	apartments AS a
ON
	a.booking_id = b.booking_id
FULL JOIN
	customers AS c
ON
	b.customer_id = c.customer_id
ORDER BY
	b.booking_id ASC,
	apartment_owner ASC,
	customer_name ASC;


SELECT
	b.booking_id,
	c.first_name AS customer_name
FROM
	bookings AS b
CROSS JOIN
	customers AS c
ORDER BY
	customer_name;

SELECT
	b.booking_id,
	b.apartment_id,
	c.companion_full_name
FROM
	bookings AS b
JOIN
	customers AS c
USING 
	(customer_id)
WHERE
	b.apartment_id IS NULL;



SELECT
	b.apartment_id,
	b.booked_for,
	c.first_name,
	c.country
FROM
	bookings AS b
JOIN
	customers AS c
USING
	(customer_id)
WHERE 
	c.job_type = 'Lead';



SELECT
	COUNT(*)
FROM 
	bookings
JOIN
	customers AS c
USING 
	(customer_id)
WHERE 
	c.last_name = 'Hahn';



SELECT
	a.name,
	SUM(b.booked_for)
FROM
	apartments AS a
JOIN
	bookings AS b
USING
	(apartment_id)
GROUP BY
	a.name
ORDER BY
	a.name;



SELECT
	a.country,
	COUNT(b.booking_id) AS booking_count
FROM
	bookings AS b
JOIN
	apartments AS a
USING
	(apartment_id)
WHERE 
	b.booked_at > '2021-05-18 07:52:09.904+03' 
		AND 
	b.booked_at < '2021-09-17 19:48:02.147+03'
GROUP BY
	a.country
ORDER BY
	booking_count DESC;
	



