// ignore_for_file: avoid_print

class Incorectint {
  @override
  String toString() {
    return "Parameters a & b can`t be NULL";
  }
}

class DelimetersCalculator {
  int a;
  int b;
  int c;

  DelimetersCalculator(
    this.a,
    this.b,
    this.c,
  );

  int gcd() {
    // ignore: unnecessary_null_comparison
    if (a == null || b == null) {
      throw Incorectint();
    } else {
      while (b != 0) {
        int x = b;
        b = a % x;
        a = x;
      }
      return a;
    }
  }

  int lcm() {
    int y = ((a * b) / gcd()).round();
    return y;
  }

  List primeFactors() {
    var list = [];
    for (int i = 2; i <= c; i++) {
      if (c % i == 0) {
        while (c % i == 0) {
          c = (c / i).round();
        }
        list.add(i);
      }
    }
    return list;
  }
}

void main() {
  final delimetersCalculator = DelimetersCalculator(25, 60, 10);
  final resultLcm = delimetersCalculator.lcm();
  final resultGcd = delimetersCalculator.gcd();
  final resultPrimeFactors = delimetersCalculator.primeFactors();

  print('GCD is $resultGcd');
  print('LCM is $resultLcm');
  print('Prime factors - $resultPrimeFactors');
}
