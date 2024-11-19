CREATE DATABASE IF NOT EXISTS db_colegio;
USE db_colegio;

CREATE TABLE IF NOT EXISTS estudiantes (
    idEstudiante INT PRIMARY KEY AUTO_INCREMENT,
    nombreCompleto VARCHAR(100) NOT NULL,
    grado VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS profesores (
    idProfesor INT PRIMARY KEY AUTO_INCREMENT,
    nombreCompleto VARCHAR(100) NOT NULL,
    especialidad VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS asignaturas (
    idAsignatura INT PRIMARY KEY AUTO_INCREMENT,
    idProfesor INT,
    nombreAsignatura VARCHAR(100) NOT NULL,
    FOREIGN KEY (idProfesor) REFERENCES profesores(idProfesor)
);