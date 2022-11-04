# omg lol! https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-search-tree/discuss/64963/3-lines-with-O(1)-space-1-Liners-Alternatives
# https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-search-tree/
class Solution:
    def _walk(node, depth):
        if node:
            yield node, depth
            if node.left:
                yield from Solution._walk(node.left, depth+1)

            yield node, depth
            if node.right:
                yield from Solution._walk(node.right, depth+1)

    def lowestCommonAncestor(self, root: 'TreeNode', p: 'TreeNode', q: 'TreeNode') -> 'TreeNode':
        lowest_depth, lowest_depth_node = 10**5, None
        scan, to_scan = False, [p.val, q.val]
        for node, depth in Solution._walk(root, 1):

            if scan and node.val in to_scan:
                return lowest_depth_node
            elif not scan and node.val in to_scan:
                scan = True
                to_scan.remove(node.val)

            if scan and depth <= lowest_depth:
                lowest_depth = depth
                lowest_depth_node = node
