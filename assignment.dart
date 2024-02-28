int addTwo(int num1, int num2) {
  return num1 + num2;
}

int subtractTwo(int a, int b) {
  return a - b;
}

int multiplyTwo(int a, int b) {
  return a * b;
}

double divideTwo(double a, double b) {
  if (b == 0) {
    throw ArgumentError("can not divide by zero");
  }
  return 0;
}

int StringLength(String text) {
  return text.length;
}

dynamic getFirstElement(List list) {
  if (list.isEmpty) {
    return null;
  }
  return list[0];
}
