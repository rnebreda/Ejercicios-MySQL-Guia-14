/*8. Lista los nombres de los productos ordenados en primer lugar por el nombre de forma
ascendente y en segundo lugar por el precio de forma descendente.*/ 
SELECT nombre, precio 
	FROM producto 
		ORDER BY nombre ASC, precio DESC;