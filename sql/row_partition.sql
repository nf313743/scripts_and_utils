WITH cte AS (
    SELECT 
        a, 
        b, 
        ROW_NUMBER() OVER (
            PARTITION BY a,b
            ORDER BY a,b) rownum
    FROM 
        t1
) 
SELECT 
  * 
FROM 
    cte 
WHERE 
    rownum > 1;


WITH cte AS (
SELECT 
    contact_id, 
    first_name, 
    last_name, 
    email, 
    ROW_NUMBER() OVER (
        PARTITION BY 
            first_name, 
            last_name, 
            email
        ORDER BY 
            first_name, 
            last_name, 
            email
    ) row_num
 FROM 
    sales.contacts
)
DELETE FROM cte
WHERE row_num > 1;