import 'package:flutter/material.dart';

import '../../config/config.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(UIConfig.loginRLMainPadding,
          MediaQuery.of(context).size.height * 0.222, 0, 0),
      child: Text(
        "仁泽购",
        style: TextStyle(
            fontSize: UIConfig.fontSizeLoginLogo,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            decoration: TextDecoration.none),
      ),
    );
  }
}

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(UIConfig.loginRLMainPadding,
          UIConfig.loginTBMainPadding, 0, UIConfig.loginTBMainPadding),
      child: Text(
        "欢迎您，请登录",
        style: TextStyle(
            fontSize: UIConfig.fontSizeLoginWelcome,
            fontWeight: FontWeight.w100,
            color: Colors.white,
            decoration: TextDecoration.none),
      ),
    );
  }
}
