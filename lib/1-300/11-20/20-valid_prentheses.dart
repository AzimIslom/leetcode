void main() {
  print(isValid("({})"));
}

bool isValid(String s) {
  List<String> stack = [];
  for (String c in s.split('')) {
    if (c == '(') {
      stack.add(')');
    } else if (c == '{') {
      stack.add('}');
    } else if (c == '[') {
      stack.add(']');
    } else if (stack.isEmpty || stack.removeAt(stack.length - 1) != c) {
      return false;
    }
  }
  return stack.isEmpty;
}
