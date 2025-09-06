import 'package:flutter/material.dart';
import '../function/text_item.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key, required this.width});

  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),

      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            builditem("1.5K", "Takipçi"),
            SizedBox(width: width * 0.1),

            builditem("2.5K", "Takip"),
            SizedBox(width: width * 0.1),
            builditem("500", "Beğeni"),
          ],
        ),
      ),
    );
  }
}
