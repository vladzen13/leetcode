# https://leetcode.com/problems/employees-with-missing-information/
SELECT employee_id FROM Employees WHERE employee_id NOT IN (SELECT employee_id FROM Salaries)
UNION
SELECT employee_id FROM Salaries WHERE employee_id NOT IN (SELECT employee_id FROM Employees)
ORDER BY employee_id ASC


# https://leetcode.com/problems/rearrange-products-table/
SELECT product_id, "store1" as store, store1 as price FROM Products WHERE store1 IS NOT NULL
UNION
SELECT product_id, "store2" as store, store2 as price FROM Products WHERE store2 IS NOT NULL
UNION
SELECT product_id, "store3" as store, store3 as price FROM Products WHERE store3 IS NOT NULL

# omg https://leetcode.com/problems/rearrange-products-table/discuss/1118884/2-Simple-Solutions%3A-Reverse-PIVOT-and-UNION
SELECT product_id,store,price
FROM Products
UNPIVOT
(
	price
	FOR store in (store1,store2,store3)
) AS T


# https://leetcode.com/problems/tree-node/
SELECT id, "Root" as type FROM Tree WHERE p_id IS NULL
UNION
SELECT id, IF(id IN (select p_id from Tree), "Inner", "Leaf") as type FROM Tree WHERE p_id IS NOT NULL

ORDER BY id

# https://leetcode.com/problems/second-highest-salary/
SELECT max(Salary)
FROM Employee
WHERE Salary < (SELECT max(Salary) FROM Employee)

SELECT IFNULL(
  (SELECT DISTINCT Salary FROM Employee ORDER BY salary DESC LIMIT 1,1),NULL
) AS SecondHighestSalary
