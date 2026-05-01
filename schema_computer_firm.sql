create table Product (
	maker  varchar(10),
	model  varchar(50) primary key,
	type   varchar(50)
);


create table PC (
	code   int primary key,
	model  varchar(50) references Product(model),
	speed  smallint,
	ram    smallint,
	hd     real,
	cd     varchar(10),
	price  money
);

create table Laptop (
	code   int primary key,
	model  varchar(50) references Product(model),
	speed  smallint,
	ram    smallint,
	hd     real,
	price  money,
	screen smallint
);

create table Printer (
	code   int primary key,
	model  varchar(50) references Product(model),
	color  char(1),
	type   varchar(10),
	price  money
);

--своя попытка инсерта
insert into product values ('R', '253', 'Printer');
insert into printer (code, model, type, price) values (12, '253', 'laser', 1500.00);


-- нейро тестовые данные
-- Product
INSERT INTO Product VALUES ('A', '1232', 'PC');
INSERT INTO Product VALUES ('A', '1233', 'PC');
INSERT INTO Product VALUES ('A', '1276', 'Printer');
INSERT INTO Product VALUES ('B', '1121', 'PC');
INSERT INTO Product VALUES ('B', '1750', 'Laptop');
INSERT INTO Product VALUES ('B', '1751', 'Laptop');
INSERT INTO Product VALUES ('C', '1288', 'Laptop');
INSERT INTO Product VALUES ('C', '1433', 'Printer');
INSERT INTO Product VALUES ('D', '1260', 'PC');
INSERT INTO Product VALUES ('D', '1434', 'Printer');

-- PC
INSERT INTO PC VALUES (1, '1232', 500, 64, 5.0, '12x', 600.00);
INSERT INTO PC VALUES (2, '1232', 600, 128, 8.0, '24x', 850.00);
INSERT INTO PC VALUES (3, '1233', 750, 128, 20.0, '24x', 950.00);
INSERT INTO PC VALUES (4, '1233', 900, 256, 40.0, '48x', 1150.00);
INSERT INTO PC VALUES (5, '1121', 750, 128, 10.0, '24x', 900.00);
INSERT INTO PC VALUES (6, '1121', 900, 256, 20.0, '48x', 1050.00);
INSERT INTO PC VALUES (7, '1260', 600, 128, 10.0, '24x', 750.00);

-- Laptop
INSERT INTO Laptop VALUES (1, '1750', 750, 128, 12.0, 1200.00, 14);
INSERT INTO Laptop VALUES (2, '1750', 900, 256, 20.0, 1500.00, 15);
INSERT INTO Laptop VALUES (3, '1751', 1000, 256, 30.0, 1800.00, 15);
INSERT INTO Laptop VALUES (4, '1288', 600, 64, 10.0, 950.00, 13);
INSERT INTO Laptop VALUES (5, '1288', 750, 128, 20.0, 1100.00, 14);

-- Printer
INSERT INTO Printer VALUES (1, '1276', 'n', 'Laser', 350.00);
INSERT INTO Printer VALUES (2, '1276', 'y', 'Laser', 500.00);
INSERT INTO Printer VALUES (3, '1433', 'y', 'Jet', 300.00);
INSERT INTO Printer VALUES (4, '1433', 'n', 'Jet', 200.00);
INSERT INTO Printer VALUES (5, '1434', 'n', 'Matrix', 150.00);