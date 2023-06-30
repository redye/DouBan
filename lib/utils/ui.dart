
class UI {

  static const double designWidth = 375;

  static var screenWidth = 375.0;

  static var screenHeight = 0.0;

  static var ratio = screenWidth / designWidth;

  static fit(double x) {
    return x * ratio;
  }

  static ceil(double x) {
    return (x * ratio).ceilToDouble();
  }
}