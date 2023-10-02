void merge(List<int> nums1, int m, List<int> nums2, int n) {
  for (int j = 0, i = m; j < n; j++) {
    nums1[i] = nums2[j];
    i++;
  }
  nums1.sort();
}
