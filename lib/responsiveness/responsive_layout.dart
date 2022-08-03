import 'package:flutter/material.dart';
import 'package:queritel_practical/screens/tab_view.dart';
import 'package:queritel_practical/variables.dart';

class ResponsiveLayout extends StatefulWidget {
  final Widget webScreenLayout;
  ResponsiveLayout({Key? key, required this.webScreenLayout}) : super(key: key);

  @override
  _ResponsiveLayoutState createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > webScreenSize) {
        return widget.webScreenLayout;
      }
      return MainPage();
    });
  }
}
