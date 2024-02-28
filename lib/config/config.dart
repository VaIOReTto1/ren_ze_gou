import 'package:flutter_screenutil/flutter_screenutil.dart';

class UIConfig {
  // 屏幕大小
  static const double designWidth = 375;
  static const double designHeight = 812;

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

  static final double logoSize = ScreenUtil().setWidth(41); //品牌推荐logo大小
}
