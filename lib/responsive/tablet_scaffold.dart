import 'package:flutter/material.dart';
import 'package:responsive_web_flutter/constants.dart';
import 'package:responsive_web_flutter/responsive/responsive_divs.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
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
