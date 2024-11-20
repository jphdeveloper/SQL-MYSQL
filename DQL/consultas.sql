-- Selecciona todos los campos (*) de la tabla 'inventarios' y los muestra
SELECT * FROM inventarios;

-- Selecciona campos específicos de la tabla 'inventarios' y los muestra
SELECT nombre, cantidadProducto FROM inventarios;

-- Selecciona todos los campos (*) de la tabla 'inventarios'
-- donde la cantidad de producto (cantidadProducto) es mayor a 20.
SELECT * FROM inventarios WHERE cantidadProducto > 20;

-- Selecciona todos los campos (*) de la tabla 'inventarios'
-- donde el nombre del producto contiene la palabra "Monitor".
SELECT * FROM inventarios WHERE nombre LIKE '%Monitor%';

-- Selecciona todos los campos de la tabla inventarios
-- y los ordena de forma descendente (DESC) por el campo fechaFabricacion
SELECT * FROM inventarios ORDER BY fechaFabricacion DESC;

-- Selecciona cuenta todos los registros de la tabla 'inventarios'
SELECT COUNT(*) FROM inventarios;

-- Utiliza la función de agregación AVG para calcular el precio promedio
-- de todos los productos en el campo 'precioVenta'
SELECT AVG(precioVenta) FROM inventarios;

-- Selecciona todos los campos de la tabla 'inventarios'
-- donde el precio de venta es mayor a 100 y la fecha de
-- fabricación es posterior al 1 de enero de 2024.
SELECT * FROM inventarios
WHERE precioVenta > 100 AND fechaFabricacion > '2024-01-01';

-- Utiliza la función de agregación MIN para encontrar el precio de compra más bajo,
-- y selecciona todos los campos para ese producto específico.
SELECT * FROM inventarios WHERE precioCompra = (SELECT MIN(precioCompra) FROM inventarios);

-- Utiliza la función de agregación SUM para calcular la cantidad total
-- de productos en el campo 'cantidadProducto'.
SELECT SUM(cantidadProducto) AS totalProductos FROM inventarios;