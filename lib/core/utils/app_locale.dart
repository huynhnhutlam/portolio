import 'package:flutter/material.dart';

class AppLocale extends InheritedWidget {
  final bool isVi;

  const AppLocale({
    super.key,
    required this.isVi,
    required super.child,
  });

  static AppLocale? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppLocale>();
  }

  static bool of(BuildContext context) {
    final AppLocale? result = maybeOf(context);
    return result?.isVi ?? false;
  }

  @override
  bool updateShouldNotify(AppLocale oldWidget) => isVi != oldWidget.isVi;
}
