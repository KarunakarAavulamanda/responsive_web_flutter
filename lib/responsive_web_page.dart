import 'package:flutter/material.dart';

class ResponsiveWebPage extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget tableScaffold;
  final Widget desktopScaffold;

  const ResponsiveWebPage(
      {super.key,
      required this.mobileScaffold,
      required this.tableScaffold,
      required this.desktopScaffold});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 500) {
          return mobileScaffold;
        } else if (constraints.maxWidth < 1100) {
          return tableScaffold;
        } else {
          return desktopScaffold;
        }
      },
    );
  }
}
