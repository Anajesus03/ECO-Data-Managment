/************************************************************
*	Grupo: 5     |    Curso: Informática de Gestão
*  	UC: Base de Dados
*
*	Pojeto: Eco-Data Management
*
*  	Nome: Ana Cristina Jesus (20211383)
*   Nome: Matheus Camargo (20210109)
*
************************************************************/

USE ED_Manager;

INSERT INTO users(user_fname, user_lname, user_phone, user_email, user_birthd)
VALUES
	('Quaresma','Nazário','929455500','qnazario@icloud.pt','1999-5-16'),
    ('Serena','Leitão','965551683','serenaml@gmail.com','1995-3-17'),
    ('Amália','Matosinhos','913555403','afgm1985@outlook.pt','1988-11-21'),
    ('Lurdes','Raposo','922555778','lurdes.raposo@gmail.com','1993-10-13'),
    ('Ema','Álvaro','915558563','ema68a@yahoo.pt','1998-3-23'),
    ('Yasmine','Piment','929455569','yasmine15@outlook.pt','2002-5-15'),
    ('Esteves','Bouça','921555645','estevesB91@gmail.com','1991-10-31'),
    ('Teófilo','Serralheiro','935555036','teoserra@outlook.pt','1997-9-23'),
    ('Teófilo','Figueiró','922555379','tefilofig@yahoo.pt','1996-9-13'),
    ('Rodolfo','Fontinha','999555979','rodolfoF78@gmail.com','1978-7-30'),
    ('Henrique','Areosa','922555636','henrtfontinha@outlook.pt','1987-4-13'),
    ('Edgar','Quinaz','929255584','edgarrq91@outlook.pt','1970-9-1'),
    ('Cael','Olivares','935555750','cael.oli@yahoo.pt','1997-7-21'),
    ('Leonor','Pêcego','935554100','leonorp.@gmail.com','1987-4-1'),
    ('Kendrick','Gonçalves','965557750','kgonçalves95@gmail.com','1995-10-16'),
    ('Pedro','Torreiro','915552018','pedroht78@gmail.com','1978-12-27'),
    ('Mário','Quintais','929355566','arioq97@outlook.pt','1997-9-17'),
    ('Rodrigo','Quintela','935550880','rodriQ@yahoo.pt','1999-10-23'),
    ('Miguel','Fontinha','935559792','miguelfont@gmail.com','1995-8-3'),
    ('Miria','Ginjeira','929455587','mginjeira@gmail.com','1974-7-5'),
    ('António','Perdigão','922555421','antoniop99@outlook.pt','1999-3-8'),
    ('José','Loureiro','922555648','zeloureiro@gmail.com','2002-2-7'),
    ('Catarina','Rijo','922555991','rijocata@yahoo.pt','1968-1-6'),
    ('Andreia','Veleda','965553364','andvelda@gmail.com','1984-6-7'),
    ('Óscar','Cambezes','935553992','oscarp.cambezes@gmail.com','1968-12-25'),
    ('Iara','Barbalho','924555515','iarafgb19@gmail.com','1962-11-19'),
    ('Vicente','Fartaria','929455551','vicentejf@gmail.com','1988-12-9'),
    ('Ana','Franca','921555365','ana.franca@gmail.com','1978-11-25'),
    ('Hugo','Ruas','915552371','hugo.ruas@outlook.pt','1962-7-5'),
    ('Dinis','Poças','922555632','dinis.g.pocas@yahoo.pt','1999-1-7'),
    ('Rita','Quaresma','965559010','ritaq005@outlook.pt','2000-4-5'),
    ('Jacinto','Neves','965551648','jfneves@outlook.pt','1965-1-23'),
    ('Guilherme','Silva','915554090','gui.silva@outlook.pt','1971-4-19'),
    ('Henrique','Carvalho','922555610','henriquec@gmail.com','1972-5-19'),
    ('Ricardo','Ruas','935550201','ricardor@gmail.com','1984-8-11'),
    ('Paulo','Portas','965553765','paulorp@gmail.com','1973-10-27'),
    ('Diana','Rijo','929255576','dianarijo@gmail.com','1973-11-8'),
    ('Joana','Gonçalves','929255569','joanafg87@gmail.com','1987-8-29'),
    ('Luísa','Azevedo','935550603','luisaaze@outlook.pt','2000-12-9'),
    ('Gonçalo','Coelho','965554402','gonca.coelho@gmail.com','1973-8-8'),
    ('Joaquim','Mendes','965554412','joaquim.mendes@outlook.pt','1995-3-8'),
    ('Maria','Jesus','921555810','mariajdj@outlook.pt','1969-4-25'),
    ('Matilde','Vaz','935550235','mati.vaz@gmail.com','1965-9-30'),
    ('Maria','Martins','935555540','m.martins@gmail.com','1982-10-12'),
    ('Rita','Silveiro','931255552','rita.sil@gmail.com','1981-2-11'),
    ('Miguel','Torrense','929055534','miguelt@gmail.com','1972-9-12'),
    ('José','Barros','915556135','zebarros@outlook.pt','1977-4-18'),
    ('Vicente','Silva','935551638','vicsilva@yahoo.pt','1964-6-27'),
    ('Susana','Paiva','929455599','susanap@gmail.com','1963-6-22'),
    ('Ronaldo','Quaresma','935556298','ronaldoQ@gmail.com','1991-2-26'),
    ('Fernando','Santos','973555536','fernandoSS@yahoo.pt','1993-1-9'),
    ('Joana','Cravo','922555701','ju.cravo01@yahoo.pt','2001-9-18');


