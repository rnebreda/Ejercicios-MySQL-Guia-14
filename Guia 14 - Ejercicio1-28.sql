/*
Consulta con Subconsulta
28. Mostrar la lista de los empleados cuyo salario es mayor o igual que el promedio de la 
empresa. Ordenarlo por departamento.
*/
select nombre, sal_emp as salario, id_depto as departamento from empleados where sal_emp >= (select avg(sal_emp) from empleados) order by id_depto;