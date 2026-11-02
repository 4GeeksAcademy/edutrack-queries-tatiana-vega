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

| student_name | student_email | course_title | completion_percentage |
| :--- | :--- | :--- | :--- |
| Lucia Fernandes | lucia.fernandes@student.edutrack.com | Web Design Basics | 0% |
| Yuki Nakamura | yuki.nakamura@student.edutrack.com | Data Analysis with SQL | 5% |
| Pierre Dubois | pierre.dubois@student.edutrack.com | Intro to Python | 8% |

---

### Q3: Inscripciones sin instructor asignado
Se identificaron 2 registros donde la columna `instructor` tenía valor `NULL` (IDs 4 y 12).

---

### Q4: Top 5 estudiantes con mayor porcentaje sin aprobar
Estudiantes con alto nivel de avance pero condición `passed = false`:
1. **Priya Sharma** (88% - Data Analysis with SQL)
2. **Emily Watson** (85% - Intro to Python)
3. **Carlos Mendoza** (78% - Frontend React)
4. **Ana Gómez** (70% - Data Analysis with SQL)
5. **Klaus Weber** (65% - Web Design Basics)

---

### Q5: Inscripciones recientes (Desde 2024-07-01)
Se obtuvieron 8 registros ordenados cronológicamente de forma descendente desde el segundo semestre de 2024.

---

### Q6: Inserción de registro faltante
Se ejecutó exitosamente el `INSERT` para crear la inscripción ID 18 perteneciente a **Lucia Fernandes** en el curso *Advanced Python* con cuota de 69.99 USD.

---

### Q7: Normalización de instructores no asignados
Se realizó un `UPDATE` afectando a 2 filas, reemplazando el valor `NULL` por el texto `'Pending assignment'`.

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
