SELECT
  sum(points) AS total_points,
  count(id) AS total_people,
  rank()
  OVER (
    ORDER BY
      sum(points) DESC
  ) rank,
  (CASE
    WHEN clan = ''
      THEN '[no clan specified]'
      ELSE clan
    END)
  AS clan
FROM
  people
GROUP BY
  clan;
