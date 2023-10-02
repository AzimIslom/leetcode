String addBinary(String a, String b) {
  String res = "";
  int i = a.length - 1;
  int j = b.length - 1;
  int carry = 0;
  while (i >= 0 || j >= 0) {
    int sum = carry;
    if (i >= 0) sum += int.parse(a[i--]);
    if (j >= 0) sum += int.parse(b[j--]);
    carry = sum > 1 ? 1 : 0;
    res += (sum % 2).toString();
  }
  if (carry != 0) res += carry.toString();
  return res.split('').reversed.join().toString();
}
