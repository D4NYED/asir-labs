ALTER TABLE Empleados
ADD COLUMN nombreApellidos VARCHAR(100);

UPDATE Empleados
SET nombreApellidos = CONCAT(Nombre, ' ', IFNULL(Apellidos, ''));

