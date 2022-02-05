// ignore_for_file: avoid_print
import 'dart:math';

class Point {
  int p1;
  int p2;
  int p3;

  Point(this.p1, this.p2, this.p3);

  List<int> toList() {
    return [p1, p2, p3];
  }

  factory Point.origin() {
    return Point(0, 0, 0);
  }
  factory Point.vector() {
    return Point(1, 1, 1);
  }

  distanceTo(Point other) {
    var dx = p1 - other.p1;
    var dy = p2 - other.p2;
    var dz = p3 - other.p3;
    return sqrt(dx * dx + dy * dy + dz * dz);
  }
}

void main() {
  var mainPoint = Point(5, 11, 13);
  var anotherPoint = Point(3, 7, 5);
  var resultDistanceTo = mainPoint.distanceTo(anotherPoint);
  var originPoint = Point.origin().toList();
  var vectorPoint = Point.vector().toList();

  print(resultDistanceTo);
  print(originPoint);
  print(vectorPoint);
}
