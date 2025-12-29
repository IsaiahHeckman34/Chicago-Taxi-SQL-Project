WITH trips_with_duration AS (
  SELECT
    EXTRACT(HOUR FROM trip_start_timestamp) AS hour,
    trip_miles,
    TIMESTAMP_DIFF(trip_end_timestamp, trip_start_timestamp, MINUTE) AS duration_min
  FROM `bigquery-public-data.chicago_taxi_trips.taxi_trips`
  WHERE trip_miles > 0
    AND trip_end_timestamp > trip_start_timestamp
)
SELECT
  hour,
  AVG(duration_min) AS avg_duration_min,
  AVG(trip_miles) AS avg_miles,
  AVG(trip_miles / NULLIF(duration_min, 0) * 60) AS avg_speed_mph
FROM trips_with_duration
GROUP BY hour
ORDER BY hour;
