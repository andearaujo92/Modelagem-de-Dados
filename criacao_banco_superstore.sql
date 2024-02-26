CREATE DATABASE superstore_db;
USE superstore_db;

-- A tabela abaixo deve ser a última a ser executada devido as referências.
-- Abaixo temos a tabela fato sales. 
CREATE TABLE sales (
    order_id varchar(55) NOT NULL,
    order_date varchar(55) NOT NULL,
    ship_date varchar(55) NOT NULL,
    ship_mode varchar(55),
    customer_id varchar(25)NOT NULL,
    postal_code int(25) NOT NULL,
    product_id varchar(55) NOT NULL,
    primary key(order_id),
    foreign key(customer_id) references customer(customer_id),
    foreign key(postal_code) references location(postal_code),
    foreign key(product_id) references product(product_id)
    );

-- Abaixo temos as tabelas dimensões.
CREATE TABLE customer (
	customer_id varchar(55) NOT NULL,
    customer_name varchar(55),
    segment varchar(55),
    primary key(customer_id)
);

CREATE TABLE location(
	country varchar(125),
    city varchar(155),
    state varchar(155),
    postal_code int(25) NOT NULL,
    region varchar(155),
    primary key(postal_code)
);

CREATE TABLE product(
	product_id varchar(55),
    category varchar(155),
    subcategory varchar(155),
    product_name varchar(155),
    primary key(product_id)
);












