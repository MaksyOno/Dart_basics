class IntFromListCounter {
  List diffWords;

  IntFromListCounter(this.diffWords);

  Set<int> _onlyInts() {
    Set<int> uniqInts = {};
    var collection = diffWords;
    int i = 0;
    while (i < collection.length) {
      switch (collection[i]) {
        case 'zero':
          uniqInts.add(0);
          break;
        case 'one':
          uniqInts.add(1);
          break;
        case 'two':
          uniqInts.add(2);
          break;
        case 'three':
          uniqInts.add(3);
          break;
        case 'four':
          uniqInts.add(4);
          break;
        case 'five':
          uniqInts.add(5);
          break;
        case 'six':
          uniqInts.add(6);
          break;
        case 'seven':
          uniqInts.add(7);
          break;
        case 'eight':
          uniqInts.add(8);
          break;
        case 'nine':
          uniqInts.add(9);
          break;
      }
      i++;
    }
    return (uniqInts);
  }
}

void main() {
  final intFromListCounter = IntFromListCounter([
    'zero',
    'cat',
    'zero',
    'dog',
    'one',
    'two',
    'cat',
    'cat',
    'cat',
    'one',
    'one',
    'two',
    'five',
    'five',
    'six',
    'nine',
    '',
    null
  ]);

  final resultOnlyInts = intFromListCounter._onlyInts();

  // ignore: avoid_print
  print(resultOnlyInts);
}
