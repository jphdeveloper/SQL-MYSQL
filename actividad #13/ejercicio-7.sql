CREATE DATABASE IF NOT EXISTS db_clinica;
USE db_clinica;

CREATE TABLE IF NOT EXISTS pacientes (
    idPaciente INT PRIMARY KEY AUTO_INCREMENT,
    nombreCompleto VARCHAR(100) NOT NULL,
    fechaNacimiento DATE
);

CREATE TABLE IF NOT EXISTS doctores (
    idDoctor INT PRIMARY KEY AUTO_INCREMENT,
    nombreCompleto VARCHAR(100) NOT NULL,
    especialidad VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS citas (
    idCita INT PRIMARY KEY AUTO_INCREMENT,
    idPaciente INT,
    idDoctor INT,
    fechaCita DATETIME NOT NULL,
    motivo VARCHAR(200),
    FOREIGN KEY (idPaciente) REFERENCES pacientes(idPaciente),
    FOREIGN KEY (idDoctor) REFERENCES doctores(idDoctor)
);