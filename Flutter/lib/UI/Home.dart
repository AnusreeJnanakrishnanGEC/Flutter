import 'package:demo/main.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.cyanAccent,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Text(
                'Home',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),


              TextButton(onPressed: () {
                Navigator.pop(context);
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
