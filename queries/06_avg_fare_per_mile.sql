SELECT
  AVG(fare / NULLIF(trip_miles, 0)) AS avg_fare_per_mile
FROM `bigquery-public-data.chicago_taxi_trips.taxi_trips`;
