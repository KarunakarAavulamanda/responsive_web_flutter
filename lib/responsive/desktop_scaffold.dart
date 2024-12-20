import 'package:flutter/material.dart';
import 'package:responsive_web_flutter/constants.dart';
import 'package:responsive_web_flutter/responsive/responsive_divs.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefaultBackground,
      drawer: myDrawer,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const ResponsiveDivs(),
              myfooter,
            ],
          ),
        ),
      ),
    );
  }
}
