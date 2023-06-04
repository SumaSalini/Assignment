SELECT sales, profit, ship_mode,
       (sales - profit) * (1 + 
            CASE 
                WHEN ship_mode = 'Same Day' THEN 0.2
                WHEN ship_mode = 'First Class' THEN 0.1
                WHEN ship_mode = 'Standard Class' THEN 0.05
                ELSE 0
            END) AS total_cost
FROM surcharge;