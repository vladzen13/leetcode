import itertools

class Solution:
    MAP = {"I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000}

    def mask(s):
        for a,b in itertools.pairwise(s):
            if a == 'I' and b in ['V', 'X']  or a == 'X' and b in ['L', 'C']  or a == 'C' and b in ['D', 'M']:
                yield -1
            else:
                yield 1
        yield 1


    def romanToInt(self, s: str):
        res = 0
        for a, sign in zip(s, Solution.mask(s)):
            res += Solution.MAP[a] * sign
        return res
            
