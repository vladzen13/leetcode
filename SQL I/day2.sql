# https://leetcode.com/problems/calculate-special-bonus/
SELECT employee_id, salary * ( employee_id % 2 <> 0 and name NOT LIKE 'M%' ) as bonus  FROM Employees ORDER BY employee_id

# https://leetcode.com/problems/swap-salary/
UPDATE salary SET sex = IF(sex='m','f','m');

# omg https://leetcode.com/problems/swap-salary/discuss/104713/Accept-solution-with-xor
update salary set sex = CHAR(ASCII('f') ^ ASCII('m') ^ ASCII(sex));
update salary set sex= CHAR(ASCII('f') + ASCII('m') - ASCII(sex));
UPDATE salary SET sex = REPLACE ('fm', sex, '');

# https://leetcode.com/problems/delete-duplicate-emails/
delete from Person where id not in(
    select t.id from (
        select min(id) as id from Person group by email
    ) t
)

# omg https://leetcode.com/problems/delete-duplicate-emails/discuss/719983/Simple-solution-with-Delete
DELETE p1 FROM Person p1, Person p2 WHERE p1.Email = p2.Email AND p1.Id > p2.Id
