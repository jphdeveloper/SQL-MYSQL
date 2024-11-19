CREATE DATABASE IF NOT EXISTS db_ferreteria;
USE db_ferreteria;

CREATE TABLE IF NOT EXISTS clientes (
    idCliente INT PRIMARY KEY AUTO_INCREMENT,
    nombreCompleto VARCHAR(100) NOT NULL,
    telefono VARCHAR(20),
    email VARCHAR(100) NOT NULL UNIQUE,
    direccion VARCHAR(150),
    fechaRegistro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO clientes (nombreCompleto, telefono, email, direccion)
VALUES
('Diego Ramírez', '555-9876', 'diego.ramirez@example.com', 'Calle 23 #45-67, Bogotá'),
('Elena Morales', '555-6543', 'elena.morales@example.com', 'Av. Insurgentes 120, Ciudad de México'),
('Fernando López', '555-3210', 'fernando.lopez@example.com', '1234 Elm Street, Los Ángeles'),
('Carmen Sánchez', '555-4321', 'carmen.sanchez@example.com', 'Av. Corrientes 789, Buenos Aires'),
('Javier Torres', '555-8765', 'javier.torres@example.com', 'Calle Mayor 45, Madrid');