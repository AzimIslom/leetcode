int strStr(String haystack, String needle) {
  if (needle.isEmpty) return 0;
  for (int i = 0; i < 1 + haystack.length - needle.length; i++) {
    if (haystack.substring(i, i + needle.length) == needle) {
      return i;
    }
  }
  return -1;
}
