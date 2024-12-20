import 'package:flutter/material.dart';
import 'package:responsive_web_flutter/constants.dart';
import 'package:responsive_web_flutter/responsive/responsive_divs.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
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
      // body: Column(
      //   children: [
      //     //4 box on the top
      //     AspectRatio(
      //       aspectRatio: 1,
      //       child: SizedBox(
      //         width: double.infinity,
      //         child: GridView.builder(
      //           itemCount: 4,
      //           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //               crossAxisCount: 2),
      //           itemBuilder: (context, index) {
      //             return Container(
      //               color: const Color.fromARGB(255, 159, 181, 213),
      //               alignment: Alignment.center,
      //               child: Text(
      //                 'Div ${index + 1}',
      //                 style: const TextStyle(fontSize: 18, color: Colors.black),
      //               ),
      //             );
      //           },
      //         ),
      //       ),
      //     )
      //   ],
      // ),
    );
  }
}
