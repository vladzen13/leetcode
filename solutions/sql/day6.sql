# https://leetcode.com/problems/rising-temperature/
SELECT w1.id FROM Weather w1, Weather w2
WHERE w1.temperature > w2.temperature AND TO_DAYS(w1.recordDate)-TO_DAYS(w2.recordDate)=1


# https://leetcode.com/problems/sales-person/
SELECT name FROM SalesPerson
WHERE sales_id NOT IN (
    SELECT sales_id FROM Orders o
    JOIN Company c ON o.com_id = c.com_id
    WHERE c.name = "RED"
)
