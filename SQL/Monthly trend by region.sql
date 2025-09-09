SELECT
  dispensed_region,
  DATE_TRUNC('month', date_dispensed) AS month,
  COUNT(*) AS rx_count,
  SUM(distribution_costs) AS total_costs
FROM pharma.prescriptions
GROUP BY dispensed_region, DATE_TRUNC('month', date_dispensed)
ORDER BY month, dispensed_region;
