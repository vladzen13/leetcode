# https://leetcode.com/problems/customer-placing-the-largest-number-of-orders/
SELECT customer_number FROM Orders
GROUP BY customer_number
ORDER BY count(order_number) DESC
LIMIT 1


# https://leetcode.com/problems/game-play-analysis-i/
SELECT player_id, MIN(event_date) as first_login FROM Activity
GROUP BY player_id

# https://leetcode.com/problems/the-latest-login-in-2020/
SELECT user_id, MAX(time_stamp) as last_stamp FROM logins
WHERE YEAR(time_stamp) = 2020
GROUP BY user_id


# https://leetcode.com/problems/find-total-time-spent-by-each-employee/
SELECT event_day as day, emp_id,  SUM(out_time - in_time) as total_time FROM Employees
GROUP BY emp_id, event_day
