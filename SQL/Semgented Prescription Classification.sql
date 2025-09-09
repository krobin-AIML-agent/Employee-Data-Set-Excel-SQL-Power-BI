SELECT
    dispensed_region,
    dispensed_pharmacy,
    distribution_costs,
    CASE 
        WHEN distribution_costs > 500 THEN 'High Cost'
        WHEN distribution_costs BETWEEN 200 AND 500 THEN 'Medium Cost'
        ELSE 'Low Cost'
    END AS cost_band
FROM pharma.prescriptions;
