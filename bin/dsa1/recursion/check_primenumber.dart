isPrimeHelper(int num) {
  if (num < 2) return false;
  return isPrime(num, num - 1);
}

isPrime(int num, curr) {
  if (curr == 1) return true;
  if (num % curr == 0) return false;
  return isPrime(num, curr - 1);
}

void main() {
  print(isPrimeHelper(7));
}
