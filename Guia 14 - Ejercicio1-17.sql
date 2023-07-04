/*
17. Listar los empleados cuya comisión es menor o igual que el 30% de su sueldo.
*/
select nombre from empleados where comision_emp < (sal_emp * 0.3);