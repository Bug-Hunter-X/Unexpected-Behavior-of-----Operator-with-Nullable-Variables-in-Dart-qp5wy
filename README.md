# Unexpected Behavior of ??= Operator with Nullable Variables in Dart

This repository demonstrates an uncommon bug in Dart related to the null-aware assignment operator (`??=`). When used within a method to modify a nullable variable's value, `??=` unexpectedly assigns a value only once, even if called repeatedly. This issue can lead to unexpected program behavior when dealing with nullable variables.

## Problem

The provided Dart code shows a class `MyClass` that uses a nullable integer variable `_myVariable`.
The method `myMethod` prints the value of `_myVariable`, using `??=` to assign a default value if the variable is null. However, despite the method's repeated calls, the default value assignment happens only once.

## Solution

The solution involves explicitly checking for null and making the assignment outside the null-aware operator. This ensures that the assignment is performed every time the method is called if the variable is null.

## How to reproduce

1. Clone this repository.
2. Run the `bug.dart` file.
3. Observe that the output is not as expected.