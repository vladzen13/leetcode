# https://leetcode.com/problems/big-countries/
SELECT name, population, area FROM World WHERE area >= 3000000  or population >= 25000000

# https://leetcode.com/problems/recyclable-and-low-fat-products/
SELECT product_id FROM Products  WHERE  low_fats = 'Y' and recyclable = 'Y'

# https://leetcode.com/problems/find-customer-referee/
SELECT name FROM Customer WHERE referee_id != 2 or referee_id is null

# https://leetcode.com/problems/customers-who-never-order/
SELECT A.Name as "Customers" from Customers A LEFT JOIN Orders B on  a.Id = B.CustomerId WHERE b.CustomerId is NULL
