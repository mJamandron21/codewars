SELECT
     age
    ,count(age) as people_count
FROM people
GROUP BY age
