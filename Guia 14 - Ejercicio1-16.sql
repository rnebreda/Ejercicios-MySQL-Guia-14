/*
16. Obtener la lista de los empleados que ganan una comisión superior a su sueldo.
a - comisión no es necesaria
*/
select nombre, comision_emp as comision from empleados where comision_emp > sal_emp;