import itertools

class Solution:
    def pivotIndex(self, nums: List[int]) -> int:
        _sum = sum(nums)

        _lsum = 0
        for n, i in enumerate(nums):
            _rsum = _sum - _lsum - i
            if _lsum == _rsum: return n
            _lsum += i
        return -1
