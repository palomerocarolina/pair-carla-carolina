 CREATE SCHEMA `tienda_zapatillas`;
 
 USE `tienda_zapatillas`;
 
 CREATE TABLE Zapatillas (
	id_zapatilla INT AUTO_INCREMENT NOT NULL,
	modelo VARCHAR (45) NOT NULL,
	color VARCHAR (45) NOT NULL,
	PRIMARY KEY (id_zapatilla)
    );

 CREATE TABLE Clientes (
	id_cliente INT AUTO_INCREMENT NOT NULL,
	nombre VARCHAR (45) NOT NULL,
	num_telefono INT NOT NULL,
    email VARCHAR (45) NOT NULL,
    direccion VARCHAR (45) NOT NULL,
    ciudad VARCHAR (45),
    provincia VARCHAR (45) NOT NULL,
    pair VARCHAR (45) NOT NULL,
    codigo_postal VARCHAR (45) NOT NULL,
	PRIMARY KEY (id_cliente)
    );

CREATE TABLE Empleados (
	id_empleado INT AUTO_INCREMENT NOT NULL,
	nombre VARCHAR (45) NOT NULL,
	tienda VARCHAR (45) NOT NULL,
	salario INT,
	fecha_incorporacion DATE NOT NULL,
	PRIMARY KEY (id_empleado)
	);

CREATE TABLE Facturas (
		id_factura INT AUTO_INCREMENT NOT NULL,
		numero_factura VARCHAR (45) NOT NULL,
		fecha DATE NOT NULL,
		id_zapatilla INT NOT NULL,
		id_empleado INT NOT NULL,
		id_cliente INT NOT NULL,
		PRIMARY KEY (id_factura),
		CONSTRAINT FK_id_zapatilla
				FOREIGN KEY (id_zapatilla) 
			REFERENCES Zapatillas (id_zapatilla)
			ON UPDATE CASCADE
            ON DELETE RESTRICT,
		CONSTRAINT FK_id_empleado
				FOREIGN KEY (id_empleado) 
			REFERENCES Empleados (id_empleado)
			ON UPDATE CASCADE
            ON DELETE RESTRICT,
 		CONSTRAINT FK_id_cliente
				FOREIGN KEY (id_cliente) 
			REFERENCES Clientes (id_cliente)
			ON UPDATE CASCADE
            ON DELETE RESTRICT
    );
    
ALTER TABLE Zapatillas 
	ADD COLUMN marca VARCHAR(45) NOT NULL,
    ADD COLUMN talla INT NOT NULL;

ALTER TABLE Empleados
	ADD salario FLOAT NOT NULL;
    
ALTER TABLE Clientes
	DROP COLUMN pair;
    
ALTER TABLE Facturas
	ADD COLUMN Total FLOAT;
    
INSERT INTO Zapatillas (modelo, color, marca, talla)
	VALUES ("XQYUN", "Negro", "Nike", 42),
    ("UOPMN", "Rosas", "Nike", 39),
    ("OPNYT", "Verdes", "Adidas", 35);

INSERT INTO Empleados (nombre, tienda, salario, fecha_incorporacion)
	VALUES ("Laura", "Alcobendas", 25987, "2010-09-03"),
    ("Ester", "Oviedo", 30165.98, "2000-11-29"),
    ("Maria", "Sevilla", NULL, "2001-04-11");

INSERT INTO Clientes (nombre, num_telefono, email, direccion, ciudad, provincia, codigo_postal)
	VALUES ("Monica", "1234567289", "monica@email.com", "Calle Felicidad", "Móstoles", "Madrid", 28176),
    ("Carmen", "298463759", "carmen@email.com", "Calle del Color", "Vigo", "Pontevedra", 23456);

INSERT INTO Facturas (id_factura, numero_factura, fecha, id_zapatilla, id_empleado, id_cliente, total)
	VALUES ("123", "2001-12-11", 1, 2. 1, 54.98),
    ("1234", "2005-05-23", 1, 1, 3, 89.91),
    ("12345", "2015-09-18, 2, 3, 3, 76.23);
    

	

 