WITH valid_trips AS (
  SELECT
    fare,
    tips,
    trip_total,
    SAFE_DIVIDE(tips, NULLIF(fare, 0)) AS tip_pct
  FROM `bigquery-public-data.chicago_taxi_trips.taxi_trips`
  WHERE payment_type = 'Credit Card'
    AND fare > 0
    AND tips >= 0
)
SELECT
  APPROX_QUANTILES(tip_pct, 5)[OFFSET(0)] AS min_tip_pct,
  APPROX_QUANTILES(tip_pct, 5)[OFFSET(1)] AS p25_tip_pct,
  APPROX_QUANTILES(tip_pct, 5)[OFFSET(2)] AS median_tip_pct,
  APPROX_QUANTILES(tip_pct, 5)[OFFSET(3)] AS p75_tip_pct,
  APPROX_QUANTILES(tip_pct, 5)[OFFSET(4)] AS max_tip_pct,
  AVG(tip_pct) AS avg_tip_pct
FROM valid_trips;
