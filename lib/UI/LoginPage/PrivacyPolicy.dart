import '../../config/config.dart';
import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CheckBoxIcon(),
        RichText(
          text: TextSpan(
            // 默认样式
            style: TextStyle(
              fontSize: UIConfig.fontSizeLoginMain,
              color: Colors.white, // 默认为白色文本
            ),
            children: const <TextSpan>[
              TextSpan(text: '请您阅读并同意'),
              TextSpan(
                text: '仁泽购用户协议',
                style: TextStyle(color: Color(0xffFF6B00)), // 特定片段为红色文本
              ),
              TextSpan(text: '和'),
              TextSpan(
                text: '隐私政策',
                style: TextStyle(color: Color(0xffFF6B00)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CheckBoxIcon extends StatefulWidget {
  const CheckBoxIcon({super.key});

  @override
  _CheckBoxIconState createState() => _CheckBoxIconState();
}

class _CheckBoxIconState extends State<CheckBoxIcon> {
  bool isChecked = false; // 初始状态未选中

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isChecked = !isChecked; // 点击时改变状态
        });
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(
          2,
          4,
          4,
          2,
        ),
        width: UIConfig.checkBoxSize,
        height: UIConfig.checkBoxSize,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(2),
        ),
        child: isChecked
            ? Icon(
                Icons.check,
                size: UIConfig.checkBoxSize - 2,
                color: Colors.white,
              )
            : Container(),
      ),
    );
  }
}
