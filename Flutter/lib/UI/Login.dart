import 'package:demo/Home.dart';
import 'package:demo/main.dart';
import 'package:demo/password.dart';
import 'package:flutter/material.dart';
import 'package:demo/Create_acc.dart';



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
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [

                const Text(
                  'Welcome Back!',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),

                  const Text(
                  'Login to continue',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
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


            const Padding(
              padding: EdgeInsets.fromLTRB(40, 10, 50, 10),
              child: TextField(
                obscureText: true,
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
               height: 30.0,
                ),


                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const password()),
                    );
                  },
                  child: const Text('Forgot Password',
                    style: TextStyle(
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),

                const SizedBox(
                 height: 30.0,
                ),



                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),
                    ),
                    minimumSize: Size(300,45),
                  ),

                  child: const Text('Login',
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.white,
                    ),
                  ),
                ),



                const SizedBox(
                 height: 100.0,
                ),


                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const create_acc()),
                    );
                  },
                  child: const Text('CREATE ACCOUNT',
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
      // bottomNavigationBar: BottomNavigationBar(
      //   selectedItemColor: Colors.white,
      //   items: [
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.home),
      //     label: 'Home',
      //     ),
      //
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.search),
      //       label: 'Search',
      //     ),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.send),
      //       label: 'Send',
      //     ),
      //   ],
      //   backgroundColor: Colors.transparent,
      //   currentIndex: 0,
      //   elevation: 0,
      //   showSelectedLabels: false,
      // ),
    );
  }
}

