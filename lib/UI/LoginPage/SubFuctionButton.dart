import '../../config/config.dart';
import 'package:flutter/material.dart';

class SubFuctionButton extends StatefulWidget {
  const SubFuctionButton({super.key});

  @override
  State<SubFuctionButton> createState() => _SubFuctionButtonState();
}

class _SubFuctionButtonState extends State<SubFuctionButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {},
          child: Text(
            "注册账户",
            style: TextStyle(
                fontSize: UIConfig.fontSizeLoginMain,
                fontWeight: FontWeight.w400,
                color: Colors.white,
                decoration: TextDecoration.none),
          ),
        ),
        SizedBox(
          width: UIConfig.loginRLSpace,
        ),
        InkWell(
          onTap: () {},
          child: Text(
            "我是业务员",
            style: TextStyle(
                fontSize: UIConfig.fontSizeLoginMain,
                fontWeight: FontWeight.w400,
                color: Colors.white,
                decoration: TextDecoration.none),
          ),
        ),
        SizedBox(
          width: UIConfig.loginRLSpace,
        ),
        InkWell(
          onTap: () {},
          child: Text(
            "忘记密码 ?",
            style: TextStyle(
                fontSize: UIConfig.fontSizeLoginMain,
                fontWeight: FontWeight.w400,
                color: Colors.white,
                decoration: TextDecoration.none),
          ),
        ),
      ],
    );
  }
}
