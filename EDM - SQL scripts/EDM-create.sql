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

-- Creates Database for Eco-Data Management 
CREATE DATABASE ED_Manager;

USE ED_Manager;

/************************************************************
*  Lista de Entidades Informaconais Primarias
************************************************************/
CREATE TABLE users(
  user_id INT NOT NULL AUTO_INCREMENT UNIQUE,
  user_fname VARCHAR(40) NOT NULL,
  user_lname VARCHAR(40) NOT NULL,
  user_phone VARCHAR(9) UNIQUE,
  user_email VARCHAR(40),
  user_birthd DATE,
  CHECK(user_phone NOT LIKE '%[^0-9]%*9'),
  CHECK(LEFT(user_phone,1) = 9),
  CHECK(YEAR(user_birthd) BETWEEN 1922 AND 2004),
  PRIMARY KEY (user_id)
);

CREATE TABLE campaign(
  camp_code INT NOT NULL AUTO_INCREMENT UNIQUE,
  camp_idate DATE NOT NULL,
  camp_fdate DATE NOT NULL,
  camp_discount DECIMAL(2),
  PRIMARY KEY (camp_code)
);
/************************************************************
*  Lista de Entidades Informaconais com FK
************************************************************/

CREATE TABLE products(
  prod_id INT NOT NULL AUTO_INCREMENT UNIQUE,
  prod_name VARCHAR(30)NOT NULL,
  prod_type VARCHAR(30)NOT NULL,
  prod_color VARCHAR(15)NOT NULL,
  prod_price NUMERIC(5,2) NOT NULL,
  camp_code INT DEFAULT NULL,
  PRIMARY KEY (prod_id),
  FOREIGN KEY (camp_code) REFERENCES campaign(camp_code)
);

CREATE TABLE admins(
  ad_salary NUMERIC(5,2),
  user_id INT NOT NULL,
  PRIMARY KEY (user_id),
  FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE address(
  ad_distric VARCHAR(30) NOT NULL,
  ad_city VARCHAR(30) NOT NULL,
  ad_streetname VARCHAR(60) NOT NULL,
  ad_zip4d VARCHAR(4) NOT NULL,
  ad_zip3d VARCHAR(3) NOT NULL,
  CHECK(ad_zip4d NOT LIKE '%[^0-9]%*4'),
  CHECK(ad_zip3d NOT LIKE '%[^0-9]%*3'),
  ad_id INT NOT NULL AUTO_INCREMENT UNIQUE,
  user_id INT NOT NULL,
  PRIMARY KEY (ad_id),
  FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE orders(
  ord_id INT NOT NULL AUTO_INCREMENT UNIQUE,
  ord_totprice NUMERIC(5,2),
  ord_state VARCHAR(30) DEFAULT 'Awaiting payment',
  ord_date DATETIME,
  user_id INT NOT NULL,
  prod_id INT NOT NULL,
  prod_qtd INT NOT NULL DEFAULT 1,
  camp_code INT DEFAULT NULL,
  PRIMARY KEY (ord_id),
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (prod_id) REFERENCES products(prod_id),
  FOREIGN KEY (camp_code) REFERENCES campaign(camp_code)
);

CREATE TABLE cli_info(
  cli_nacionality VARCHAR(30),
  cli_kids INT DEFAULT '0',
  cli_maritalSt VARCHAR(30),
  cli_profession VARCHAR(30),
  clinfo_id INT NOT NULL AUTO_INCREMENT UNIQUE,
  user_id INT NOT NULL,
  PRIMARY KEY (clinfo_id),
  FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE cli_types(
  type_cli VARCHAR(30) NOT NULL DEFAULT('Standart'),
  type_id INT NOT NULL AUTO_INCREMENT UNIQUE,
  user_id INT NOT NULL,
  PRIMARY KEY (type_id),
  FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE clients(
  cli_NIF VARCHAR(9),
  user_id INT NOT NULL,
  ad_id INT NOT NULL,
  type_id INT NOT NULL,
  CHECK(cli_NIF NOT LIKE '%[^0-9]%*9'),
  PRIMARY KEY (user_id),
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (ad_id) REFERENCES address(ad_id),
  FOREIGN KEY (type_id) REFERENCES cli_types(type_id)
);

CREATE TABLE transactions(
  tran_id INT NOT NULL AUTO_INCREMENT UNIQUE,
  tran_card VARCHAR(16) NOT NULL,
  tran_date DATE DEFAULT NULL, 
  user_id INT NOT NULL,
  CHECK(tran_card NOT LIKE '%[^0-9]%*16'),
  PRIMARY KEY (tran_id),
  FOREIGN KEY (user_id) REFERENCES clients(user_id)
);
/********************************************************
*  Lista de Entidades de Associacao 
************************************************************/

CREATE TABLE adds_updates(
  au_date DATE,
  user_id INT NOT NULL,
  prod_id INT NOT NULL,
  PRIMARY KEY (user_id, prod_id),
  FOREIGN KEY (user_id) REFERENCES admins(user_id),
  FOREIGN KEY (prod_id) REFERENCES products(prod_id)
);

CREATE TABLE is_added
(
  prod_qtd INT NOT NULL,
  prod_id INT NOT NULL,
  ord_id INT NOT NULL,
  PRIMARY KEY (prod_id, ord_id),
  FOREIGN KEY (prod_id) REFERENCES products(prod_id),
  FOREIGN KEY (ord_id) REFERENCES orders(ord_id)
);

CREATE TABLE has
(
  clinfo_id INT NOT NULL,
  user_id INT NOT NULL,
  PRIMARY KEY (clinfo_id, user_id),
  FOREIGN KEY (clinfo_id) REFERENCES cli_info(clinfo_id),
  FOREIGN KEY (user_id) REFERENCES clients(user_id)
);

CREATE TABLE makes
(
  ord_date DATE,
  user_id INT NOT NULL,
  ord_id INT NOT NULL,
  PRIMARY KEY (user_id, ord_id),
  FOREIGN KEY (user_id) REFERENCES clients(user_id),
  FOREIGN KEY (ord_id) REFERENCES orders(ord_id)
);
