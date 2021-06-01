import 'package:flutter/material.dart';
import 'package:loginin/widgets/myformfield_widget.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Widget buildTopPart() {
    return Column(
      children: [
        Image.asset(
          "image/logo.png",
          height: 150,
          width: 150,
        ),
        Column(
          children: [
            MyTextFormField(
              hintText: "Email",
              obscuretext: false,
            ),
            MyTextFormField(
              hintText: "Password",
              obscuretext: true,
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildTopPart(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
