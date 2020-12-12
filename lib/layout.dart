import 'package:eszterga_app/neighbour_numbers.dart';
import 'package:flutter/material.dart';
import 'package:eszterga_app/input_bar.dart';
import 'package:eszterga_app/result.dart';

class Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputBar(),
        SizedBox(
          height: 25.0,
        ),
        Row(
          children: [
            Expanded(
              child: LowerNeighbourNumbers(),
            ),
            Expanded(
              child: Result(),
            ),
          ],
        )
      ],
    );
  }
}
