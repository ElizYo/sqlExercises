
-- Nota media de cada profesor 

SELECT P.ID_Profesor, CONCAT(P.Nombre, ' ', P.Apellido) AS Profesor, AVG(Ca.Nota) AS Nota_Media
FROM Profesores AS P
JOIN Calificaciones AS Ca ON Ca.ID_Curso IN (SELECT ID_Curso FROM Calificaciones WHERE ID_Estudiante IN (SELECT ID_Estudiante FROM Estudiantes WHERE ID_Estudiante = Ca.ID_Estudiante))
GROUP BY P.ID_Profesor;


-- Mejor calificacion

SELECT E.ID_Estudiante, CONCAT(E.Nombre, ' ', E.Apellido) AS Estudiante, MAX(Ca.Nota) AS Mejor_Calificacion
FROM Estudiantes AS E
JOIN Calificaciones AS Ca ON E.ID_Estudiante = Ca.ID_Estudiante
GROUP BY E.ID_Estudiante;



-- Cursos Matriculados

SELECT E.ID_Estudiante, CONCAT(E.Nombre, ' ', E.Apellido) AS Estudiante, GROUP_CONCAT(C.Nombre ORDER BY C.Nombre ASC) AS Cursos_Matriculados
FROM Estudiantes AS E
JOIN Calificaciones AS Ca ON E.ID_Estudiante = Ca.ID_Estudiante
JOIN Cursos AS C ON Ca.ID_Curso = C.ID_Curso
GROUP BY E.ID_Estudiante;

-- Los cursos y sus calificaciones promedio desde el curso mas desafiante con promedio mas bajo

SELECT C.Nombre AS Curso, AVG(Ca.Nota) AS Calificacion_Promedio
FROM Cursos AS C
LEFT JOIN Calificaciones AS Ca ON C.ID_Curso = Ca.ID_Curso
GROUP BY C.Nombre
ORDER BY Calificacion_Promedio ASC;

-- Estudiante y profesor que tienen más cursos en común 

SELECT E.ID_Estudiante, CONCAT(E.Nombre, ' ', E.Apellido) AS Estudiante,
       P.ID_Profesor, CONCAT(P.Nombre, ' ', P.Apellido) AS Profesor,
       COUNT(*) AS Cursos_En_Comun
FROM Estudiantes AS E
JOIN Calificaciones AS C ON E.ID_Estudiante = C.ID_Estudiante
JOIN Cursos AS Cu ON C.ID_Curso = Cu.ID_Curso
JOIN Calificaciones AS C2 ON Cu.ID_Curso = C2.ID_Curso
JOIN Profesores AS P ON C2.ID_Estudiante = E.ID_Estudiante
GROUP BY E.ID_Estudiante, P.ID_Profesor
ORDER BY Cursos_En_Comun DESC
LIMIT 1;