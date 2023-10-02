void main() {}

int romanToInt(String s) {
  var roman = {"I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000};
  int res = 0;
  for (int i = 0; i < s.length; i++) {
    int current = roman[s[i]]!;
    if (i + 1 < s.length && current < roman[s[i + 1]]!) {
      res -= current;
    } else {
      res += current;
    }
  }
  return res;
}
