import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Page')),
      body: Center(
        child: Container(
          child: const Text(
            "Second Page",
            style: TextStyle(fontSize: 30.0),
          ),
        ),
      ),
    );
  }
}
