// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget mobile;
  final Widget tab;
  final Widget desktop;
  const ResponsiveWidget({
    Key? key,
    required this.mobile,
    required this.tab,
    required this.desktop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        if (constraints.maxWidth < 760) {
          return mobile;
        } else if (constraints.maxWidth < 1000) {
          return tab;
        } else {
          return desktop;
        }
      }),
    );
  }
}
