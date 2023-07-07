/*1. Devuelve un listado de todos los fabricantes que existen en la base de datos, junto con los
productos que tiene cada uno de ellos. El listado deberá mostrar también aquellos
fabricantes que no tienen productos asociados. */
SELECT f.nombre, p.nombre 
	FROM  producto p 
		RIGHT JOIN fabricante f 
			ON p.codigo_fabricante = f.codigo;