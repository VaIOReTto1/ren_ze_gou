import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ren_ze_gou/config/config.dart';

class RenZeAppBar extends StatefulWidget {
  const RenZeAppBar({super.key});

  @override
  State<RenZeAppBar> createState() => _RenZeAppBarState();
}

class _RenZeAppBarState extends State<RenZeAppBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, MediaQuery.of(context).padding.top, 0, 0),
      child: Container(
        width: double.infinity,
        color: const Color(0xffFF6839),
        height: UIConfig.appBarHeight,
        padding: EdgeInsets.symmetric(horizontal: UIConfig.appBarIconRLPadding),
        child: Row(
          children: [
            Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: UIConfig.appBarIconSize,
            ),
            Expanded(
              // 使用Expanded使搜索框占据剩余空间
              child: Container(
                margin: EdgeInsets.only(right: UIConfig.appBarIconRLPadding),
                height: UIConfig.searchHeight, // 容器高度
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(UIConfig.searchRadius),
                  // 圆角
                  color: Colors.white,
                ),
                child: TextField(
                  style: TextStyle(
                      color: Colors.black, fontSize: UIConfig.fontSizeMain),
                  decoration: InputDecoration(
                    contentPadding:EdgeInsets.only(top: UIConfig.searchContentPadding),
                    hintText: "搜索你想要的药品...",
                    // 占位符文本
                    hintStyle: const TextStyle(color: Color(0xff393939)),
                    border: InputBorder.none,
                    // 无边框
                    prefixIcon: Icon(
                      Icons.search, // 搜索图标
                      size: UIConfig.appBarIconSize,
                      color: Colors.grey,
                    ),
                    suffixIcon: SizedBox(
                      width: UIConfig.appBarIconSize+25,
                      height: UIConfig.appBarIconSize-10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          VerticalDivider(
                            width: 2,
                            thickness: 2,
                            color: Colors.grey,
                            indent: UIConfig.searchDividerTBPadding,
                            endIndent: UIConfig.searchDividerTBPadding,
                          ),
                          Icon(
                            MdiIcons.qrcodeScan, // 二维码图标
                            size: UIConfig.appBarIconSize - 7,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Image.asset(
              "assets/image/Speech Bubble.png",
              fit: BoxFit.fill,
              width: UIConfig.appBarIconSize,
              height: UIConfig.appBarIconSize,
            ),
          ],
        ),
      ),
    );
  }
}
