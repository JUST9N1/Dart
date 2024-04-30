class ArthmeticModel {
  final int first;
  final int second;

  ArthmeticModel({
    required this.first,
    required this.second,
  });

  // Add
  int add() {
    return first + second;
  }

  int subtract() {
    return first - second;
  }

  int multiply() {
    return first * second;
  }

  int divide() {
    return first ~/ second;
  }
}
