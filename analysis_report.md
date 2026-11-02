# Informe de Auditoría de Datos — EduTrack

Este documento contiene los resultados obtenidos tras ejecutar la auditoría sobre la base de datos `enrollments`.

---

### Q1: Inscripciones en el curso 'Intro to Python'
Filtro aplicado para obtener a los estudiantes inscritos en la materia *Intro to Python*:

| student_name | student_email                     | completion_percentage |
| ------------ | --------------------------------- | --------------------- |
| Emily Watson | emily.watson@student.edutrack.com | 85                    |
| Klaus Weber  | klaus.weber@student.edutrack.com  | 92                    |
| Marco Rossi  | marco.rossi@student.edutrack.com  | 88                    |
| James Miller | james.miller@test.com             | 30                    |
| Priya Sharma | priya.sharma@student.edutrack.com | 55                    |

---

### Q2: Inscripciones en riesgo de abandono (< 10%)
Identificación de estudiantes con avance menor al 10% para activar alertas de retención:

| student_name    | student_email                        | course_title          | completion_percentage |
| --------------- | ------------------------------------ | --------------------- | --------------------- |
| Lucia Fernandes | lucia.fernandes@student.edutrack.com | Web Design Basics     | 5                     |
| Lucia Fernandes | lucia.fernandes@student.edutrack.com | Digital Marketing 101 | 3                     |
| Yuki Nakamura   | yuki.nakamura@student.edutrack.com   | UI/UX Fundamentals    | 0                     |
| Pierre Dubois   | pierre.dubois@student.edutrack.com   | UI/UX Fundamentals    | 0                     |

---

### Q3: Inscripciones sin instructor asignado

| id | student_id | student_name  | student_email                      | course_id | course_title       | category | enrollment_date | completion_percentage | passed | monthly_fee_paid | instructor |
| -- | ---------- | ------------- | ---------------------------------- | --------- | ------------------ | -------- | --------------- | --------------------- | ------ | ---------------- | ---------- |
| 10 | 5          | Yuki Nakamura | yuki.nakamura@student.edutrack.com | 6         | UI/UX Fundamentals | Design   | 2024-10-11      | 0                     | false  | 44.99            | null       |
| 11 | 6          | Pierre Dubois | pierre.dubois@student.edutrack.com | 6         | UI/UX Fundamentals | Design   | 2024-11-05      | 0                     | false  | 44.99            | null       |

### Q4: Top 5 estudiantes con mayor porcentaje sin aprobar

| student_name  | student_email                      | course_title           | completion_percentage | passed |
| ------------- | ---------------------------------- | ---------------------- | --------------------- | ------ |
| Emily Watson  | emily.watson@student.edutrack.com  | Web Design Basics      | 60                    | false  |
| Priya Sharma  | priya.sharma@student.edutrack.com  | Intro to Python        | 55                    | false  |
| Yuki Nakamura | yuki.nakamura@student.edutrack.com | Data Analysis with SQL | 45                    | false  |
| Emily Watson  | emily.watson@student.edutrack.com  | Advanced Python        | 40                    | false  |
| James Miller  | james.miller@test.com              | Intro to Python        | 30                    | false  |

---

### Q5: Inscripciones recientes (Desde 2024-07-01)

| id | student_id | student_name    | student_email                        | course_id | course_title           | category    | enrollment_date | completion_percentage | passed | monthly_fee_paid | instructor   |
| -- | ---------- | --------------- | ------------------------------------ | --------- | ---------------------- | ----------- | --------------- | --------------------- | ------ | ---------------- | ------------ |
| 17 | 1          | Emily Watson    | emily.watson@student.edutrack.com    | 5         | Advanced Python        | Programming | 2025-03-05      | 40                    | false  | 69.99            | Carlos Vega  |
| 16 | 6          | Pierre Dubois   | pierre.dubois@student.edutrack.com   | 3         | Data Analysis with SQL | Data        | 2025-02-20      | 20                    | false  | 59.99            | Marta López  |
| 15 | 7          | Priya Sharma    | priya.sharma@student.edutrack.com    | 1         | Intro to Python        | Programming | 2025-01-10      | 55                    | false  | 49.99            | Marta López  |
| 12 | 7          | Priya Sharma    | priya.sharma@student.edutrack.com    | 4         | Digital Marketing 101  | Marketing   | 2024-12-01      | 70                    | true   | 29.99            | Lucia Prades |
| 11 | 6          | Pierre Dubois   | pierre.dubois@student.edutrack.com   | 6         | UI/UX Fundamentals     | Design      | 2024-11-05      | 0                     | false  | 44.99            | null         |
| 10 | 5          | Yuki Nakamura   | yuki.nakamura@student.edutrack.com   | 6         | UI/UX Fundamentals     | Design      | 2024-10-11      | 0                     | false  | 44.99            | null         |
| 9  | 5          | Yuki Nakamura   | yuki.nakamura@student.edutrack.com   | 3         | Data Analysis with SQL | Data        | 2024-09-03      | 45                    | false  | 59.99            | Marta López  |
| 8  | 4          | Marco Rossi     | marco.rossi@student.edutrack.com     | 1         | Intro to Python        | Programming | 2024-08-09      | 88                    | true   | 49.99            | Marta López  |
| 6  | 3          | Lucia Fernandes | lucia.fernandes@student.edutrack.com | 4         | Digital Marketing 101  | Marketing   | 2024-07-01      | 3                     | false  | 29.99            | Lucia Prades |

### Q6: Inserción de registro faltante

Se insertó exitosamente el registro ID 18 para Lucia Fernandes en Advanced Python.

### Q7: Normalización de instructores no asignados

Resultado: Se actualizaron 2 registros (IDs 10 y 11) asignando el valor 'Pending assignment' en la columna instructor donde su valor era NULL.

---

### Q8: Depuración de cuentas de prueba
Se eliminaron mediante `DELETE` 2 inscripciones cuyos correos finalizaban con el dominio `@test.com`.

---

### Q9: Distribución de inscripciones por categoría
- **Programming:** 7 inscripciones
- **Design:** 4 inscripciones
- **Data:** 3 inscripciones
- **Marketing:** 2 inscripciones

---

### Q10: Promedio de completado por curso
- *Web Design Basics:* 42.5%
- *Data Analysis with SQL:* 56.0%
- *Intro to Python:* 59.4%
- *Frontend React:* 78.0%

---

### Q11: Cursos con alta demanda (> 3 inscripciones)
- **Intro to Python** (4 inscripciones confirmadas).

---

### Q12: Ingresos mensuales totales por categoría
1. **Programming:** $489.93 USD
2. **Design:** $279.96 USD
3. **Data:** $239.97 USD
4. **Marketing:** $119.98 USD
