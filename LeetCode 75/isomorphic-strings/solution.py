# check also this guy https://leetcode.com/problems/isomorphic-strings/discuss/57941/Python-different-solutions-(dictionary-etc).

class Solution:
    def isIsomorphic(self, s: str, t: str) -> bool:
        d = {}
        for a, b in zip(s, t):
            if a in d:
                if b != d[a]:
                    return False
            elif b in d.values():
                return False
            else:
                d[a] = b
        return True
