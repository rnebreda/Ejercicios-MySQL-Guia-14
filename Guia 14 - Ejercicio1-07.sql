/*
7. Obtener los datos de los empleados vendedores, ordenados por nombre 
alfabéticamente.
*/
select* from empleados where cargo_emp like "vend%" order by nombre;