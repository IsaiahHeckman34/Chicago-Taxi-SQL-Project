SELECT
  company,
  SUM(fare + tips + tolls) AS revenue
FROM `bigquery-public-data.chicago_taxi_trips.taxi_trips`
GROUP BY company
ORDER BY revenue DESC
LIMIT 10;
