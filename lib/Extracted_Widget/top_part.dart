import 'package:flutter/material.dart';
import 'package:loginin/AppColors/app_colors.dart';
import 'package:loginin/style/login_screen_style.dart';
import 'package:loginin/widgets/my_button_widget.dart';
import 'package:loginin/widgets/myformfield_widget.dart';

// ignore: camel_case_types
class Top_Part extends StatelessWidget {
  const Top_Part({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: MyButtonWidget(
                  onPress: () {},
                  color: AppColors.baseDarkGreenColor,
                  text: 'Login',
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: MyButtonWidget(
                  onPress: () {},
                  color: AppColors.baseDarkOrangeColor,
                  text: 'Sign Up',
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Forgot Password?",
          style: LoginScreenStyle.forgotPasswordStyle,
        ),
      ],
    );
  }
}
