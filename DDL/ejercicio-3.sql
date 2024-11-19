CREATE DATABASE IF NOT EXISTS db_inventario;
USE db_inventario;

CREATE TABLE IF NOT EXISTS proveedores (
    idProveedor INT PRIMARY KEY AUTO_INCREMENT,
    nombreEmpresa VARCHAR(100) NOT NULL,
    nombreContacto VARCHAR(100) NOT NULL,
    telefono VARCHAR(20),
    direccion VARCHAR(150),
    pais VARCHAR(50)
);

INSERT INTO proveedores (nombreEmpresa, nombreContacto, telefono, direccion, pais)
VALUES
('Tech Supplies Inc.', 'Carlos Rodríguez', '555-1234', 'Av. Principal 123, Ciudad de México', 'México'),
('Global Electronics', 'Sofía Martínez', '555-5678', 'Calle 45 #67-89, Bogotá', 'Colombia'),
('Smart Solutions', 'Andrés González', '555-9101', '1234 Main St, Miami', 'Estados Unidos'),
('Distribuidora Digital', 'Lucía Fernández', '555-1122', 'Avenida Libertador 456, Buenos Aires', 'Argentina'),
('Innovatech Ltd.', 'Raúl Pérez', '555-3344', '123 High Street, Madrid', 'España');