INSERT INTO admins(user_id,ad_salary)
VALUES
	(1,'900.00'),
	(2,'850.00'),
	(3,'850.00'),
	(4,'870.00'),
	(5,'910.00'),
	(6,'800.00'),
	(7,'810.00'),
	(8,'890.00'),
	(9,'900.00'),
	(10,'880.00');


INSERT INTO cli_types(user_id,type_cli)
VALUES
	(11,'Standart'),
    (12,'Standart'),
    (13,'Standart'),
    (14,'VIP'),
	(15,'Standart'),
	(16,'VIP'),    
	(17,'Standart'),
	(18,'Standart'),
	(19,'Standart'),
	(20,'Company'),
	(21,'Standart'),
	(22,'Company'),
	(23,'VIP'),
	(24,'Standart'),
	(25,'Company'),
	(26,'Standart'),
	(27,'Company'),
	(28,'VIP'),
	(29,'Company'),
	(30,'Standart'),
	(31,'Standart'),
	(32,'Standart'),
	(33,'Company'),
	(34,'VIP'),
	(35,'Standart'),
	(36,'Company'),
	(37,'Standart'),
	(38,'Company'),
	(39,'Standart'),
	(40,'Standart'),    
	(41,'Standart'),    
	(42,'Standart'),
	(43,'Standart'),
	(44,'Company'),
	(45,'Standart'),
	(46,'Standart'),
	(47,'VIP'),
	(48,'Standart'),
	(49,'Company'),
	(50,'Company'),
	(51,'VIP'),
	(52,'Company');


