import 'package:flutter/material.dart';

// ignore: camel_case_types
class mainbalance extends StatefulWidget {
  const mainbalance({super.key});

  @override
  State<mainbalance> createState() => _mainbalanceState();
}

// ignore: camel_case_types
class _mainbalanceState extends State<mainbalance> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(children: <Widget>[
        Container(
          padding: const EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          color: Colors.black,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text(
                  'Main Balance',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
