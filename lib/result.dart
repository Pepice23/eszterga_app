import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:eszterga_app/state.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "30000/3.14/${Provider.of<Data>(context).number} = ",
          style: TextStyle(fontSize: 30.0),
        ),
        Text(
          Provider.of<Data>(context).processedNumber.toStringAsFixed(2),
          style: TextStyle(fontSize: 30.0),
        )
      ],
    );
  }
}
