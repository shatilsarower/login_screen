import 'package:flutter/material.dart';
import 'package:loginin/Extracted_Widget/top_part.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Widget buildTopPart() {
    return TopPart();
  }

  Widget buildBottomPart() {
    return Column(
      children: [],
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
                  buildBottomPart(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TopPart extends StatelessWidget {
  const TopPart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Top_Part(),
      ],
    );
  }
}

// ignore: camel_case_types
