import 'package:eszterga_app/input_bar.dart';
import 'package:eszterga_app/neighbour_numbers.dart';
import 'package:eszterga_app/result.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:eszterga_app/state.dart';

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
          body: Column(
            children: [
              InputBar(),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: LowerNeighbourNumbers(),
                    ),
                    Expanded(
                      child: Result(),
                    ),
                    Expanded(
                      flex: 2,
                      child: HigherNeighbourNumbers(),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
