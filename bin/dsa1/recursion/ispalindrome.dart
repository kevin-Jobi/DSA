isPalindrome(String str, int start, int end) {
  if (start == end) {
    return true;
  }
  if (str[start] != str[end]) {
    return false;
  }
  return isPalindrome(str, start + 1, end - 1);
}

void main() {
  String str = 'radar';
  print(isPalindrome(str, 0, str.length - 1));
}
