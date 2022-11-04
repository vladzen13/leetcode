# https://leetcode.com/problems/top-travellers/
SELECT  u.name, sum(IFNULL(r.distance, 0)) AS travelled_distance  FROM Users u
LEFT JOIN Rides r ON u.id = r.user_id
GROUP BY u.id
ORDER BY travelled_distance DESC, name ASC


# https://leetcode.com/problems/capital-gainloss/
select stock_name, sum(  price * IF(operation='Buy', -1, 1) ) as capital_gain_loss  from stocks
group by stock_name


# https://leetcode.com/problems/market-analysis-i/
select u.user_id as buyer_id , u.join_date as join_date, count( distinct o.order_id) as orders_in_2019  FROM Users u
left JOIN Orders o ON u.user_id = o.buyer_id and YEAR(o.order_date) = 2019
GROUP BY u.user_id
