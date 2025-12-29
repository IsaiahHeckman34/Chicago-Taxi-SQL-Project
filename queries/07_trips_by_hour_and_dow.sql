SELECT
  EXTRACT(DAYOFWEEK FROM trip_start_timestamp) AS day_of_week, -- 1 = Sunday
  EXTRACT(HOUR FROM trip_start_timestamp) AS hour,
  COUNT(*) AS total_trips
FROM `bigquery-public-data.chicago_taxi_trips.taxi_trips`
GROUP BY day_of_week, hour
ORDER BY total_trips DESC;
