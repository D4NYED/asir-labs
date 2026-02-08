CREATE DATABASE IF NOT EXISTS Prueba;
USE Prueba;

CREATE TABLE Articulos (
    Codarticulo INT PRIMARY KEY AUTO_INCREMENT,
    Descripcion VARCHAR(100) NOT NULL UNIQUE,
    Precio DECIMAL(10,2) NOT NULL CHECK (Precio >= 0),
    Inventario INT NOT NULL DEFAULT 0 CHECK (Inventario >= 0)
);
