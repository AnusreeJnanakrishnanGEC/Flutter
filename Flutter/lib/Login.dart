import 'package:demo/Home.dart';
import 'package:demo/main.dart';
import 'package:demo/password.dart';
import 'package:flutter/material.dart';
import 'package:demo/Create_acc.dart';

void main(){
  runApp(MyApp());
}

class Login_page extends StatefulWidget {
  const Login_page({Key? key}) : super(key: key);

  @override
  State<Login_page> createState() => _LoginState();
}

class _LoginState extends State<Login_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[700],
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
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 210, 10, 15),
                  child: Text(
                    'Welcome Back!',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
          ),

                  Text(
                  'Login to continue',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),

          Padding(
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


                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const password()),
                    );
                  },
                  child: Text('Forgot Password',
                    style: TextStyle(
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),

                const SizedBox(
                  width: 20.0, height: 30.0,
                ),



                ElevatedButton(

                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );
                  },

                  child: Text('Login',
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),
                    ),
                    minimumSize: Size(300,45),
                  ),
                ),



                const SizedBox(
                  width: 20.0, height: 100.0,
                ),


                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const create_acc()),
                    );
                  },
                  child: Text('CREATE ACCOUNT',
                    style: TextStyle(
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),

        ),
      ),
    );
  }
}

