/*
24. Hallar el salario promedio por departamento
a - el redondeo (round) no es necesario.
*/
select id_depto as departamento, round(avg(sal_emp)) as "salario promedio" from empleados group by id_depto;