-- total artículos
SELECT COUNT(*) FROM Articulos;

-- stock bajo
SELECT * FROM Articulos WHERE Inventario < 10;

-- ordenar por precio
SELECT * FROM Articulos ORDER BY Precio DESC;

-- valor total inventario
SELECT SUM(Precio * Inventario) AS valor_total FROM Articulos;
