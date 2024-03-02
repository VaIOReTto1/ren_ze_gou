import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ren_ze_gou/UI/ClassificationPage/ClassificationPage.dart';
import 'package:ren_ze_gou/UI/RecommendPage/RecommendPage.dart';
import 'package:ren_ze_gou/UI/RenZeAppBar.dart';
import 'package:ren_ze_gou/config/config.dart';

toHomePage(BuildContext context) {
  Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: (context) {
    return HomePage();
  }));
}

class HomePage extends StatefulWidget {
  int currentPageIndex;

  HomePage({super.key, this.currentPageIndex = 0});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _pages = [
    const RecommendPage(),
    const ClassficationPage(),
    const RecommendPage(),
    const ClassficationPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // 如果你的页面不需要调整大小来避免底部插入的内容（比如键盘），设置为false
      resizeToAvoidBottomInset: true,
      body: Column(
        children: [
          const RenZeAppBar(),
          Expanded(
            child: IndexedStack(
              //使用IndexedStack作为body
              index: widget.currentPageIndex, //当前显示的子组件索引
              children: _pages, //子组件列表
            ),
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: UIConfig.navigationBarHeight,
        width: MediaQuery.of(context).size.width,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          selectedFontSize: UIConfig.fontSizeMain,
          unselectedFontSize: UIConfig.fontSizeMain,
          currentIndex: widget.currentPageIndex,
          onTap: (index) {
            setState(() {
              widget.currentPageIndex = index;
            });
          },
          selectedItemColor: UIConfig.selectBlack,
          unselectedItemColor: UIConfig.Grey,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                MdiIcons.home,
                size: UIConfig.appBarIconSize,
              ),
              label: '推荐',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                MdiIcons.microsoft,
                size: UIConfig.appBarIconSize,
              ),
              label: '分类',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                MdiIcons.cart,
                size: UIConfig.appBarIconSize,
              ),
              label: '购物车',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                MdiIcons.naturePeople,
                size: UIConfig.appBarIconSize,
              ),
              label: '我的',
            ),
          ],
        ),
      ),
    );
  }
}
