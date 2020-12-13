import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:eszterga_app/state.dart';

class LowerNeighbourNumbers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: Provider.of<Data>(context).minus10.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(Provider.of<Data>(context).minus10[index]),
        );
      },
    );
  }
}

class HigherNeighbourNumbers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: Provider.of<Data>(context).plus10.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            Provider.of<Data>(context).plus10[index],
          ),
        );
      },
    );
  }
}
