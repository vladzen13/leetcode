class Solution:
    def firstBadVersion(self, n: int) -> int:
        first, last = 1, n

        res = {}
        while True:
            to_check = first + (last -first) // 2
            res[to_check] = isBadVersion(to_check)

            if res[to_check] and to_check-1 in res and not res[to_check-1]: return to_check
            if not res[to_check] and to_check+1 in res and res[to_check+1]: return to_check+1

            first, last = (first, to_check-1)  if res[to_check]  else  (to_check+1, last)
