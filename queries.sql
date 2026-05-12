CREATE TABLE Users(
  ID integer PRIMARY KEY,
  First_name varchar,
  Last_name varchar,
  email varchar
);
INSERT INTO users(
  ID, First_name, Last_name, Email
)
VALUES 
 ( '1', 'Kajal', 'Koli', 'kajalkoli@gmail.com'),
 ( '2', 'Sumit', 'Mehra', 'sumitmehra@gmail.com'),
 ('3', 'Punit', 'Raj', 'punitraj@gmail.com'),
 ('4', 'Ram', 'Kapoor', 'ramkapoor@gmail.com'),
 ('5', 'Ditya', 'Raj', 'dityaraj@gmail.com');
SELECT Count (*)
From Users
where email LIKE '%.com';
SELECT first_name, COUNT(*) AS name_count
FROM users
GROUP BY first_name
ORDER BY name_count DESC;

CREATE TABLE watch_history(
  user_id INTEGER, duration INTEGER
);
INSERT INTO watch_history (user_id, duration) VALUES
-- User 101: Mix of short completions and incomplete long views
(101, 45),
(101, 120),
(101, 1200),
(101, 15),

-- User 102: Long duration binge-watching sessions
(102, 2700),
(102, 2650),
(102, 300),

-- User 103: Rapid bouncing with very low durations
(103, 4),
(103, 12),
(103, 8),

-- User 104: Consistent repeat viewing lengths
(104, 180),
(104, 180),
(104, 3600);
SELECT * 
FROM watch_history;
SELECT 
  ROUND(duration/60.0,0) as minute_bucket,
  COUNT(*) as event_count
FROM watch_history
WHERE duration IS NOT NULL
GROUP BY ROUND(duration/60.0,0)
ORDER BY minute_bucket;

CREATE TABLE payments (
  user_id INTEGER NOT NULL,
  amount REAL NOT NULL,
  status TEXT NOT NULL
);
INSERT INTO payments (user_id, amount, status) VALUES
(1, 250.50, 'paid'),
(2, 15.00, 'unpaid'),
(3, 1299.99, 'paid'),
(1, 45.25, 'unpaid'),
(4, 89.90, 'paid'),
(5, 550.00, 'unpaid'),
(2, 120.75, 'paid'),
(6, 30.00, 'paid'),
(4, 150.00, 'unpaid'),
(7, 2400.00, 'paid');
SELECT *
FROM payments;
SELECT user_id,SUM(amount) as total_payment
FROM payments
WHERE status = 'paid'
GROUP BY user_id
ORDER BY total_payment DESC;

SELECT user_id, SUM(duration) as total_watch_duration
FROM watch_history
WHERE duration IS NOT NULL
GROUP BY user_id
HAVING SUM(duration) > 400
ORDER BY total_watch_duration DESC;



