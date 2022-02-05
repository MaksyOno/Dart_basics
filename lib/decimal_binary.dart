// ignore_for_file: unnecessary_null_comparison, avoid_print
class DecimalBinarysCalculator {
  int a;

  DecimalBinarysCalculator(
    this.a,
  );

  String _binary() {
    return (a.toRadixString(2));
  }

  int _decimal() {
    return (int.parse(_binary(), radix: 2));
  }
}

void main() {
  final decimalBinarysCalculator = DecimalBinarysCalculator(15);
  final resultBinary = decimalBinarysCalculator._binary();
  final resultDecimal = decimalBinarysCalculator._decimal();

  print('Number ${decimalBinarysCalculator.a} in binary - $resultBinary');
  print('Decimal format for $resultBinary is $resultDecimal');
}
