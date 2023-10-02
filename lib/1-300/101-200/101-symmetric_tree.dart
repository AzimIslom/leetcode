import 'package:leetcode/1-300/91-100/94-binary_tree_indorder_traversal.dart';

bool isSymmetric(TreeNode? root) {
  if (root == null) {
    return true;
  }
  return helper(root.left, root.right);
}

bool helper(TreeNode? rootleft, TreeNode? rootright) {
  if (rootleft == null && rootright == null) {
    return true;
  } else if (rootright == null || rootleft == null) {
    return false;
  }
  if (rootleft.val != rootright.val) return false;
  if (!helper(rootleft.left, rootright.right)) return false;
  if (!helper(rootleft.right, rootright.left)) return false;
  return true;
}
