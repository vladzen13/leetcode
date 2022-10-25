class Solution:
    def reverseList(self, cur: Optional[ListNode]) -> Optional[ListNode]:
        item = None
        while cur:
            item = ListNode(cur.val, item)
            cur = cur.next
        return item
                           
