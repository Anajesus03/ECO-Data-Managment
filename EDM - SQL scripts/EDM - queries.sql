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

-- Mostrar toda a informação dos clientes
SELECT *
FROM users 
	JOIN clients ON users.user_id = clients.user_id
	JOIN address ON clients.user_id = address.user_id
	JOIN cli_info ON address.user_id = cli_info.user_id
	JOIN cli_types ON cli_info.user_id = cli_types.user_id;
    
-- Indentificar os Clientes Standart
SELECT user_id, type_cli
FROM cli_types
HAVING type_cli = 'Standart';

-- Indentificar os Clientes VIP
SELECT user_id, type_cli
FROM cli_types
HAVING type_cli = 'VIP';

-- Indentificar os Clientes Empresa
SELECT user_id, type_cli
FROM cli_types
HAVING type_cli = 'Company';

-- Quantas Encomendas foram feitas em 2022
SELECT COUNT(ord_id)
FROM orders
WHERE YEAR(ord_date) = 2022;

-- Agrupar os produtos por cor
SELECT COUNT(prod_id), prod_color
FROM products
GROUP BY prod_color; 

-- Listar clients e as suas moradas
SELECT * 
FROM clients
	INNER JOIN address ON address.user_id=clients.user_id;

-- Listar as encomendas juntamente com os seu clientes
SELECT *
FROM orders
	LEFT JOIN users ON users.user_id = orders.user_id
GROUP BY ord_id;


-- VIEWS
CREATE VIEW ClientesLisboa AS
SELECT ad_distric
FROM address
WHERE ad_distric = 'Lisboa';

SELECT * FROM ClientesLisboa;

CREATE VIEW Produtos AS
SELECT DISTINCT prod_name, prod_price 
FROM products;

SELECT * FROM Produtos;

