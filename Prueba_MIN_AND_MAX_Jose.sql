CREATE DATABASE JosegettaOMG;

USE JosegettaOMG;

CREATE TABLE tbClientes(
	idEstudiante INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50),
    Edad INT
);

INSERT INTO tbClientes (Nombre, Edad) VALUES ('José', 7);
INSERT INTO tbClientes (Nombre, Edad) VALUES ('Anderson', 8);
INSERT INTO tbClientes (Nombre, Edad) VALUES ('El Chino Flores', 9);
INSERT INTO tbClientes (Nombre, Edad) VALUES ('El Chino Pacas', 10);
INSERT INTO tbClientes (Nombre, Edad) VALUES ('Pou', 11);
INSERT INTO tbClientes (Nombre, Edad) VALUES ('Dennis', 12);
INSERT INTO tbClientes (Nombre, Edad) VALUES ('Fernando', 13);

SELECT * FROM tbClientes ORDER BY Nombre ASC;

SELECT MIN(Edad) AS 'Ordenado por el estudiante con menor edad.' FROM tbClientes;
SELECT MAX(Edad) AS 'Ordenado por el estudiante con mayor edad.' FROM tbClientes;