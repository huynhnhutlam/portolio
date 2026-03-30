import 'package:flutter/material.dart';

class Responsive {
  static const double mobileMaxSize = 600;
  static const double desktopMinSize = 1000;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < mobileMaxSize;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= mobileMaxSize &&
      MediaQuery.of(context).size.width < desktopMinSize;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= desktopMinSize;
}
