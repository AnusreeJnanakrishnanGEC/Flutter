import 'package:flutter/material.dart';

class Testing extends StatefulWidget {
  const Testing({Key? key}) : super(key: key);

  @override
  State<Testing> createState() => _TestingState();
}

class _TestingState extends State<Testing> {

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$index"),
        leading: IconButton(
            icon: Icon(Icons.abc),
            onPressed: (){
              displayPopup();
      }),
      ),
    );
  }

  void displayPopup() {
    setState((){
      index++;
    });
  }
}
