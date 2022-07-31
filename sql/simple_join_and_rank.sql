SELECT 
  People.id, 
  People.name, 
  COUNT(Sales.sale) as sale_count, 
  RANK() OVER (ORDER BY COUNT(Sales.sale)) as sale_rank
FROM people as People 
  INNER JOIN sales as Sales
  ON People.id = Sales.people_id
GROUP BY People.id;
