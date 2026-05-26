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
## 📊 Dataset Overview

This project uses three datasets:

### Users
| Column | Description |
|----------|------------|
| ID | User ID |
| First_name | First Name |
| Last_name | Last Name |
| Email | User Email |

### Watch History
| Column | Description |
|----------|------------|
| user_id | User ID |
| duration | Watch Duration (seconds) |

### Payments
| Column | Description |
|----------|------------|
| user_id | User ID |
| amount | Payment Amount |
| status | Payment Status |

## ❓ Business Questions Solved

1. How many users have valid email addresses?
2. Are there duplicate customer names?
3. What are the most common watch duration patterns?
4. Which users spend the most time watching content?
5. How much revenue was generated from paid transactions?
6. Which users contribute the highest revenue?

 ## 📈 Results

- Identified users with valid email addresses.
- Analyzed customer records for duplicate names.
- Categorized watch durations into time buckets.
- Identified highly engaged users with watch duration above 400 seconds.
- Calculated total revenue from successful payments.
- Ranked users by total payment amount.

## 📈 Analysis Performed

### Email Validation Analysis

```sql
SELECT COUNT(*)
FROM Users
WHERE email LIKE '%.com';

SELECT first_name, COUNT(*) AS name_count
FROM users
GROUP BY first_name
ORDER BY name_count DESC;

### Duplicate Name Analysis

SELECT first_name, COUNT(*) AS name_count
FROM users
GROUP BY first_name
ORDER BY name_count DESC;

### Watch Duration Distribution

SELECT
ROUND(duration/60.0,0) as minute_bucket,
COUNT(*) as event_count
FROM watch_history
GROUP BY ROUND(duration/60.0,0);

### Revenue Analysis

SELECT user_id,SUM(amount) as total_payment
FROM payments
WHERE status='paid'
GROUP BY user_id;

### User Engagement Analysis

SELECT user_id,SUM(duration) as total_watch_duration
FROM watch_history
GROUP BY user_id
HAVING SUM(duration) > 400;

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
