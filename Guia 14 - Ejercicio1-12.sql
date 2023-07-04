/*
12. Obtener el valor total a pagar a cada empleado del departamento 3000, que resulta 
de: sumar el salario y la comisión, más una bonificación de 500. Mostrar el nombre del 
empleado y el total a pagar, en orden alfabético. 
a - Agrego columna salario y comision pero no son necesarias.
b - Observar que si quiero que el alias de la columna posea espacios y otros símbolos, lo debo colocar entre comillas.
*/
select nombre, sal_emp as salarios, comision_emp as comision, (sal_emp+comision_emp+500) as "total a pagar" from empleados where id_depto = 3000 order by nombre ;