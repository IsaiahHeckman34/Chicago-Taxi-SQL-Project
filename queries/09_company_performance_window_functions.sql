WITH company_revenue AS (
  SELECT
    company,
    SUM(fare + tips + tolls) AS total_revenue,
    COUNT(*) AS total_trips
  FROM `bigquery-public-data.chicago_taxi_trips.taxi_trips`
  GROUP BY company
),
ranked AS (
  SELECT
    company,
    total_revenue,
    total_trips,
    total_revenue / SUM(total_revenue) OVER () AS revenue_share,
    RANK() OVER (ORDER BY total_revenue DESC) AS revenue_rank
  FROM company_revenue
)
SELECT
  company,
  total_revenue,
  total_trips,
  revenue_share,
  revenue_rank
FROM ranked
WHERE revenue_rank <= 20
ORDER BY revenue_rank;
