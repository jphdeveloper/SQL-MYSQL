CREATE DATABASE IF NOT EXISTS db_tienda;
USE db_tienda;

CREATE TABLE IF NOT EXISTS empleados (
    idEmpleado INT PRIMARY KEY AUTO_INCREMENT,
    nombreCompleto VARCHAR(100) NOT NULL,
    fechaNacimiento DATE NOT NULL,
    fechaContratacion DATE DEFAULT (CURRENT_DATE),
    puesto VARCHAR(50) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    email VARCHAR(100) UNIQUE
);

INSERT INTO empleados (nombreCompleto, fechaNacimiento, fechaContratacion, puesto, salario, email)
VALUES
('Juan Pérez', '1990-05-15', '2024-01-10', 'Gerente de Ventas', 3500.00, 'juan.perez@example.com'),
('María Gómez', '1985-08-22', '2023-11-15', 'Contadora', 2800.00, 'maria.gomez@example.com'),
('Luis Martínez', '1992-03-12', '2024-02-01', 'Desarrollador Web', 3000.00, 'luis.martinez@example.com'),
('Ana Torres', '1997-09-05', '2024-03-01', 'Asistente Administrativa', 1800.00, 'ana.torres@example.com'),
('Pedro López', '1988-12-01', '2024-01-20', 'Técnico en Soporte', 2200.00, 'pedro.lopez@example.com');
