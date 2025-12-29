SELECT
  EXTRACT(YEAR FROM trip_start_timestamp) AS year,
  EXTRACT(MONTH FROM trip_start_timestamp) AS month,
  SUM(fare + tips + tolls) AS total_revenue
FROM `bigquery-public-data.chicago_taxi_trips.taxi_trips`
GROUP BY year, month
ORDER BY year, month;
