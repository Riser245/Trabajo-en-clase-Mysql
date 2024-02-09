CREATE DATABASE Ejemplo1;

USE Ejemplo1;

CREATE TABLE ventas(
id_venta INT ,
producto VARCHAR(50),
cantidad INT,
precio_unitario DECIMAL(10,2)
);

INSERT INTO ventas (id_venta, producto,cantidad, precio_unitario) VALUES
(1, 'Producto A',5, 10.50),
(2, 'Producto B',3, 15.75),
(3, 'Producto C',8, 20.00),
(4, 'Producto D',2, 12.25);

SELECT COUNT (id_venta) AS total_ventas FROM ventas;

SELECT SUM (cantidad) AS total_cantidad_vendida FROM ventas;

SELECT AVG (precio_unitario) AS precio_promedio FROM ventas;
