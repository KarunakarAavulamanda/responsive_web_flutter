import 'package:flutter/material.dart';
import 'package:responsive_web_flutter/responsive/desktop_scaffold.dart';
import 'package:responsive_web_flutter/responsive/mobile_scaffold.dart';
import 'package:responsive_web_flutter/responsive/tablet_scaffold.dart';
import 'package:responsive_web_flutter/responsive_web_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveWebPage(
        mobileScaffold: MobileScaffold(),
        desktopScaffold: DesktopScaffold(),
        tableScaffold: TabletScaffold(),
      ),
    );
  }
}
