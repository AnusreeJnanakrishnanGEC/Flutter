import 'package:demo/main.dart';
import 'package:flutter/material.dart';


class password extends StatefulWidget {
  const password({Key? key}) : super(key: key);

  @override
  State<password> createState() => _HomeState();
}

class _HomeState extends State<password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Text(
                'Change Password',
                style: TextStyle(
                  color: Colors.greenAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),



              TextButton(onPressed: () {
                Navigator.pop(context);
              },
                  child: Text('Go Back',
                    style: TextStyle(
                      color: Colors.yellow[700],
                      decoration: TextDecoration.underline,
                      //decorationStyle: TextDecorationStyle.wavy,
                      decorationColor: Colors.yellow[700],
                      decorationThickness: 2,
                    ),
                  )
              ),


            ],
          ),
        ),
      ),
    );
  }
}
