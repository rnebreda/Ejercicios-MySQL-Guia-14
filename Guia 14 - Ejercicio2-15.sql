/*15. Devuelve una lista con el nombre de todos los productos que contienen la cadena Portátil
en el nombre. */
SELECT nombre 
	FROM producto 
		WHERE nombre 
			LIKE '%portatil%';