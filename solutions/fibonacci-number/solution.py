import functools

class Solution:
    @functools.lru_cache
    def fib(self, n: int) -> int:
        if n in (0,1): return n
        return self.fib(n-2) + self.fib(n-1)
