/// @author Emre Deniz <https://github.com/EmreDenizz>

import 'dart:collection';
import 'dart:io';

void main() {
  // inline comment

  /* 
    multiple line of comments
  */

  // Print
  print("Hello World");

  // Variables
  int var1 = 10;
  double var2 = 0.2;
  bool var3 = false;
  String var4 = "string variable";
  List list1 = [1, 2, 3];

  var v1 = "Dart";
  var v2 = 10;
  var v3 = 10.1;

  print(var1);
  print(var2);
  print(var3);
  print(var4);
  print(v1);
  print(v2);
  print(v3);
  print(list1);

  // Dynamic
  dynamic v = 15;
  print(v);

  // Constant and final data
  const c = 100;
  final f = 1000;
  print(c);
  print(f);

  // Str to int
  var one = int.parse("1");
  assert(one == 1); // verification
  one += 10;
  print(one);

  // Int to str
  var two = 2.toString();
  two += "Dart";
  print(two);

  // Decimal to str
  var three = 3.1445.toString();
  var three2 = 3.1445.toStringAsFixed(2);
  print(three);
  print(three2);

  // Arithmetic operators
  var a = 10;
  a = a + 10;
  a += 10;
  a -= 5;
  a++;
  print(a);

  if (10 >= 20) {
    print("greater");
  } else {
    print("less");
  }

  // And operator
  if (10 > 9 && 10 > 9) {
    print("true");
  } else {
    print("false");
  }

  // Or operator
  if (10 > 9 || 10 > 11) {
    print("true");
  } else {
    print("false");
  }

  // Not operator
  if (10 != 11) {
    print("true");
  } else {
    print("false");
  }

  // Null aware operators
  dynamic code;
  code ??= "Dart";
  print(code);

  // Type Test Operators
  var str1 = "test";
  print(str1 is String); // true

  // if else statements
  if (10 > 9) {
    print("true");
  } else {
    print("false");
  }

  // Switch case
  var no = 100;

  switch (no) {
    case 0:
      print("zero");
      break;

    case 100:
      print("hundred");
      break;

    default:
      print("not zero or hundred");
  }

  // For loop
  for (var i = 0; i <= 5; i++) {
    print(i);
  }

  // For-in loop
  var list = [1, 2, 3];
  for (var x in list) {
    print(x);
  }

  // Foreach loop
  list.forEach((n) => print(n));

  // While loop
  var j = 5;
  while (j > 0) {
    if (j == 2) {
      break;
    }
    print(j);
    j--;
  }

  // Lists (arrays)
  List name = ["hello", "world", 10, 10.55];
  print(name[0]);
  print(name);
  name[2] = 20;
  print(name);

  List<String> name2 = ["hello", "world"];
  print(name2);

  // List: spread operator
  var name3 = [...name, "world2"];
  print(name3);

  // Set
  var elements = {"hydrogen", "oxygen"};
  print(elements.runtimeType);
  for (var y in elements) {
    print(y);
  }

  var elements2 = <String>{"hydrogen", "oxygen"};
  print(elements2.runtimeType);

  Set<String> elements3 = {};
  print(elements3.runtimeType);

  // Map
  var student = {"name": "emre", "surname": "deniz"};
  print(student["name"]);
  print(student);

  // Queue
  Queue<String> q = Queue<String>();

  q.add("hello");
  q.add("dart");

  print(q);

  // Functions
  dynamic sum(var i, var j) {
    return i + j;
  }

  dynamic sum2(var i, var j) => i + j;
  dynamic sum3({var i, var j}) => i + j;

  print(sum(3, 4.5));
  print(sum("emre", "deniz"));
  print(sum2(3, 4.5));
  print(sum3(j: 4.5, i: 3));

  // Class objects
  Point p = Point(100, 200); //var p;
  print(p.x);
  print(p.y);
  p.printData();

  Point p1 = Point.fromMap(<String, int>{"x": 10, "y": 20});
  p1.printData();

  print(p.pointX);
  print(p.getMap);

  p.setX = 105;
  p.setY = 205;

  // Exception handling
  try {
    var k = 10;
    var m = 0;
    var n = k / m;
    print(n);
  } catch (e) {
    print("Division by zero");
  }

  // Prints "fetching user data" first
  fetchUserData();
  print("fetching user data");

  exit(0);
}

// Class
class Point {
  int x = 0, y = 0;

  Point(int a, int b) {
    x = a; // this.x
    y = b; // this.x
  }
  // Point(this.x, this.y);

  // Additional constructor in same class
  Point.fromMap(Map map) {
    x = map["x"];
    y = map["y"];
  }
  // Point.fromMap(Map map): x = map["x"], y = map["y"];

  void printData() => print(x + y);

  // Get methods
  int get pointX => x;
  int get pointY => y;
  Map get getMap => {"x": x, "y": y};

  // Set methods
  set setX(int a) => x = a;
  set setY(int a) => y = a;
}

// Future: asyncronous
Future<void> fetchUserData() {
  return Future.delayed(Duration(seconds: 2), () => print("Data"));
}
