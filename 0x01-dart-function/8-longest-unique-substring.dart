String longestUniqueSubstring(String s) {
  Map<String, int> charsMap = Map<String, int>();
  int cursor = 0;
  int startIndex = 0;
  int maxLength = 0;

  for (int i = 0; i < s.length; i++) {
    String currentChar = s[i];
    bool isExistingCharInMap =
        charsMap[currentChar] != null && charsMap[currentChar]! >= cursor;

    if (isExistingCharInMap) {
      cursor = charsMap[currentChar]! + 1;
    }

    charsMap[currentChar] = i;
    bool isLongerNewString = maxLength < i - cursor + 1;

    if (isLongerNewString) {
      maxLength = i - cursor + 1;
      startIndex = cursor;
    }
  }
  return s.substring(startIndex, startIndex + maxLength);
}
