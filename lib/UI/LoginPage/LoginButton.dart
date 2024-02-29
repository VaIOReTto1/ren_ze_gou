import 'package:ren_ze_gou/UI/RecommendPage/RecommendPage.dart';

import '../../config/config.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({super.key});

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        toRecommendPage(context);
      },
      child: Container(
          height: UIConfig.textFeildHeight,
          width: UIConfig.textFeildWidth,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(UIConfig.loginMainRadius),
              color: const Color(0xffFF6839)),
          margin: EdgeInsets.fromLTRB(UIConfig.loginRLMainPadding,
              UIConfig.loginTBSubPadding, 0, UIConfig.loginTextFeildRLPadding),
          child: Center(
              child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: UIConfig.loginButtonRLPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "登",
                  style: TextStyle(
                    fontSize: UIConfig.fontSizeLoginMain,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                  ),
                ),
                Text(
                  "录",
                  style: TextStyle(
                      fontSize: UIConfig.fontSizeLoginMain,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      decoration: TextDecoration.none),
                )
              ],
            ),
          ))),
    );
  }
}
