-- 1 Devuelve un listado con los empleados y los datos de los departamentos donde trabaja cada uno.
select
concat(empleado.nombre,' ',empleado.apellido1) as empleado,
departamento.nombre
from empleado
inner join departamento on empleado.codigo_departamento = departamento.codigo;

-- 2 Devuelve un listado con los empleados y los datos de los departamentos donde trabaja cada uno. Ordena el resultado, en primer lugar por el nombre del departamento (en orden alfabético) y en segundo lugar por los apellidos y el nombre de los empleados.
select
concat(empleado.nombre,' ',empleado.apellido1) as empleado,
departamento.nombre
from empleado
inner join departamento on empleado.codigo_departamento = departamento.codigo
order by departamento.nombre asc;

-- 3 Devuelve un listado con el código y el nombre del departamento, solamente de aquellos departamentos que tienen empleados.

select 
distinct(departamento.codigo),
departamento.nombre as departamento
from departamento
left join empleado on departamento.codigo = empleado.codigo_departamento
where empleado.codigo_departamento is not null;

-- 4 Devuelve un listado con el código, el nombre del departamento y el valor del presupuesto actual del que dispone, solamente de aquellos departamentos que tienen empleados. El valor del presupuesto actual lo puede calcular restando al valor del presupuesto inicial (columna presupuesto) el valor de los gastos que ha generado (columna gastos).
select 
departamento.codigo,
departamento.nombre as departamento,
(departamento.presupuesto - departamento.gastos) as PA
from departamento
left join empleado on departamento.codigo = empleado.codigo_departamento
where empleado.codigo_departamento is not null;


-- 5 Devuelve el nombre del departamento donde trabaja el empleado que tiene el nif 38382980M.

select
departamento.nombre
from empleado
inner join departamento on empleado.codigo_departamento = departamento.codigo
where empleado.nif = '38382980M';

-- 6 Devuelve el nombre del departamento donde trabaja el empleado Pepe Ruiz Santana.
select
departamento.nombre
from empleado
inner join departamento on empleado.codigo_departamento = departamento.codigo
where empleado.nombre = 'Pepe';

-- 7 Devuelve un listado con los datos de los empleados que trabajan en el departamento de I+D. Ordena el resultado alfabéticamente.


select
empleado.nif,
concat(empleado.nombre,' ',empleado.apellido1) as empleado,
departamento.nombre
from empleado
inner join departamento on empleado.codigo_departamento = departamento.codigo
where departamento.nombre = 'I+D';

-- 8 Devuelve un listado con los datos de los empleados que trabajan en el departamento de Sistemas, Contabilidad o I+D. Ordena el resultado alfabéticamente.
select
empleado.nif,
concat(empleado.nombre,' ',empleado.apellido1) as empleado,
departamento.nombre
from empleado
inner join departamento on empleado.codigo_departamento = departamento.codigo
where departamento.nombre IN ('Sistemas','Contabilidad','I+D');

-- 9 Devuelve una lista con el nombre de los empleados que tienen los departamentos que no tienen un presupuesto entre 100000 y 200000 euros.
select
empleado.nif,
concat(empleado.nombre,' ',empleado.apellido1) as empleado,
departamento.nombre,
departamento.presupuesto
from empleado
inner join departamento on empleado.codigo_departamento = departamento.codigo
where departamento.presupuesto NOT BETWEEN 100000 AND 200000;

