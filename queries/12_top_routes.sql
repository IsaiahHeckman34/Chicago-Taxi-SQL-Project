SELECT
  pickup_community_area,
  dropoff_community_area,
  COUNT(*) AS total_trips,
  SUM(fare + tips + tolls) AS total_revenue
FROM `bigquery-public-data.chicago_taxi_trips.taxi_trips`
WHERE pickup_community_area IS NOT NULL
  AND dropoff_community_area IS NOT NULL
GROUP BY pickup_community_area, dropoff_community_area
ORDER BY total_trips DESC
LIMIT 20;
