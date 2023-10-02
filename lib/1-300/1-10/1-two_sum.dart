void main() {
  final res = solution5([2, 7, 11, 15], 9);
  print(res);
}

List<int> solution5(List<int> nums, int target) {
  Map<int, int> map = {};
  for (int i = 0; i < nums.length; i++) {
    if (map.containsKey(target - nums[i])) {
      return [map[target - nums[i]]!, i];
    }
    map.addAll({nums[i]: i});
  }
  return [];
}

// List<int> solution1(List<int> nums, int target) {
//   for (int i = 0; i < nums.length; i++) {
//     for (int j = i + 1; j < nums.length; j++) {
//       if (nums[i] + nums[j] == target) {
//         return [i, j];
//       }
//     }
//   }
//   return [];
// }

// List<int> solution2(List<int> nums, int target) {
//   Map<int, int> numMap = {};
//   int n = nums.length;
//
//   for (int i = 0; i < n; i++) {
//     numMap[nums[i]] = i;
//   }
//   for (int i = 0; i < n; i++) {
//     int complement = target - nums[i];
//     print(complement);
//     if (numMap[complement] != null && numMap[complement] != i) {
//       return [i, numMap[complement]!];
//     }
//   }
//   return []; // No solution found
// }

// List<int> solution3(List<int> nums, int target) {
//   Map<int, int> numMap = {};
//   int n = nums.length;
//   for (int i = 0; i < n; i++) {
//     int complement = target - nums[i];
//     if (numMap[complement] != null) {
//       return [numMap[complement]!, i];
//     }
//     numMap[nums[i]] = i;
//   }
//   return [];
// }

// List<int> solution4(List<int> nums, int target) {
//   Map<int, int> mp = {};
//   for (int i = 0; i < nums.length; i++) {
//     if (mp[target - nums[i]] == mp.values.last) {
//       mp[nums[i]] = i;
//     } else {
//       return [mp[target - nums[i]]!, i];
//     }
//   }
//   return [];
// }
