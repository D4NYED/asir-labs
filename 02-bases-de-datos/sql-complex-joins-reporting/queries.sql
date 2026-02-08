-- Clientes con ventas abonadas
SELECT DISTINCT c.Nombre, c.Apellidos
FROM Clientes c
JOIN Ventas v ON c.ID_Cliente = v.ID_Cliente
WHERE v.Abonado = 1;

-- Clientes que compraron tomates o pimientos
SELECT c.Nombre, c.Apellidos, a.Nombre
FROM Clientes c
JOIN Ventas v ON c.ID_Cliente = v.ID_Cliente
JOIN Articulos a ON v.ID_Articulo = a.ID_Articulo
WHERE a.Nombre IN ('tomates', 'pimientos');

-- Nombre empieza por S
SELECT c.Nombre, c.Apellidos, a.Nombre
FROM Clientes c
JOIN Ventas v ON c.ID_Cliente = v.ID_Cliente
JOIN Articulos a ON v.ID_Articulo = a.ID_Articulo
WHERE a.Nombre IN ('tomates', 'pimientos')
AND c.Nombre LIKE 'S%';
