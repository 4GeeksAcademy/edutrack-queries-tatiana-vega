-- Q1: Listar todas las inscripciones del curso 'Intro to Python'
SELECT student_name, student_email, completion_percentage
FROM enrollments
WHERE course_title = 'Intro to Python';

-- Q2: Obtener inscripciones con completion_percentage menor a 10
SELECT student_name, student_email, course_title, completion_percentage
FROM enrollments
WHERE completion_percentage < 10;

-- Q3: Encontrar inscripciones donde instructor sea NULL
SELECT *
FROM enrollments
WHERE instructor IS NULL;

-- Q4: Los 5 estudiantes con mayor porcentaje de completado que no han aprobado
SELECT student_name, student_email, course_title, completion_percentage
FROM enrollments
WHERE passed = false
ORDER BY completion_percentage DESC
LIMIT 5;

-- Q5: Mostrar inscripciones con enrollment_date desde '2024-07-01'
SELECT *
FROM enrollments
WHERE enrollment_date >= '2024-07-01'
ORDER BY enrollment_date DESC;

-- Q6: INSERT del registro de inscripción faltante
INSERT INTO enrollments (id, student_id, student_name, student_email, course_id, course_title, category, enrollment_date, completion_percentage, passed, monthly_fee_paid, instructor)
VALUES (18, 3, 'Lucia Fernandes', 'lucia.fernandes@student.edutrack.com', 5, 'Advanced Python', 'Programming', '2025-04-01', 0, false, 69.99, 'Carlos Vega');

-- Q7: UPDATE de inscripciones con instructor NULL a 'Pending assignment'
UPDATE enrollments
SET instructor = 'Pending assignment'
WHERE instructor IS NULL;

-- Q8: DELETE de inscripciones ligadas a cuentas de prueba (@test.com)
DELETE FROM enrollments
WHERE student_email LIKE '%@test.com%';

-- Q9: Contar número de inscripciones agrupado por category
SELECT category, COUNT(*) AS cantidad_inscripciones
FROM enrollments
GROUP BY category;

-- Q10: Promedio de completion_percentage por course_title
SELECT course_title, AVG(completion_percentage) AS promedio_curso
FROM enrollments
GROUP BY course_title
ORDER BY promedio_curso ASC;

-- Q11: Cursos con más de 3 inscripciones (usando HAVING)
SELECT course_title, COUNT(*) AS inscriptos
FROM enrollments
GROUP BY course_title
HAVING COUNT(*) > 3;

-- Q12: Ingresos totales (SUM de monthly_fee_paid) por category
SELECT category, SUM(monthly_fee_paid) AS total_ingresos_mensual
FROM enrollments
GROUP BY category
ORDER BY total_ingresos_mensual DESC;
