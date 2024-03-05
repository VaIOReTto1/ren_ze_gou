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

  static final double medicinePageImageHeight = ScreenUtil().setWidth(184);
  static final double medicinePageBottomHeight = ScreenUtil().setWidth(61);

  static final double classificationMedicineImageHeight =
      ScreenUtil().setWidth(63.5);
  static final double classificationMedicineImageWidth =
      ScreenUtil().setWidth(91.2);
  static final double classificationTypeHeight = ScreenUtil().setWidth(32);
  static final double classificationTypeWidth = ScreenUtil().setWidth(88);

  static final double cartListHeight = ScreenUtil().setWidth(100); // 购物车列表高度
  static final double cartListImageHeight = ScreenUtil().setWidth(114.7); // 购物车列表图片高度

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
  static final double fontSizeMedicineItemButton = ScreenUtil().setWidth(12);

  //icon大小
  static final double logoSize = ScreenUtil().setWidth(41); //品牌推荐logo大小
  static final double appBarIconSize = ScreenUtil().setWidth(22);

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
  static final double medicineItemRLPadding = ScreenUtil().setWidth(49);

  static final double medicinePagePadding = ScreenUtil().setWidth(10);

  //圆角
  static final double loginMainRadius = ScreenUtil().setWidth(51);
  static final double searchRadius = ScreenUtil().setWidth(22);
  static final double bannerRadius = ScreenUtil().setWidth(10);
  static final double recommendLogoRadius = ScreenUtil().setWidth(5);
  static final double recommendTabRadius = ScreenUtil().setWidth(17);
  static final double classificationTypeRadius = ScreenUtil().setWidth(30);
  static final double medicinePageButtonRadius = ScreenUtil().setWidth(34);

  //颜色
  static const Color Orange = Color(0xffFF6839);
  static const Color Grey = Color(0x80000000);
  static const Color selectBlack = Color(0xcc000000);
  static const Color typeBlack = Color(0xff2a2a2a);
  static const Color typeGrey = Color(0xfff3f3f3);
  static const Color shadowGrey = Color(0x1f000000);
  static const Color Yellow = Color(0xffFDEA3D);
  static const Color buttonOrange = Color(0xffEE5424);
}
