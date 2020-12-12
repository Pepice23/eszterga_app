import 'package:eszterga_app/input_bar.dart';
import 'package:eszterga_app/neighbour_numbers.dart';
import 'package:eszterga_app/result.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:eszterga_app/state.dart';
import 'package:eszterga_app/layout.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      create: (context) => Data(),
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Povi Eszterga Számológépe"),
          ),
          body: Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: InputBar(),
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: LowerNeighbourNumbers(),
                    ),
                    Expanded(
                      child: Result(),
                    ),
                    Expanded(
                      child: HigherNeighbourNumbers(),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
