# https://leetcode.com/problems/duplicate-emails/
SELECT email from Person
GROUP BY email
HAVING count(email) > 1


# https://leetcode.com/problems/actors-and-directors-who-cooperated-at-least-three-times/
SELECT actor_id, director_id from ActorDirector
GROUP BY actor_id, director_id
HAVING count(*) > 2


# https://leetcode.com/problems/bank-account-summary-ii/
SELECT name, sum(t.amount) as balance FROM Users u
JOIN Transactions t ON u.account = t.account
GROUP BY u.account
HAVING balance > 10000


# https://leetcode.com/problems/sales-analysis-iii/discuss/315906/simple-MySQL-solution
# https://leetcode.com/problems/sales-analysis-iii/
SELECT  p.product_id, p.product_name FROM Product p
JOIN Sales s ON p.product_id = s.product_id
GROUP BY  s.product_id, p.product_name
HAVING min(s.sale_date) >= '2019-01-01'   and max(s.sale_date) <= '2019-03-31'
