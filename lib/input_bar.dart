import 'package:eszterga_app/state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InputBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
          decoration: InputDecoration(
              labelText: "Szám:",
              hintText: "1-100",
              border: OutlineInputBorder()),
          keyboardType: TextInputType.number,
          onChanged: (text) {
            int number = makeNumber(text);
            Provider.of<Data>(context, listen: false).changeNumber(number);
            Provider.of<Data>(context, listen: false).makeResult(number);
            Provider.of<Data>(context, listen: false).currentMinus10(number);
            Provider.of<Data>(context, listen: false).currentPlus10(number);
          }),
    );
  }

  int makeNumber(String text) {
    int number = int.tryParse(text);
    return number;
  }
}
