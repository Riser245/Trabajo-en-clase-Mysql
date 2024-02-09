CREATE DATABASE Tienda;

USE Tienda;

CREATE TABLE productos (
    id_producto INT PRIMARY KEY,
    nombre VARCHAR(50),
    precio DECIMAL(10, 2)
);

CREATE TABLE ventas (
    id_venta INT PRIMARY KEY,
    id_producto INT,
    cantidad INT,
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);

INSERT INTO productos (id_producto, nombre, precio) VALUES
(1, 'Camisa', 20.00),
(2, 'Pantalón', 30.00),
(3, 'Vestido', 50.00);

INSERT INTO ventas (id_venta, id_producto, cantidad) VALUES
(1, 1, 5),
(2, 2, 3),
(3, 1, 2);

SELECT id_producto, nombre
FROM productos
WHERE id_producto IN (SELECT id_producto FROM ventas);



