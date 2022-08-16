SELECT 
  CAST(s.transaction_date AS date) AS day,
  d.name AS department,
  COUNT(1) AS sale_count
  FROM department d
    JOIN sale s
    ON d.id = s.department_id
  GROUP BY CAST(s.transaction_date AS date), d.name
  ORDER BY day, department