INSERT INTO cli_info(user_id,cli_profession,cli_nacionality,cli_maritalSt,cli_kids)
VALUES
	(11,'Polícia','Portuguesa','Casado(a)',1),
    (12,null,'Portuguesa','Casado(a)',1),
    (13,'Polícia','Portuguesa','Solteiro(a)',0),
    (14,'Dentista','Portuguesa','Casado(a)',2),
	(15,'Engenheiro','Brasileira','Casado(a)',2),
	(16,'Dentista','Portuguesa','Casado(a)',1),    
	(17,'Engenheiro','Portuguesa','Casado(a)',1),
	(18,null,'Portuguesa','Casado(a)',2),
	(19,'Polícia','Portuguesa','Viúvo(a)',1),
	(20,'Arquiteto','Portuguesa','Solteiro(a)',0),
	(21,'Médico','Portuguesa','Casado(a)',1),
	(22,'CEO','Norueguesa','Casado(a)',2),
	(23,'Arquiteto','Norueguesa','Casado(a)',1),
	(24,null,'Brasileira','Casado(a)',2),
	(25,'CEO','Brasileira','Separado(a)',2),
	(26,'Engenheiro','Portuguesa','Casado(a)',1),
	(27,'CEO','Norueguesa','Casado(a)',1),
	(28,'Engenheiro','Portuguesa','Casado(a)',1),
	(29,'CEO','Portuguesa','Casado(a)',1),
	(30,null,'Portuguesa','Solteiro(a)',0),
	(31,'Médico','Brasileira','Casado(a)',1),
	(32,'Dentista','Brasileira','Solteiro(a)',0),
	(33,'Designer','Portuguesa','Casado(a)',1),
	(34,'Dentista','Portuguesa','Casado(a)',2),
	(35,null,'Portuguesa','Casado(a)',3),
	(36,'Engenheiro','Norueguesa','Viúvo(a)',1),
	(37,'Engenheiro','Portuguesa','Casado(a)',2),
	(38,'Médico','Portuguesa','Casado(a)',2),
	(39,'Engenheiro','Norueguesa','Casado(a)',3),
	(40,null,'Brasileira','Casado(a)',1),    
	(41,'Designer','Portuguesa','Separado(a)',1),    
	(42,'Operador caixa','Portuguesa','Separado(a)',2),
	(43,null,'Portuguesa','Casado(a)',1),
	(44,'Operador caixa','Portuguesa','Solteiro(a)',0),
	(45,'Engenheiro','Norueguesa','Casado(a)',1),
	(46,'Engenheiro','Brasileira','Solteiro(a)',0),
	(47,'Designer','Portuguesa','Casado(a)',3),
	(48,'Operador caixa','Portuguesa','Casado(a)',3),
	(49,'Engenheiro','Portuguesa','Casado(a)',0),
	(50,'Designer','Norueguesa','Casado(a)',3),
	(51,'Médico','Brasileira','Casado(a)',3),
	(52,'Lojista','Portuguesa','Viúvo(a)',0);


INSERT INTO address(user_id,ad_streetname,ad_city,ad_distric,ad_zip4d,ad_zip3d)
VALUES
	(11,'Avenida Manuel Figueiredo 103','Minde','Santarém','2395','999'),
    (12,'R Pinhão 48','Azeitão','Setúbal','2925','258'),
    (13,'Rua Vasco Gama 115','Couço','Santarém','2100','332'),
    (14,'R Cachoeira 73','Mato Do Viso','Vila Real','5050','028'),
    (15,'Avenida Visconde Valmor 68','Maceira','Lisboa','2560','088'),
    (16,'Avenida Manuel Figueiredo 57','Peras Ruivas','Santarém','2435','600'),
    (17,'R Desidério Bessa 94','Lisboa','Lisboa','1400','155'),
    (18,'R Rampa Alta 83','Património','Porto','4635','142'),
    (19,'Avenida Paris 70','Refugidos','Lisboa','2580','134'),
    (20,'Rua Leite Vasconcelos 98','Budens','Faro','8650','089'),
    (21,'R João C Loureiro 17','Fonte De Angeão','Aveiro','3840','165'),
    (22,'R Jardim 86','Rio Tinto','Porto','4435','455'),
    (23,'Rua Pé Mouro Armz 88','Agualva-cacém','Lisboa','2735','571'),
    (23,'R Poeta João Ruiz 60','Alpedrinha','Castelo Branco','6230','101'),
    (24,'Avenida Duque Ávila 6','Ribamar','Lisboa','2530','663'),
    (25,'R Família Marques 117','Montijo','Setúbal','2870','094'),
    (26,'Avenida Júlio S Dias 48','Maia','Porto','4475','377'),
    (27,'R Cerdeira Ervas 120','Morreira','Braga','4705','487'),
    (28,'R Carne Azeda 30','Funchal','Ilha da Madeira','9060','202'),
    (29,'Travessa Parque 118','Fontainhas','Coimbra','3090','830'),
    (30,'R Maria M Tavares 50','Paraíso Da Mata','Évora','7050','641'),
    (31,'Rua Vale Miguel 32','Aveiro','Aveiro','3800','085'),
    (32,'Praceta Maria Lamas 65','Abrunheira','Lisboa','2710','071'),
    (33,'Avenida Noruega 117','Regada','Vila Real','5000','038'),
    (34,'Rua Doutor Teófilo Braga 33','Monte Cebolada','Évora','7250','201'),
    (35,'R Luís Camões 74','R Luís Camões 74','Bragança','5140','063'),
    (36,'R Sardinha 95','Vermilhas','Viseu','3670','081'),
    (37,'Rua Luísa Tody 117','Quinta Do Conde','Setúbal','2975','116'),
    (38,'Praça Teófilo Braga 57','Gradil','Lisboa','2665','110'),
    (39,'Avenida Escolas 17','Raiva','Aveiro','4550','581'),
    (40,'Rua Jorge Sena 17','Santo Antão Do Tojal','Lisboa','2660','140'),
    (41,'R Bacelo 48','Venda','Braga','4775','271'),
    (42,'Rua Cais 106','Calheta De Nesquim','Ilha do Pico','9930','022'),
    (43,'Rua Vasco Gama 28','Benavente','Santarém','2130','349'),
    (44,'R Stª Bárbara 72','Ferreirim','Viseu','3640','091'),
    (45,'R Principal 118','Guerra','Guarda','6300','115'),
    (46,'Praça Teófilo Braga 109','Loures','Lisboa','2670','495'),
    (47,'R João C Loureiro 67','Angeja',' Aveiro','3850','439'),
    (48,'Avenida Lago 98','Galiza','Lisboa','2765','298'),
    (49,'Avenida República 94','Riboeira','Braga','4750','044'),
    (50,'R Cortinhas Fonte 58','Pena','Porto','4580','702'),
    (51,'R José Malhoa 16','Almada','Setúbal','2810','342'),
    (52,'R Forças Armadas 71','Sabóia','Beja','7665','841');

