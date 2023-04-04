import 'package:demo/Home.dart';
import 'package:demo/main.dart';
import 'package:flutter/material.dart';
import 'package:demo/Create_acc.dart';


class create_acc extends StatefulWidget {
  const create_acc({Key? key}) : super(key: key);

  @override
  State<create_acc> createState() => _LoginState();
}

class _LoginState extends State<create_acc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      //appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 2,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              children:  [
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 210, 10, 15),
                  child: Text(
                    'Create Account',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                ),



                const Padding(
                  padding: EdgeInsets.fromLTRB(40, 10, 50, 10),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Mail ID',
                      hintStyle: TextStyle(fontSize: 18, color: Colors.white),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),


                Padding(
                  padding: EdgeInsets.fromLTRB(40, 10, 50, 10),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Full Name',
                      hintStyle: TextStyle(fontSize: 18, color: Colors.white),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),



                Padding(
                  padding: EdgeInsets.fromLTRB(40, 10, 50, 10),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(fontSize: 18, color: Colors.white),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),


                const SizedBox(
                  width: 20.0, height: 30.0,
                ),



                ElevatedButton(
                  onPressed: () {
                   // Navigator.pop(context);
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Home()),);
                  },
                      child: Text('Create',
                        style: TextStyle(
                          fontSize: 22.0,
                           color: Colors.white,
                           ),
                        ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.yellow[700],
                     shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    minimumSize: Size(300,45),
                  ),
                ),



                TextButton(onPressed: () {
                  Navigator.pop(context);
                  },
                  child: Text('LOGIN',
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
      ),
    );
  }
}

