import 'package:flutter/material.dart';

class ResponciveUi extends StatelessWidget {
  final Widget? mobile;
  final Widget? tablet;
  final Widget? desktob;

  const ResponciveUi({
    Key? key,
    this.mobile,
    this.tablet,
    this.desktob,
  }) : super(key: key);

  // mobile or tablet size at labtop not android or ios devices
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 485;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width <= 900 &&
      MediaQuery.of(context).size.width >= 485;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 901;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      // mobile or tablet size at labtop not android or ios devices
      builder: (BuildContext context, BoxConstraints constraints) {
        int screenWidth = constraints.maxWidth.toInt();
        if (screenWidth <= 650 && tablet != null && screenWidth > 385) {
          print(screenWidth);
          return tablet!;
        } else if (screenWidth <= 380) {
          print("width is $screenWidth");
          return mobile!;
        } else {
          //print(screenWidth);
          return desktob!;
        }
      },
    );
  }
}
