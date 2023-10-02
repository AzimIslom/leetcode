List<int> plusOne(List<int> digits) {
  digits = digits.reversed.toList();
  int one = 1;
  int i = 0;
  while (one != 0) {
    if (i < digits.length) {
      if (digits[i] == 9) {
        digits[i] = 0;
      } else {
        digits[i] += 1;
        one = 0;
      }
    } else {
      digits.add(1);
      one = 0;
    }
    i++;
  }
  return digits.reversed.toList();
}
