SELECT dep.id, dep.name
FROM departments as dep
WHERE dep.id IN(
              SELECT s.department_id
              FROM sales AS s
              WHERE s.price > 98
            )
