import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loginin/AppColors/app_colors.dart';
import 'package:loginin/Extracted_Widget/top_part.dart';
import 'package:loginin/style/login_screen_style.dart';
import 'package:loginin/svgimage/svg_image.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Widget buildTopPart() {
    return TopPart();
  }

  Widget buildBottomPart() {
    return Container(
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "or sign in with social networks",
            style: LoginScreenStyle.signinSocialNetworks,
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  shape: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 0.5,
                      //color: AppColors.baseGrey40Color,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  onPressed: () {},
                  child: SvgPicture.asset(
                    SvgImage.facebook,
                    color: AppColors.baseBlackColor,
                    width: 45,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                MaterialButton(
                  shape: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 0.5,
                      //color: AppColors.baseGrey40Color,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  onPressed: () {},
                  child: SvgPicture.asset(
                    SvgImage.google,
                    color: AppColors.baseDarkOrangeColor,
                    width: 45,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                MaterialButton(
                  shape: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 0.5,
                      //color: AppColors.baseGrey40Color,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  onPressed: () {},
                  child: SvgPicture.asset(
                    SvgImage.twitter,
                    color: AppColors.baseBlackColor,
                    width: 45,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
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
