CREATE DATABASE Devcamp;

USE Devcamp;

CREATE TABLE Estudiantes (
    ID_Estudiante INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    Edad INT
);

CREATE TABLE Cursos (
    ID_Curso INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100),
    Descripcion TEXT
);

CREATE TABLE Profesores (
    ID_Profesor INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50)
);

CREATE TABLE Calificaciones (
    ID_Calificacion INT AUTO_INCREMENT PRIMARY KEY,
    ID_Estudiante INT,
    ID_Curso INT,
    Nota DECIMAL(4, 2),
    FOREIGN KEY (ID_Estudiante) REFERENCES Estudiantes(ID_Estudiante),
    FOREIGN KEY (ID_Curso) REFERENCES Cursos(ID_Curso)
);