WITH special_sales
AS
  (
  SELECT * FROM sales AS s
  WHERE s.price > 90
  )

SELECT *
FROM departments AS d
WHERE id IN (SELECT department_id FROM special_sales)
