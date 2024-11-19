CREATE DATABASE IF NOT EXISTS db_empresa;
USE db_empresa;

CREATE TABLE IF NOT EXISTS inventarios (
	idInventario INT PRIMARY KEY AUTO_INCREMENT,
	codigoProducto VARCHAR(50) NOT NULL UNIQUE,
	nombre VARCHAR(100) NOT NULL,
	descripcion TEXT,
	fechaFabricacion DATE,
	fechaRegistro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	cantidadProducto INT DEFAULT 0,
	precioCompra DECIMAL (10,2) NOT NULL,
	precioVenta DECIMAL (10,2) NOT NULL
);

INSERT INTO inventarios (codigoProducto,nombre,descripcion,fechaFabricacion,cantidadProducto,precioCompra,precioVenta)
VALUES 
('PROD002', 'Monitor Samsung 24"', 'Monitor LED Samsung de 24 pulgadas', '2024-02-15', 25, 120.00, 180.00),
('PROD003', 'Mouse Logitech', 'Mouse inalámbrico Logitech', '2024-03-01', 50, 15.00, 30.00),
('PROD004', 'Teclado Mecánico', 'Teclado mecánico retroiluminado RGB', '2024-03-10', 40, 60.00, 100.00),
('PROD005', 'Impresora Epson L3150', 'Impresora multifuncional Epson con sistema EcoTank', '2024-04-05', 15, 180.00, 250.00),
('PROD006', 'Auriculares Sony WH-1000XM4', 'Auriculares inalámbricos con cancelación de ruido', '2024-04-20', 20, 250.00, 350.00);
