import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
  ThemeData get theme => Theme.of(this);

  MediaQueryData get mediaQuery => MediaQuery.of(this);

  Size get size => mediaQuery.size;
  double get width => size.width;
  double get height => size.height;

  NavigatorState get nav => Navigator.of(this);

  void pushNamed(String routeName, {Object? argument}) =>
      nav.pushNamed(routeName, arguments: argument);

  void pushReplacementNamed(String routeName, {Object? argument}) =>
      nav.pushReplacementNamed(routeName, arguments: argument);

  void pop() => nav.pop();
}
