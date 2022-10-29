# https://leetcode.com/problems/find-followers-count/
SELECT user_id, COUNT(follower_id) as followers_count FROM Followers
GROUP BY user_id
ORDER BY user_id

# https://leetcode.com/problems/daily-leads-and-partners/
select
    date_id,
    make_name,
    count(distinct lead_id) as unique_leads,
    count(distinct partner_id) as unique_partners
from
    DailySales as DS
group by
    date_id, make_name


# https://leetcode.com/problems/user-activity-for-the-past-30-days-i/
SELECT activity_date as day, COUNT(DISTINCT user_id) as active_users FROM Activity
WHERE activity_date > '2019-06-27' and activity_date <= '2019-07-27'
GROUP BY activity_date
