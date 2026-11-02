## Consultas realizadas

Test de creación

```sql
SELECT * FROM enrollments LIMIT 5;
```

Query 1:

```sql
Select student_name, student_email, completion_percentage from enrollments where course_title = 'Intro to Python'
```

Query 2:
```sql
select * from enrollments where completion_percentage < 10
```

Query 3:
```sql
select * from enrollments where instructor is null
```

Query 4:
```sql
select * from enrollments where passed is false order by completion_percentage desc limit 5
```

Query 5:
```sql
select * from enrollments where enrollment_date > '2026-01-01' order by enrollment_date desc
```
O, sin hardcodear la fecha en la query:
```sql
SELECT *
FROM enrollments
WHERE enrollment_date >= CURRENT_DATE - INTERVAL '1 year'
ORDER BY enrollment_date DESC;
```

Query 6:
```sql
insert into enrollments values (18, 3, 'Lucia Fernandes', 'lucia.fernandes@student.edutrack.com', 5, 'Advanced Python', 'Programming', '2025-04-01', 0, false, 69.99, 'Carlos Vega')
```

Query 7:
```sql
update enrollments set instructor = 'Pending assignment' where instructor is null
```

Query 8:
```sql
SELECT * FROM enrollments WHERE student_email LIKE '%@test.com';

delete from enrollments where student_email like '%@test.com'
```

Query 9:
```sql
select category, count(*) as cantidad_inscripciones from enrollments group by category
```

Query 10:
```sql
select course_title, avg(completion_percentage) as promedio_curso from enrollments group by course_title order by (promedio_curso) asc 
```

Query 11:
```sql
select course_title, count(course_id) as Inscriptos from enrollments group by course_title having count(course_id) > 3
```

Query 12:
```sql
select category, sum(monthly_fee_paid) as total_ingresos_mensual from enrollments group by category order by total_ingresos_mensual desc
```
## Resultados obtenidos
- Revisar /queries_result.md

0- Query de test

| id | student_id | student_name    | student_email                        | course_id | course_title           | category    | enrollment_date | completion_percentage | passed | monthly_fee_paid | instructor  |
| -- | ---------- | --------------- | ------------------------------------ | --------- | ---------------------- | ----------- | --------------- | --------------------- | ------ | ---------------- | ----------- |
| 1  | 1          | Emily Watson    | emily.watson@student.edutrack.com    | 1         | Intro to Python        | Programming | 2024-03-10      | 85                    | true   | 49.99            | Marta López |
| 2  | 1          | Emily Watson    | emily.watson@student.edutrack.com    | 2         | Web Design Basics      | Design      | 2024-04-15      | 60                    | false  | 39.99            | Carlos Vega |
| 3  | 2          | Klaus Weber     | klaus.weber@student.edutrack.com     | 1         | Intro to Python        | Programming | 2024-03-12      | 92                    | true   | 49.99            | Marta López |
| 4  | 2          | Klaus Weber     | klaus.weber@student.edutrack.com     | 3         | Data Analysis with SQL | Data        | 2024-05-01      | 78                    | true   | 59.99            | Marta López |
| 5  | 3          | Lucia Fernandes | lucia.fernandes@student.edutrack.com | 2         | Web Design Basics      | Design      | 2024-06-20      | 5                     | false  | 39.99            | Carlos Vega |

1-
| student_name | student_email                     | completion_percentage |
| ------------ | --------------------------------- | --------------------- |
| Emily Watson | emily.watson@student.edutrack.com | 85                    |
| Klaus Weber  | klaus.weber@student.edutrack.com  | 92                    |
| Marco Rossi  | marco.rossi@student.edutrack.com  | 88                    |
| James Miller | james.miller@test.com             | 30                    |
| Priya Sharma | priya.sharma@student.edutrack.com | 55                    |

2-


3-
| id | student_id | student_name  | student_email                      | course_id | course_title       | category | enrollment_date | completion_percentage | passed | monthly_fee_paid | instructor |
| -- | ---------- | ------------- | ---------------------------------- | --------- | ------------------ | -------- | --------------- | --------------------- | ------ | ---------------- | ---------- |
| 10 | 5          | Yuki Nakamura | yuki.nakamura@student.edutrack.com | 6         | UI/UX Fundamentals | Design   | 2024-10-11      | 0                     | false  | 44.99            | null       |
| 11 | 6          | Pierre Dubois | pierre.dubois@student.edutrack.com | 6         | UI/UX Fundamentals | Design   | 2024-11-05      | 0                     | false  | 44.99            | null       |

