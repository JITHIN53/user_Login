import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(appBar: AppBar( shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(40),
        ),
      ),
        backgroundColor: Colors.blueGrey,
        toolbarHeight: 50,
      ),
        body:
              Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Welcome',
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0),
                  )),

          ),
    );
  }
}
