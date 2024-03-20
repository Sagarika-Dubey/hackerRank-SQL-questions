WITH RECURSIVE temp AS (
    SELECT 1 AS n
    UNION ALL
    SELECT n + 1
    FROM temp
    WHERE n < 20
)
SELECT REPEAT('* ', n)
FROM temp;