void main() {
  print(solution4(1));
}

bool solution4(int x) {
  if (x < 0 || x != 0 && x % 10 == 0) {
    return false;
  }
  int check = 0;
  while (x > check) {
    check = check * 10 + x % 10;
    x ~/= 10;
  }
  return (x == check || x == check ~/ 10);
}

bool solution1(int n) {
  if (n < 0) {
    return false;
  }
  int reversed = 0;
  int temp = n;
  while (temp != 0) {
    int digit = temp % 10;
    reversed = reversed * 10 + digit;
    temp ~/= 10;
  }
  return (reversed == n);
}

bool solution2(int x) {
  String s = x.toString();
  int n = s.length;
  for (int i = 0; i < n / 2; i++) {
    if (s[i] != s[n - i - 1]) return false;
  }
  return true;
}

// bool solution3(int x) {
//   String reversed = x.toString().split('').reversed.join();
//   return reversed == x.toString();
// }

bool solution5(int x) {
  String s = x.toString();
  int len = s.length;
  int left = 0;
  int right = len - 1;
  while (left <= right) {
    if (s[left] != s[right]) {
      return false;
    }
    left++;
    right--;
  }
  return true;
}
