class Solution:
    def _levelOrder(self, root: Optional[TreeNode]) -> List[List[int]]:
        level = [root]
        if root:
            while level:
                yield [el.val for el in level]
                level = [ch for l in level for ch in (l.left, l.right) if ch ]

    def levelOrder(self, root: Optional[TreeNode]) -> List[List[int]]:
        return list(self._levelOrder(root))
