import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class MyCustomScroll extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices =>
      {PointerDeviceKind.touch, PointerDeviceKind.mouse};
}
