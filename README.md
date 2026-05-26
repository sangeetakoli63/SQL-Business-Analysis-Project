# 📊 SQL Business Analysis Project

This project analyzes customer and streaming platform data using SQL to generate business insights and answer analytical questions.

---

## 🎯 Objective

Analyze:

- Customer behavior
- Watch duration trends
- Revenue and payments
- Subscription insights
- Content popularity

---

## 🛠 Skills Used

- SQL
- Aggregate Functions
- GROUP BY
- HAVING
- Filtering
- Business Analysis

---

## 📂 Files Included

| File | Purpose |
|--------|---------|
| customer_data.csv | Dataset |
| business_analysis.sql | SQL queries |
| README.md | Documentation |

---

## 📈 Analysis Performed

### Top Customers by Watch Time

```sql
SELECT customer_name,
SUM(watch_duration) AS total_watch_time
FROM customers
GROUP BY customer_name
ORDER BY total_watch_time DESC;
```

### Revenue Analysis

```sql
SELECT payment_method,
SUM(amount) AS total_revenue
FROM payments
GROUP BY payment_method;
```

### Subscription Insights

```sql
SELECT subscription_type,
COUNT(*) AS total_users
FROM customers
GROUP BY subscription_type;
```

---

## 📌 Key Insights

- Identified highest-engagement customers
- Analyzed revenue by payment method
- Compared subscription plan popularity
- Generated business-focused reports

---

## 🚀 Tools Used

- SQL
- MySQL / PostgreSQL
- Codecademy SQL Workspace
- GitHub
