SELECT   COUNT(*)
        ,CAST(created_at AS date) AS day
        ,description
FROM events
WHERE name LIKE 'trained'
GROUP BY CAST(created_at AS date), description
ORDER BY day
