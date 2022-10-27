# omg  https://leetcode.com/problems/longest-palindrome/discuss/89587/What-are-the-odds-(Python-and-C%2B%2B)

# bad day i guess
import collections
class Solution:
    def longestPalindrome(self, s: str) -> int:
        c = collections.Counter(s)

        s, took = 0, False
        for i in sorted(c.values(), reverse=True):
            if i % 2 == 0:
                s += i
            else:
                if not took:
                    s += i
                    took = True
                elif i> 1:
                    s += i-1
        return s
