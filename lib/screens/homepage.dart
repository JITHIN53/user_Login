import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  ('images/imagebg1.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Welcome',
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
