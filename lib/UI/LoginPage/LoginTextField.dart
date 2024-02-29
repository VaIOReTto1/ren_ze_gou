import '../../config/config.dart';
import 'package:flutter/material.dart';

class LoginTextField extends StatefulWidget {
  final String hintText;

  const LoginTextField({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  State<LoginTextField> createState() => _LoginTextFieldState();
}

class _LoginTextFieldState extends State<LoginTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: UIConfig.textFeildHeight,
      width: UIConfig.textFeildWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(UIConfig.loginMainRadius),
        color: Colors.white,
      ),
      margin: EdgeInsets.fromLTRB(
          UIConfig.loginRLMainPadding, 0, 0, UIConfig.loginTextFeildRLPadding),
      child: TextField(
        style: TextStyle(
          color: Colors.black,
          fontSize: UIConfig.fontSizeLoginMain,
          fontWeight: FontWeight.w400,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(UIConfig.loginTextFeildRLPadding,
              0, 0, UIConfig.loginTextFeildTBPadding),
          hintText: widget.hintText,
          hintStyle: TextStyle(
            fontSize: UIConfig.fontSizeLoginMain,
            color: Colors.grey,
            fontWeight: FontWeight.w400,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
