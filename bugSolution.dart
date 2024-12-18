```dart
class MyClass {
  int? _myVariable;

  MyClass(this._myVariable);

  void myMethod() {
    if (_myVariable == null) {
      _myVariable = 0;
    }
    print(_myVariable);
  }
}

void main() {
  MyClass obj = MyClass(null);
  obj.myMethod(); //Prints 0
  obj.myMethod(); //Prints 0
}
```