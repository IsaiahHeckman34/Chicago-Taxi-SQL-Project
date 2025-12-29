# Chicago Taxi Trips Data Analytics (BigQuery + SQL)

This project analyzes the **Chicago Taxi Trips** public dataset using **Google BigQuery** and **SQL**.  
The goal is to answer real business questions a data analyst or BI intern would get, such as:

- What are the busiest pickup times?
- Which neighborhoods generate the most revenue?
- What is the average trip distance by hour of day?
- What are the most common payment types?
- Which taxi companies perform best?
- What is the monthly trend of trip volume and revenue?
- What is the average fare per mile?
- How do tips, trip duration, and speed vary across the day?


---

## 🧾 Dataset

- **Source:** `bigquery-public-data.chicago_taxi_trips.taxi_trips` (Google BigQuery public datasets)
- **Grain:** One row per taxi trip
- **Example fields used:**
  - `trip_start_timestamp`, `trip_end_timestamp`
  - `trip_miles`, `fare`, `tips`, `tolls`, `trip_total`
  - `pickup_community_area`, `dropoff_community_area`
  - `payment_type`
  - `company`

This dataset contains tens of millions of taxi trips across multiple years, which makes it ideal for practicing analytics on **large-scale data**.

---

## 🧠 Key Business Questions

1. What is the monthly trend of taxi trip volume?
2. Which pickup neighborhoods generate the most trips?
3. When are taxis busiest (by day of week and hour)?
4. What is the average trip distance by hour of day?
5. Which payment types generate the most revenue?
6. Which taxi companies capture the most revenue and trips?
7. What is the average fare per mile city-wide?
8. How do monthly revenues trend over time?
9. How concentrated is revenue among top companies (revenue share)?
10. What does tip behavior look like (average and distribution)?
11. How do trip duration and speed vary by time of day?
12. What are the most common pickup–dropoff routes?

Each of these questions is answered with a dedicated SQL query in the `queries/` folder.

---

## 📂 Project Structure

```bash
chicago-taxi-sql-project/
├── README.md
├── queries/
│   ├── 01_trips_per_month.sql
│   ├── 02_top10_pickup_areas.sql
│   ├── 03_avg_trip_distance_by_hour.sql
│   ├── 04_revenue_by_payment_type.sql
│   ├── 05_most_profitable_companies.sql
│   ├── 06_avg_fare_per_mile.sql
│   ├── 07_trips_by_hour_and_dow.sql
│   ├── 08_monthly_revenue_trend.sql
│   ├── 09_company_performance_window_functions.sql
│   ├── 10_tip_percentage_analysis.sql
│   ├── 11_avg_trip_duration_and_speed_by_hour.sql
│   └── 12_top_routes.sql
└── screenshots/
    └── dashboard_and_chart_exports.png