INSERT INTO clients(user_id,cli_NIF,ad_id,type_id)
VALUES
	(11,'106408232',1,1),
    (12,'167025945',2,2),
    (13,'236771051',3,3),
    (14,'242221181',4,4),
	(15,'193848961',5,5),
	(16,'190597402',6,6),    
	(17,'242125344',7,7),
	(18,'144587122',8,8),
	(19,'146169468',9,9),
	(20,'680089055',10,10),
	(21,'112764517',11,11),
	(22,'603042457',12,12),
	(23,'271766450',13,13),
	(24,'125422997',14,14),
	(25,'814832733',15,15),
	(26,'171410467',16,16),
	(27,'830910328',17,17),
	(28,'185335594',18,18),
	(29,'842403868',19,19),
	(30,'298947390',20,20),
	(31,'213753081',21,21),
	(32,'157960242',22,22),
	(33,'312243979',23,23),
	(34,'194628027',24,24),
	(35,'277873460',25,25),
	(36,'343589621',26,26),
	(37,'270936149',27,27),
	(38,'664567908',28,28),
	(39,'259860590',29,29),
	(40,'239523415',30,30),    
	(41,'237914115',31,31),    
	(42,'239524268',32,32),
	(43,'299610942',33,33),
	(44,'664567908',34,34),
	(45,'243907010',35,35),
	(46,'256170690',36,36),
	(47,'259939420',37,37),
	(48,'203953690',38,38),
	(49,'664567908',39,39),
	(50,'570850967',40,40),
	(51,'581787862',41,41),
	(52,'323076645',42,42);
    
