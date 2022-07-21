bool isPalindrome(String s) {
  if (s.length < 3) return false;
  String? reverse = s.split('').reversed.join('');
  // then we will compare
  if (s == reverse) {
    return true;
  } else {
    return false;
  }
}
