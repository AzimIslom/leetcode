import '94-binary_tree_indorder_traversal.dart';

bool isSameTree(TreeNode? p, TreeNode? q) {
  if (p == null && q == null) {
    return true;
  }
  if (p == null || q == null || p.val != q.val) {
    return false;
  }
  return isSameTree(p.left, q.left) && isSameTree(p.right, q.right);
}
