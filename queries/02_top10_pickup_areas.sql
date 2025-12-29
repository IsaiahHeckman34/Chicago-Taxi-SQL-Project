SELECT
  pickup_community_area,
  COUNT(*) AS total_trips
FROM `bigquery-public-data.chicago_taxi_trips.taxi_trips`
GROUP BY pickup_community_area
ORDER BY total_trips DESC
LIMIT 10;
