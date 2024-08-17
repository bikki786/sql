-- Active: 1720334982065@@127.0.0.1@3306@amma_hotel
-- Active: 1720334982065@@127.0.0.1@3306@amma_hotel-- Active: 1720334982065@@127.0.0.1@3306@amma_hotel-- Active: 1720334982065@@127.0.0.1@3306@amma_hotel

CREATE Table menu(
    id int PRIMARY key AUTO_INCREMENT,
    food_name VARCHAR(30) NOT NULL,
    price float NOT NULL,
    availability varchar(30),   
    food_type VARCHAR(10),
    created_on DATETIME DEFAULT CURRENT_TIMESTAMP,
    created_by int,
    updated_on DATETIME DEFAULT null,
    updated_by int,
    is_deleted int DEFAULT 0
);





CREATE TABLE employee(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    age INT DEFAULT null,
    contact_number VARCHAR(20),
    address VARCHAR(50),
    created_on DATETIME DEFAULT CURRENT_TIMESTAMP,
    created_by INT,
    updated_on DATETIME DEFAULT null,
    updated_by INT,
    is_deleted INT DEFAULT 0
);



CREATE Table order_table(
    id INT PRIMARY KEY AUTO_INCREMENT,
    table_id INT DEFAULT NULL,
    total_price float not null,
    created_on DATETIME DEFAULT CURRENT_TIMESTAMP,
    created_by INT,
    updated_on DATETIME DEFAULT null,
    updated_by INT,
    is_deleted INT DEFAULT 0
);



CREATE TABLE order_food_mapping(
    id INT PRIMARY KEY AUTO_INCREMENT,
    food_id INT NOT NULL,
    order_id INT NOT NULL,
    qty INT DEFAULT 1,
    Foreign Key (food_id) REFERENCES menu(id),
    Foreign Key (order_id) REFERENCES order_table(id)
);



INSERT into menu(food_name,price,availability,food_type,created_by)
VALUES ('dosa',55.0,'morning','veg',1),
       ('idly',10.0,'morning','veg',1), 
        ('chicken rice',100,'evening','non-veg',1),
        ('chappathi',30.0,'morning','veg',1),
        ('coffee',15.0,'morning','veg',1),
        ('bread-omelet',20.0,'morning','non-veg',1);



use amma_hotel;


SELECT * from menu m
where m.price=(SELECT max(m1.price) from menu m1);



SELECT * FROM menu




SELECT * from menu m
where m.price=(SELECT max(m.price)from menu m1)


SELECT * from menu
ORDER BY price DESC;

SELECT m.food_type,count(m.price) FROM menu m
GROUP BY food_type;


SELECT * from menu id
WHERE price BETWEEN 20 AND 25;





