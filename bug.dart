```dart
class MyClass {
  int? _myVariable;

  MyClass(this._myVariable);

  void myMethod() {
    print(_myVariable ??= 0); // The bug is here
  }
}

void main() {
  MyClass obj = MyClass(null);
  obj.myMethod(); //Prints 0
  obj.myMethod(); //Prints 0, expected to print null
}
```