import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pickup/styles/themes/WenderStyle.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: WenderStyles.materialTheme,
    ).modular();
  }
}
