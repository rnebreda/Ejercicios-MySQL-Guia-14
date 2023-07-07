/*4. Devuelve una lista de todos los productos del fabricante Lenovo. */
 SELECT *
	FROM producto p 
		INNER JOIN fabricante f
			ON p.codigo_fabricante = f.codigo 
				WHERE f.nombre= 'lenovo';