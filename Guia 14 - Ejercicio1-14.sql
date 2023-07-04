/*
14. Listar el salario, la comisión, el salario total (salario + comisión) y nombre, de aquellos 
empleados que tienen comisión superior a 1000.
*/
select nombre, sal_emp as salario, comision_emp as comision, (sal_emp+comision_emp) as "salario total" from empleados where comision_emp > 1000;