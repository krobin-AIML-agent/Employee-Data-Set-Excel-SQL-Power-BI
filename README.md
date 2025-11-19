# SuperDrugs Prescriptions Analytics  

I built this project to show how I can take a dataset from Excel, load it into Supabase (PostgreSQL), run analytical SQL, and turn it into clear business insights end-to-end.

## What I Did  
- Loaded the prescription dataset from Excel/CSV into Supabase.  
- Modeled and analyzed the data using PostgreSQL.  
- Wrote SQL across basic, intermediate, and advanced levels.  
- Created cost bands, regional summaries, and monthly trends.  
- Built a Power BI dashboard to visualize cost, region, and priority patterns.  
- Structured all SQL files into a clean, professional folder layout.

## Key SQL Examples  
```sql
CASE 
    WHEN distribution_costs > 500 THEN 'High Cost'
    WHEN distribution_costs BETWEEN 200 AND 500 THEN 'Medium Cost'
    ELSE 'Low Cost'
END

SELECT dispensed_region, order_priority,
       COUNT(*) AS total_prescriptions,
       SUM(distribution_costs) AS total_costs,
       AVG(distribution_costs)
FROM pharma.prescriptions
GROUP BY dispensed_region, order_priority;

What This Shows About Me

I can:
-Work with Supabase and PostgreSQL in a real analytics workflow.
-Write strong SQL for business analysis.
-Clean and transform data from Excel/CSV.
-Build BI dashboards in Power BI.
-Present insights clearly and professionally.
