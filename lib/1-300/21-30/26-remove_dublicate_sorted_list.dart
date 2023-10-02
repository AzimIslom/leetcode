void main() {}

int s1(List<int> nums) {
  int l = 1;
  for (int i = 1; i < nums.length; i++) {
    if (nums[i] != nums[i - 1]) {
      nums[l] = nums[i];
      l++;
    }
  }
  return l;
}