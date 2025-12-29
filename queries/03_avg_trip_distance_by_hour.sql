SELECT
  EXTRACT(HOUR FROM trip_start_timestamp) AS hour,
  AVG(trip_miles) AS avg_miles
FROM `bigquery-public-data.chicago_taxi_trips.taxi_trips`
GROUP BY hour
ORDER BY hour;
