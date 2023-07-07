/*CONSULTA MULTITABLAS */

/*1. Devuelve una lista con el código del producto, nombre del producto, código del fabricante
y nombre del fabricante, de todos los productos de la base de datos. */
SELECT p.codigo, p.nombre, p.codigo_fabricante, f.nombre  
	FROM producto p 
		INNER JOIN fabricante f 
			ON p.codigo_fabricante = f.codigo;