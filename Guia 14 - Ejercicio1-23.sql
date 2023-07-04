/*
23. Hallar el salario más alto, el más bajo y la diferencia entre ellos.
*/
select (max(sal_emp)-min(sal_emp)) as diferencia from empleados;