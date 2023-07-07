/*7. Devuelve un listado con el nombre de producto, precio y nombre de fabricante, de todos
los productos que tengan un precio mayor o igual a $180. Ordene el resultado en primer
lugar por el precio (en orden descendente) y en segundo lugar por el nombre (en orden
ascendente) */ 
 SELECT p.nombre, p.precio, f.nombre
	FROM producto p 
		INNER JOIN fabricante f
			ON p.codigo_fabricante = f.codigo
				WHERE p.precio >= 180 ORDER BY p.precio DESC, p.nombre ASC;