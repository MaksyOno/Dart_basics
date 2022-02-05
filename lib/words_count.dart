class CountWords {
  List diffWords;
  CountWords(this.diffWords);

  Map _howManyWords() {
    final myMap = {};
    for (var key in diffWords) {
      if (!myMap.containsKey(key)) {
        myMap[key] = 1;
      } else {
        myMap[key] += 1;
      }
    }
    return (myMap);
  }
}

void main() {
  final countWords = CountWords([
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
  final resultHowMany = countWords._howManyWords();

  // ignore: avoid_print
  print(resultHowMany);
}