INSERT INTO products(prod_name,prod_color,prod_type,prod_price)
VALUES
    ('Textile Strap','Oak','Piece','3.90'),
    ('Textile Strap','Dark Oak','Piece','3.90'),
    ('Textile Strap','Black','Piece','3.90'),
    ('Textile Strap','White','Piece','3.90'),
    ('Textile Strap','Orange','Piece','3.90'),
    ('KIT','Oak','kit','19.90'),
    ('KIT','Dark Oak','kit','19.90'),
    ('KIT','Black','kit','19.90'),
    ('KIT','White','kit','19.90'),
    ('KIT','Orange','kit','19.90'),
    ('Cork piece C shape','Oak','Piece','5.99'),
    ('Cork piece C shape','Dark Oak','Piece','5.99'),
    ('Cork piece C shape','Black','Piece','5.99'),
    ('Cork piece C shape','White','Piece','5.99'),
    ('Cork piece C shape','Orange','Piece','5.99'),
    ('Cork piece V shape','Oak','Piece','5.99'),
    ('Cork piece V shape','Dark Oak','Piece','5.99'),
    ('Cork piece V shape','Black','Piece','5.99'),
    ('Cork piece V shape','White','Piece','5.99'),
    ('Cork piece V shape','Orange','Piece','5.99'),
    ('Side table Large','Oak','Furniture','15.50'),
    ('Side table Large','Dark Oak','Furniture','15.50'),
    ('Side table Large','Black','Furniture','15.50'),
    ('Side table Large','White','Furniture','15.50'),
    ('Side table Large','Orange','Furniture','15.50'),
    ('Side table Small','Oak','Furniture','10.50'),
    ('Side table Small','Dark Oak','Furniture','10.50'),
    ('Side table Small','Black','Furniture','10.50'),
    ('Side table Small','White','Furniture','10.50'),
    ('Side table Small','Orange','Furniture','10.50'),
    ('Momo 3p. collection','Oak','Furniture','23.90'),
    ('Momo 3p. collection','Dark Oak','Furniture','23.90'),
    ('Momo 3p. collection','Black','Furniture','23.90'),
    ('Momo 3p. collection','White','Furniture','23.90'),
    ('Momo 3p. collection','Orange','Furniture','23.90'),
    ('Shelving unit combo','Oak','Furniture','50.90'),
    ('Shelving unit combo','Dark Oak','Furniture','50.90'),
    ('Shelving unit combo','Black','Furniture','50.90'),
    ('Shelving unit combo','White','Furniture','50.90'),
    ('Shelving unit combo','Orange','Furniture','50.90'),
    ('Module unit combo','Oak','Furniture','35.99'),
    ('Module unit combo','Dark Oak','Furniture','35.99'),
    ('Module unit combo','Black','Furniture','35.99'),
    ('Module unit combo','White','Furniture','35.99'),
    ('Module unit combo','Orange','Furniture','35.99'),
    ('Bookshelf','Oak','Furniture','20.50'),
    ('Bookshelf','Dark Oak','Furniture','20.50'),
    ('Bookshelf','Black','Furniture','20.50'),
    ('Bookshelf','White','Furniture','20.50'),
    ('Bookshelf','Orange','Furniture','20.50'),
    ('Bedside Table','Oak','Furniture','12.99'),
    ('Bedside Table','Dark Oak','Furniture','12.99'),
    ('Bedside Table','Black','Furniture','12.99'),
    ('Bedside Table','White','Furniture','12.99'),
    ('Bedside Table','Orange','Furniture','12.99');

INSERT INTO transactions(user_id,tran_card)
VALUES 
	(11,'4547034440349794'),
    (12,'5268198312234980'),
    (13,'5268198875933580'),
    (14,'4154051561338392'),
    (15,'4659644900611691'),
    (16,'5268197071857056'),
    (17,'5268196126768136'),
    (18,'4406378235804921'),
    (19,'5197242826233660'),
    (20,'4546487561926678'),
    (21,'4169524233666344'),
    (22,'5530579711921230'),
    (23,'5270148574171815'),
    (24,'3755895910485993'),
    (25,'4547038199700628'),
    (26,'5258084795966870'),
    (27,'4151594877594433'),
    (28,'4543199511158079'),
    (29,'4797361173126884'),
    (30,'5270149419502643'),
    (31,'3755892396477112'),
    (32,'3743322889794585'),
    (33,'3755845009042489'),
    (34,'5268193483552237'),
    (35,'5268198838831574'),
    (36,'3755896925794763'),
    (37,'4547034440349794'),
    (38,'4154051561338392'),
    (39,'3743327309907562'),
    (40,'3755641319369754'),
    (41,'5268194115865526'),
    (42,'4659644900611691'),
    (43,'3755778689882173'),
    (44,'5423024250159819'),
    (45,'4406378235804921'),
    (46,'4546487561926678'),
    (47,'3755864953528553'),
    (48,'3755669332684373'),
    (49,'4169524233666344'),
    (50,'5423021006214344'),
    (51,'4547038199700628'),
    (52,'4151594877594433');

