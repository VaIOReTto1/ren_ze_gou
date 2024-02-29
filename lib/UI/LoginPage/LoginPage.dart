import 'package:flutter/material.dart';
import 'package:ren_ze_gou/config/config.dart';

import 'LoginButton.dart';
import 'LoginTextField.dart';
import 'Logo.dart';
import 'PrivacyPolicy.dart';
import 'SubFuctionButton.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [BackGround(), MainContent()],
      ),
    );
  }
}

class BackGround extends StatelessWidget {
  const BackGround({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: const Color(0xffFF9680),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Image.asset("assets/image/login_background.png",
              fit: BoxFit.fill),
        ),
      ],
    );
  }
}

class MainContent extends StatefulWidget {
  const MainContent({super.key});

  @override
  State<MainContent> createState() => _MainContentState();
}

class _MainContentState extends State<MainContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Logo(),
        Welcome(),
        LoginTextField(hintText: "输入手机号"),
        LoginTextField(hintText: "输入密码"),
        SubFuctionButton(),
        LoginButton(),
        PrivacyPolicy()
      ],
    );
  }
}
