void main() {}

class ListNode {
  int val;
  ListNode? next;

  ListNode([this.val = 0, this.next]);
}

ListNode? mergeTwoLists(ListNode? l1, ListNode? l2) {
  if (l1 == null) return l2;
  if (l2 == null) return l1;
  if (l1.val < l2.val) {
    l1.next = mergeTwoLists(l1.next, l2);
    return l1;
  } else {
    l2.next = mergeTwoLists(l1, l2.next);
    return l2;
  }
}

ListNode? mergeTwoLists2(ListNode? l1, ListNode? l2) {
  ListNode dummy = ListNode();
  ListNode? tail = dummy;
  while (l1 != null && l2 != null) {
    if (l1.val < l2.val) {
      tail?.next = l1;
      l1 = l1.next;
    } else {
      tail?.next = l2;
      l2.next = l2;
    }
    tail = tail?.next;
  }
  if (l1 != null) {
    tail?.next = l1;
  } else {
    tail?.next = l2;
  }
  return dummy.next;
}
