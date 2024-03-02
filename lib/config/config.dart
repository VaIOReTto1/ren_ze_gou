import 'dart:ui';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class UIConfig {
  // 屏幕大小
  static const double designWidth = 375;
  static const double designHeight = 812;

  //组件大小
  static final double textFeildHeight = ScreenUtil().setWidth(30);
  static final double textFeildWidth = ScreenUtil().setWidth(273);
  static final double checkBoxSize = ScreenUtil().setWidth(7);

  static final double appBarHeight = ScreenUtil().setWidth(49);
  static final double searchHeight = ScreenUtil().setWidth(31);
  static final double navigationBarHeight = ScreenUtil().setWidth(52);

  static final double bannerHeight = ScreenUtil().setWidth(142);
  static final double recommendLogoHeight = ScreenUtil().setWidth(170);
  static final double recommendTabDividerHeight = ScreenUtil().setWidth(3);
  static final double recommendTabDividerWidth = ScreenUtil().setWidth(24);

  static final double medicineListHeight = ScreenUtil().setWidth(100);
  static final double medicineImageWidth = ScreenUtil().setWidth(112);
  static final double medicinePurchaseButtonHeight = ScreenUtil().setWidth(28);
  static final double medicinePurchaseButtonWidth = ScreenUtil().setWidth(49);

  static final double classficationMedicineImageHeight =
      ScreenUtil().setWidth(63.5);
  static final double classficationMedicineImageWidth =
      ScreenUtil().setWidth(91.2);

  // 字体大小
  static final double fontSizeLoginLogo = ScreenUtil().setSp(36); // 登陆页面标题
  static final double fontSizeLoginWelcome = ScreenUtil().setSp(24); // 登录页面欢迎词
  static final double fontSizeLoginMain = ScreenUtil().setSp(11); // 登录页面字体
  static final double fontSizeMain = ScreenUtil().setSp(10); // 搜索框字体
  static final double fontSizeSub = ScreenUtil().setSp(18); // 推荐品牌字体
  static final double fontSizeMedicineTitle = ScreenUtil().setSp(16); // 药品标题
  static final double fontSizeMedicineSub = ScreenUtil().setSp(8); // 药品公司、有效日期
  static final double fontSizeMedicineMin = ScreenUtil().setSp(7); // 药品评论
  static final double fontSizeMedicinePurchase =
      ScreenUtil().setSp(13); // 药品购买按钮

  //icon大小
  static final double logoSize = ScreenUtil().setWidth(41); //品牌推荐logo大小
  static final double appBarIconSize = ScreenUtil().setWidth(26);


  //间距
  static final double loginRLMainPadding =
      ScreenUtil().setWidth(51); // 登录页面主内容左右间距
  static final double loginRLSubPadding =
      ScreenUtil().setWidth(70); // 登录页面注册按钮间距
  static final double loginRLMinPadding =
      ScreenUtil().setWidth(95); // 登录页面隐私政策间距
  static final double loginTBMainPadding =
      ScreenUtil().setWidth(29); // 登录页面主内容上下间距
  static final double loginTBSubPadding =
      ScreenUtil().setWidth(19); // 登录页面输入框上下间距
  static final double loginTBMinPadding =
      ScreenUtil().setWidth(22); // 登录页面隐私政策上下间距
  static final double loginTextFeildRLPadding = ScreenUtil().setWidth(12);
  static final double loginTextFeildTBPadding = ScreenUtil().setWidth(14);
  static final double loginButtonRLPadding = ScreenUtil().setWidth(110);
  static final double loginRLSpace = ScreenUtil().setWidth(43); // 登录页面注册按钮之间间距

  static final double appBarIconRLPadding = ScreenUtil().setWidth(10);
  static final double searchContentPadding = ScreenUtil().setWidth(2.2);
  static final double searchDividerTBPadding = ScreenUtil().setWidth(4.5);
  static final double bannerPadding = ScreenUtil().setWidth(3);
  static final double recommendLogoPadding = ScreenUtil().setWidth(6);
  static final double recommendTabRLPadding = ScreenUtil().setWidth(20);

  static final double medicineListPadding = ScreenUtil().setWidth(5);

  //圆角
  static final double loginMainRadius = ScreenUtil().setWidth(51);
  static final double searchRadius = ScreenUtil().setWidth(22);
  static final double bannerRadius = ScreenUtil().setWidth(10);
  static final double recommendLogoRadius = ScreenUtil().setWidth(5);
  static final double recommendTabRadius = ScreenUtil().setWidth(17);

  //颜色
  static const Color Orange = Color(0xffFF6839);
  static const Color Grey = Color(0x80000000);
  static const Color selectBlack = Color(0xcc000000);
}
