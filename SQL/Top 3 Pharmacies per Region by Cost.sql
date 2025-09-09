SELECT 
    dispensed_region,
    order_priority,
    COUNT(*) AS total_prescriptions,
    SUM(distribution_costs) AS total_costs,
    AVG(distribution_costs) AS avg_cost_per_prescription
FROM pharma.prescriptions
WHERE date_dispensed BETWEEN '2007-06-01' AND '2008-06-07'
GROUP BY dispensed_region, order_priority
ORDER BY total_costs DESC;
