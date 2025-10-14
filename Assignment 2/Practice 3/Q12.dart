double calculateArea({double length = 1, double width = 1}) {
  return length * width;
}

void main() {
  print("Area of rectangle: ${calculateArea(length: 5, width: 10)}");
  print("Area with default values: ${calculateArea()}");
}
