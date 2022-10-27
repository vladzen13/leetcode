# https://leetcode.com/problems/combine-two-tables/
SELECT p.firstName, p.lastName, a.city, a.state FROM Person p
LEFT JOIN Address a ON p.personId = a.personId


# https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/
SELECT customer_id, COUNT(customer_id) as "count_no_trans" FROM
    (
      SELECT v.visit_id, v.customer_id, t.transaction_id
      FROM Visits v LEFT JOIN Transactions t ON v.visit_id = t.visit_id
      WHERE t.transaction_id IS NULL
    ) c
GROUP BY customer_id

# https://leetcode.com/problems/article-views-i/
SELECT DISTINCT author_id as id FROM Views
WHERE author_id = viewer_id
ORDER BY id ASC
