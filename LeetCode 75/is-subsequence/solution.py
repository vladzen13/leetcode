# omg https://leetcode.com/problems/is-subsequence/discuss/87258/2-lines-Python

class Solution:
    def isSubsequence(self, s: str, t: str) -> bool:
        _pos = 0
        for c in s:
            _found = t.find(c, _pos)
            if _found < _pos:
                return False
            else:
                _pos = _found +1
        return True
