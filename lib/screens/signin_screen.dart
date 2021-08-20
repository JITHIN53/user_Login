import 'package:flutter/material.dart';
import 'package:userlogin/screens/otp_screen.dart';



class signinScreen extends StatefulWidget {


  @override
  _signinScreenState createState() => _signinScreenState();
}

class _signinScreenState extends State<signinScreen> {
  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.blueGrey,
          title: Text('Sign In'),
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
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter Password',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Mobile Number',
                      hintText: 'Enter Mobile Number',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: MaterialButton(
                    height: 40,
                    minWidth: 150,
                    textColor: Colors.white,
                    color: Colors.blueGrey,
                    child: Text('SIGN IN'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => otpScreen()),
                      );
                    },
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
