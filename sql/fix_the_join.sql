SELECT 
  job_title,
  cast(round(SUM(salary) / COUNT(*), 2) as float) as average_salary,
  COUNT(*) as total_people,
  cast(round(SUM(salary) , 2) as float) as total_salary
FROM
  job
GROUP BY
  job_title
ORDER BY
  average_salary DESC
