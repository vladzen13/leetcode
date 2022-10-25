class Solution:
    def mergeTwoLists(self, node1: Optional[ListNode], node2: Optional[ListNode]) -> Optional[ListNode]:
        cur = dummy = ListNode()

        # пока оба списка есть обновременно
        while node1 and node2:
            # надо забрать из одного и связанных списков один элементов и отдать его в dummy
            if node1.val < node2.val:
                cur.next = ListNode(node1.val)
                cur = cur.next
                node1 = node1.next
            else:
                cur.next = ListNode(node2.val)
                cur = cur.next
                node2 = node2.next

        # если есть хвостик у одного из них то просто сошлемся на этот хвост.
        if node1 or node2:
            cur.next = node1 or node2

        return dummy.next
