-- hijos específicos
SELECT * FROM Empleados WHERE N_hijos IN (1,2,3,5);

-- rango fechas
SELECT * FROM Empleados
WHERE Fecha_Nac BETWEEN '1985-01-01' AND '2000-12-31';

-- valores NULL
SELECT * FROM Empleados WHERE N_hijos IS NULL;
