# well,  intuition told me that it ts something like fibbonachi, but fibbonachi did not work, so i added one more digit ...
import functools

class Solution:
    @functools.lru_cache
    def climbStairs(self, n: int) -> int:
        if n in (0,1,2): return n
        return self.climbStairs(n-2) + self.climbStairs(n-1)