4-
| id | student_id | student_name  | student_email                      | course_id | course_title           | category    | enrollment_date | completion_percentage | passed | monthly_fee_paid | instructor  |
| -- | ---------- | ------------- | ---------------------------------- | --------- | ---------------------- | ----------- | --------------- | --------------------- | ------ | ---------------- | ----------- |
| 2  | 1          | Emily Watson  | emily.watson@student.edutrack.com  | 2         | Web Design Basics      | Design      | 2024-04-15      | 60                    | false  | 39.99            | Carlos Vega |
| 15 | 7          | Priya Sharma  | priya.sharma@student.edutrack.com  | 1         | Intro to Python        | Programming | 2025-01-10      | 55                    | false  | 49.99            | Marta López |
| 9  | 5          | Yuki Nakamura | yuki.nakamura@student.edutrack.com | 3         | Data Analysis with SQL | Data        | 2024-09-03      | 45                    | false  | 59.99            | Marta López |
| 17 | 1          | Emily Watson  | emily.watson@student.edutrack.com  | 5         | Advanced Python        | Programming | 2025-03-05      | 40                    | false  | 69.99            | Carlos Vega |
| 13 | 8          | James Miller  | james.miller@test.com              | 1         | Intro to Python        | Programming | 2024-05-22      | 30                    | false  | 49.99            | Marta López |

5- Success. No rows returned

6- Success. No rows returned

- Hacerle query a la id 18 sale:
| id | student_id | student_name    | student_email                        | course_id | course_title    | category    | enrollment_date | completion_percentage | passed | monthly_fee_paid | instructor  |
| -- | ---------- | --------------- | ------------------------------------ | --------- | --------------- | ----------- | --------------- | --------------------- | ------ | ---------------- | ----------- |
| 18 | 3          | Lucia Fernandes | lucia.fernandes@student.edutrack.com | 5         | Advanced Python | Programming | 2025-04-01      | 0                     | false  | 69.99            | Carlos Vega |

7- Success. No rows returned
- Con la query de verificacion:
| id | student_id | student_name  | student_email                      | course_id | course_title       | category | enrollment_date | completion_percentage | passed | monthly_fee_paid | instructor         |
| -- | ---------- | ------------- | ---------------------------------- | --------- | ------------------ | -------- | --------------- | --------------------- | ------ | ---------------- | ------------------ |
| 10 | 5          | Yuki Nakamura | yuki.nakamura@student.edutrack.com | 6         | UI/UX Fundamentals | Design   | 2024-10-11      | 0                     | false  | 44.99            | Pending assignment |
| 11 | 6          | Pierre Dubois | pierre.dubois@student.edutrack.com | 6         | UI/UX Fundamentals | Design   | 2024-11-05      | 0                     | false  | 44.99            | Pending assignment |

8-  
- Antes de borrar:
| id | student_id | student_name | student_email         | course_id | course_title      | category    | enrollment_date | completion_percentage | passed | monthly_fee_paid | instructor  |
| -- | ---------- | ------------ | --------------------- | --------- | ----------------- | ----------- | --------------- | --------------------- | ------ | ---------------- | ----------- |
| 13 | 8          | James Miller | james.miller@test.com | 1         | Intro to Python   | Programming | 2024-05-22      | 30                    | false  | 49.99            | Marta López |
| 14 | 9          | Alex Chen    | alex.chen@test.com    | 2         | Web Design Basics | Design      | 2024-06-30      | 10                    | false  | 39.99            | Carlos Vega |

- Despues de borrar:
Success. No rows returned

9-
| category    | cantidad_inscripciones |
| ----------- | ---------------------- |
| Marketing   | 2                      |
| Programming | 7                      |
| Design      | 4                      |
| Data        | 3                      |

10-
| course_title           | promedio_curso         |
| ---------------------- | ---------------------- |
| UI/UX Fundamentals     | 0.00000000000000000000 |
| Web Design Basics      | 32.5000000000000000    |
| Digital Marketing 101  | 36.5000000000000000    |
| Advanced Python        | 45.0000000000000000    |
| Data Analysis with SQL | 47.6666666666666667    |
| Intro to Python        | 80.0000000000000000    |

11-
| course_title    | inscriptos |
| --------------- | ---------- |
| Intro to Python | 4          |

12-
| category    | total_ingresos_mensual |
| ----------- | ---------------------- |
| Programming | 409.93                 |
| Data        | 179.97                 |
| Design      | 169.96                 |
| Marketing   | 59.98                  |
