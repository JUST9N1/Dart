class AreaOfCircleModel {
  final double radius;

  AreaOfCircleModel({required this.radius});

  double areaOfCircle() {
    return 3.14 * radius * radius;
  }
}
