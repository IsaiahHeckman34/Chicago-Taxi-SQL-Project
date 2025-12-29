SELECT
  EXTRACT(YEAR FROM trip_start_timestamp) AS year,
  EXTRACT(MONTH FROM trip_start_timestamp) AS month,
  COUNT(*) AS total_trips
FROM `bigquery-public-data.chicago_taxi_trips.taxi_trips`
GROUP BY year, month
ORDER BY year, month;
