import 'dart:math';

void main() {
  longestCommonPrefix2(["flowerachio","flowachio","flightachio"]);
}

String longestCommonPrefix2(List<String> strs) {
  String first = strs.first;
  String res = "";
  String last = strs.last;
  for (int i = 0; i < min(first.length, last.length); i++) {
    if (first[i] != last[i]) {
      return res;
    }
    res += first[i];
  }
  return res;
}
