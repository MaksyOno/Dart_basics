// ignore_for_file: unnecessary_null_comparison, avoid_print
class FromStringToNumber {
  final String randomString;

  FromStringToNumber(
    this.randomString,
  );

  List _fromStringTonum() {
    List<int> list = [];
    var mixList = randomString.split(" ");
    for (var i = 0; i < mixList.length; i++) {
      int? myValue = int.tryParse(mixList[i]);
      if (myValue.runtimeType == int) {
        list.add(myValue!);
      }
    }
    return list;
  }
}

void main() {
  final fromStringToNumber =
      FromStringToNumber('hi 2 dart 3 flutter world 5 7 hard');
  final resultFromStringToNum = fromStringToNumber._fromStringTonum();
  print(resultFromStringToNum);
}
