# https://leetcode.com/problems/fix-names-in-a-table/

SELECT Users.user_id , CONCAT(UPPER(SUBSTR(Users.name,1,1)),LOWER(SUBSTR(Users.name,2))) AS name
FROM Users
ORDER BY
Users.user_id ASC

# https://leetcode.com/problems/group-sold-products-by-the-date/

SELECT sell_date, COUNT(DISTINCT(product)) as num_sold, GROUP_CONCAT(DISTINCT(product)) as products
FROM Activities
GROUP BY sell_date
ORDER BY sell_date


# https://leetcode.com/problems/patients-with-a-condition/

SELECT * FROM Patients WHERE CONDITIONS LIKE '% DIAB1%' OR CONDITIONS LIKE 'DIAB1%';
