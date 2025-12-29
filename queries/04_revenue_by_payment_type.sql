SELECT
  payment_type,
  SUM(fare + tips + tolls) AS total_revenue
FROM `bigquery-public-data.chicago_taxi_trips.taxi_trips`
GROUP BY payment_type
ORDER BY total_revenue DESC;
