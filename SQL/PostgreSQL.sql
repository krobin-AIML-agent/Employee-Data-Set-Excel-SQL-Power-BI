SELECT *
FROM (
    SELECT 
        dispensed_region,
        dispensed_pharmacy,
        SUM(distribution_costs) AS total_costs,
        RANK() OVER (PARTITION BY dispensed_region ORDER BY SUM(distribution_costs) DESC) AS rank_in_region
    FROM pharma.prescriptions
    GROUP BY dispensed_region, dispensed_pharmacy
) ranked
WHERE rank_in_region <= 3;
