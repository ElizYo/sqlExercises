
-- Rellenar datos Estudiantes
INSERT INTO Estudiantes (Nombre, Apellido, Edad) VALUES
    ('Juan', 'Perez', 20),
    ('Maria', 'Gomez', 22),
    ('Luis', 'Lopez', 21);

-- Rellenar datos Cursos
INSERT INTO Cursos (Nombre, Descripcion) VALUES
    ('Informatica', 'Desarrollo Web'),
    ('App Movil', 'Desarrolo Aplicaciones'),
    ('Ingles', 'Ingles tecnico');

-- Rellenar datos Profesores
INSERT INTO Profesores (Nombre, Apellido) VALUES
    ('Ana', 'Martinez'),
    ('Carlos', 'Rodriguez'),
    ('Elena', 'Garcia');

-- Rellenar datos Calificaciones
INSERT INTO Calificaciones (ID_Estudiante, ID_Curso, Nota) VALUES
    (1, 1, 6.5),
    (1, 2, 9.0),
    (2, 1, 8.0),
    (2, 3, 8.5),
    (3, 2, 5.0),
    (3, 3, 7.5);