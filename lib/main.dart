import 'package:flutter/material.dart';
import 'package:userlogin/screens/homepage.dart';
import 'package:userlogin/screens/signin_screen.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(40),
            ),
          ),
          backgroundColor: Colors.blueGrey,
          toolbarHeight: 150,
          centerTitle: true,
        ),

        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(28),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.white),
                      border: OutlineInputBorder(),
                      labelText: 'User Name or e-mail',
                      hintText: 'Enter Your Name',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.white),
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter Password',
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => signinScreen()),
                  );

                  },
                  textColor: Colors.blueGrey,
                  child: Text('Forgot Password'),
                ),
                SizedBox(
                  //Use of SizedBox
                  height: 30,
                ),
                MaterialButton(
                  height: 40,
                  minWidth: 150,
                  textColor: Colors.white,
                  color:Colors.blueGrey,
                  child: Text('LOG IN'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => homePage()),
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(50),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => signinScreen()),
                      );
                    },
                    textColor: Colors.blueGrey,
                    child: Text('New User? Create Account'),
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