INSERT INTO orders(user_id,ord_totprice,ord_state,ord_date,prod_id,prod_qtd)
VALUES
	(13,'19.90','Delivered','2021-11-5 10:33:56',7,1),
    (41,'10.50','Delivered','2021-11-5 10:34:10',27,1),
    (22,'20.50','Delivered','2021-11-5 10:34:54',49,1),
    (43,'7.80','Delivered','2021-11-5 12:54:32',3,2),
    (12,'46.50','Delivered','2021-11-5 23:23:12',24,3),
    (45,'5.99','Delivered','2021-11-6 14:12:23',12,1),
    (23,'35.99','Delivered','2021-12-5 13:43:54',43,1),
    (34,'3.99','Delivered','2021-12-5 15:12:54',1,12),
    (22,'143.40','Delivered','2021-12-5 17:43:42',34,6),
    (34,'10.50','Delivered','2021-12-5 10:56:23',29,1),
    (46,'10.50','Delivered','2021-12-12 10:54:23',30,1),
    (40,'42.00','Packing','2022-4-5 9:58:43',29,4),
    (23,'5.99','Packing','2022-4-5 10:42:12',18,2),
    (42,'19.90','Packing','2022-4-5 10:52:32',10,1),
    (39,'10.50','Packing','2022-4-5 11:43:43',26,1),
    (29,'20.50','Packing','2022-4-5 10:55:23',46,1),
    (16,'23.90','Packing','2022-4-5 10:33:54',32,1),
    (22,'35.94','Packing','2022-4-5 10:33:12',12,6),
    (41,'3.90','In transit','2022-4-5 10:22:11',2,1),
    (35,'5.99','In transit','2022-5-5 10:23:32',11,1),
    (41,'5.99','In transit','2022-5-5 10:33:01',12,1),
    (52,'50.90','In transit','2022-5-5 10:43:19',37,1),
    (28,'119.50','Awaiting Payment','2022-5-5 10:33:56',32,5),
    (15,'12.99','Awaiting Payment','2022-5-5 11:23:50',55,1),
    (23,'35.99','Awaiting Payment','2022-5-5 15:41:26',43,1),
    (12,'5.99','Awaiting Payment','2022-5-7 10:33:56',12,1),
    (25,'107.97','Awaiting Payment','2022-5-7 10:33:56',43,3),
    (13,'5.99','Awaiting Payment','2022-5-7 10:33:56',12,1),
    (19,'23.90','Awaiting Payment','2022-5-8 21:45:21',34,1),
    (32,'5.99','Awaiting Payment','2022-5-8 10:34:00',13,1);
    
INSERT INTO campaign(camp_idate,camp_fdate,camp_discount)
VALUES 
	('2017-11-24','2017-11-24','0.50'),
    ('2017-12-26','2017-12-28','0.40'),
    ('2017-2-14','2017-2-15','0.30'),
    ('2017-5-1','2017-5-1','0.25'),
    ('2017-6-20','2017-6-20','0.25'),
    ('2018-10-29','2018-11-1','0.35'),
    ('2018-11-24','2018-11-24','0.50'),
    ('2018-12-26','2018-12-28','0.40'),
    ('2018-2-14','2018-2-15','0.30'),
    ('2018-5-1','2018-5-1','0.25'),
    ('2018-6-20','2018-6-20','0.25'),
    ('2019-10-29','2019-11-1','0.35'),
    ('2019-11-29','2019-11-29','0.50'),
    ('2019-12-26','2019-12-28','0.40'),
    ('2019-2-14','2019-2-15','0.30'),
    ('2019-5-1','2019-5-1','0.25'),
    ('2019-6-20','2019-6-20','0.25'),
    ('2020-10-29','2017-11-1','0.35'),
    ('2020-5-1','2020-5-1','0.25'),
    ('2020-11-27','2020-11-27','0.50'),
    ('2020-12-26','2020-12-28','0.40'),
    ('2020-2-14','2020-2-15','0.30'),
    ('2017-6-20','2017-6-20','0.25'),
    ('2021-5-1','2021-5-1','0.25'),
    ('2021-2-14','2021-2-15','0.30'),
    ('2021-11-27','2021-11-27','0.50'),
    ('2021-12-26','2021-12-28','0.40'),
    ('2022-2-14','2022-2-15','0.30'),
    ('2022-11-25 ','2022-11-25','0.50'),
    ('2022-12-26','2022-12-28','0.40');


