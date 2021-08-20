import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:userlogin/screens/homepage.dart';

class otpScreen extends StatefulWidget {
  @override
  _otpScreenState createState() => _otpScreenState();
}

class _otpScreenState extends State<otpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text('Enter OTP'),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: OtpTextField(
            numberOfFields: 6,
            borderColor: Colors.blueGrey,
            focusedBorderColor: Colors.blueGrey,
            showFieldAsBox: false,
            borderWidth: 4.0,
            onCodeChanged: (String code) {},
            onSubmit: (String verificationCode) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => homePage()),
              );
            },
          ),
        ),
      ),
    );
  }
}
