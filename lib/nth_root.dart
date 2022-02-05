// ignore_for_file: avoid_print

extension on num {
  num sqrt(int n) {
    if (this >= 0) {
      num number = this;
      int rootDegree = n;

      num eps = 0.00001;
      num root = number / rootDegree;
      num rn = number;
      while ((root - rn) * (root - rn) >= eps) {
        rn = number;
        for (int i = 1; i < rootDegree; i++) {
          rn = rn / root;
        }
        root = 0.5 * (rn + root);
      }

      return root;
    } else {
      throw "Number must be bigger than 0";
    }
  }
}

void main() {
  num number = 222;
  print(number.sqrt(2));
}
