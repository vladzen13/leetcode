class Solution:
    def _preorder(root):
        if root:
            yield root.val
            for c in root.children:
                yield from Solution._preorder(c)

    def preorder(self, root) -> List[int]:
        return list(Solution._preorder(root))
