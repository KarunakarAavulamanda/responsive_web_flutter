import 'package:flutter/material.dart';

class ResponsiveDivs extends StatelessWidget {
  const ResponsiveDivs({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        int crossAxisCount;
        if (constraints.maxWidth < 500) {
          crossAxisCount = 1;
        } else if (constraints.maxWidth < 1100) {
          crossAxisCount = 2;
        } else {
          crossAxisCount = 4;
        }

        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 1,
              ),
              itemCount: 6,
              itemBuilder: (context, index) {
                return Container(
                  color: const Color.fromARGB(255, 159, 181, 213),
                  alignment: Alignment.center,
                  child: Text(
                    'Div ${index + 1}',
                    style: const TextStyle(fontSize: 18, color: Colors.black),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
