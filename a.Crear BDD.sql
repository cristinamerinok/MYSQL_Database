DROP DATABASE if exists Alimentacion;
CREATE DATABASE Alimentacion;
USE Alimentacion;

CREATE TABLE Ingredientes(
codIngrediente SMALLINT AUTO_INCREMENT PRIMARY KEY,
alergenos BOOLEAN DEFAULT FALSE, -- ¿Contiene alérgenos? Sí/No
nombre VARCHAR(50) UNIQUE NOT NULL, --  Nombre del ingrediente
sabor ENUM ('Salado','Dulce','Amargo','Agrio','Ácido','Agridulce',
'Neutro', 'Aromático','Picante','Graso','Crujiente')
);

CREATE TABLE Comidas (
    codComida SMALLINT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) UNIQUE NOT NULL, -- Nombre del plato
    tipo VARCHAR(50), -- Ensalada, postre, entrante, etc.
    descripcion TINYTEXT, -- Descripción breve del plato
    origen VARCHAR (50), -- País, continente, región, época...
    alergenos BOOLEAN DEFAULT FALSE -- ¿Contiene alérgenos? Sí/No
);

CREATE TABLE comida_ingredientes ( -- Tabla de enlace entre ingredientes y comidas
	codComidaIngredientes SMALLINT AUTO_INCREMENT PRIMARY KEY,
    codComida SMALLINT,
    codIngrediente SMALLINT,
    cantidad VARCHAR(50), -- 100 gramos, 2 cucharadas, 3 piezas pequeñas...
    FOREIGN KEY (codComida) REFERENCES comidas(codComida)
    ON UPDATE CASCADE ON DELETE SET NULL,
    FOREIGN KEY (codIngrediente) REFERENCES ingredientes(codIngrediente)
	ON UPDATE CASCADE ON DELETE SET NULL
);

CREATE TABLE Alergenos (
    codAlergeno SMALLINT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(60) UNIQUE NOT NULL -- Nombre del alérgeno (lácteos, gluten, huevos...)
);

CREATE TABLE ingrediente_alergenos ( -- Tabla de enlace entre ingredientes y alérgenos
	codIngredientesAlergenos SMALLINT AUTO_INCREMENT PRIMARY KEY,
    codIngrediente SMALLINT,
    codAlergeno SMALLINT,
    FOREIGN KEY (codIngrediente) REFERENCES ingredientes(codIngrediente) 
    ON UPDATE CASCADE ON DELETE SET NULL,
    FOREIGN KEY (codAlergeno) REFERENCES alergenos(codAlergeno)
	ON UPDATE CASCADE ON DELETE SET NULL
);
