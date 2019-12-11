-- 1. Devuelve un listado con los empleados y los datos de los departamentos donde trabaja cada uno.
SELECT 
 empleado.nombre AS NOMBRE,
 empleado.apellido1 ,
 departamento.nombre AS DEPARTAMENTO
 FROM 
 empleado
 INNER JOIN
 departamento
 ON 
 empleado.codigo=departamento.codigo;
 
-- 2 Devuelve un listado con los empleados y los datos de los departamentos donde trabaja cada uno. Ordena el resultado, en primer lugar por el nombre del departamento (en orden alfabético) y en segundo lugar por los apellidos y el nombre de los empleados.


SELECT 
empleado.nombre, empleado.apellido1,departamento.nombre
from
empleado
inner join
departamento
on
empleado.codigo=departamento.codigo;
ORDER BY departamento.nombre ASC ;

-- 3 Devuelve un listado con el código y el nombre del departamento, solamente de aquellos departamentos que tienen empleados.

SELECT
PRODUCTO.CODIGO AS CODPROD,
PRODUCTO.NOMBRE AS NOMPROD,
FABRICANTE.CODIGO AS CODFAB,
FABRICANTE.NOMBRE AS NOMFAB
FROM PRODUCTO
INNER JOIN 
FABRICANTE ON PRODUCTO.CODIGO_FABRICANTE = FABRICANTE.CODIGO;



SELECT 
empleado.nombre, empleado.apellido1,departamento.nombre
from
empleado
inner join
departamento
on
empleado.codigo=departamento.codigo;














 
 
 

