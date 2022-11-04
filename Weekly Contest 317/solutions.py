# https://leetcode.com/contest/weekly-contest-317/problems/average-value-of-even-numbers-that-are-divisible-by-three/
class Solution:
    def averageValue(self, nums: List[int]) -> int:
        nums = [n for n in nums if n % 6 == 0 ]
        return sum(nums) // len(nums) if nums else 0


# https://leetcode.com/contest/weekly-contest-317/problems/most-popular-video-creator/
# omg what a mess
class Solution:
    def mostPopularCreator(self, creators: List[str], ids: List[str], views: List[int]) -> List[List[str]]:
        res = {}
        max_views = 0
        for creator, _id, _views in zip(creators, ids, views):
            if creator not in res:
                res[creator] = [ 0, 0, _id ]                # total views, views_of_top_video, id_of_top_video

            res[creator][0] += _views

            if _views >= res[creator][1]:
                res[creator][2] = min(res[creator][2], _id) if _views == res[creator][1] else _id
                res[creator][1] = _views

            max_views = max(max_views, res[creator][0])

        return [ [creator, data[2] ] for creator, data in res.items() if data[0] == max_views ]


# https://leetcode.com/contest/weekly-contest-317/problems/minimum-addition-to-make-integer-beautiful/
# time limit of course
class Solution:
    def makeIntegerBeautiful(self, n: int, target: int) -> int:
        x = 0
        while True:
            if sum(map(int, str(n+x))) <= target:
                return x
            x +=1

# nice!
class Solution:
    def makeIntegerBeautiful(self, n: int, target: int) -> int:
        nn = n

        pow = 0
        while sum(map(int, str(nn))) > target:
            pow +=1
            nn = (1 + (nn // 10**pow)) * 10**pow

        return nn - n


# https://leetcode.com/contest/weekly-contest-317/problems/height-of-binary-tree-after-subtree-removal-queries/
# time limit of course!
class Solution:
    def go_deeper(node, depth, query):
        yield depth
        if node.left and node.left.val != query:
            yield from Solution.go_deeper(node.left, depth+1, query)
        if node.right and node.right.val != query:
            yield from Solution.go_deeper(node.right, depth+1, query)

    def treeQueries(self, root: Optional[TreeNode], queries: List[int]) -> List[int]:
        res = []
        for query in queries:
            res.append( max( Solution.go_deeper(root, 1, query) ) -1 )
        return res

# what a shame 5571/20604, 12 points total, time 2:01:42, 12 bugs
