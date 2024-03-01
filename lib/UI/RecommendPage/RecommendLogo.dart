import 'package:flutter/material.dart';
import 'package:ren_ze_gou/config/config.dart';

class RecommendLogo extends StatelessWidget {
  const RecommendLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: UIConfig.recommendLogoHeight,
      color: const Color(0xffFF6839),
      padding: EdgeInsets.fromLTRB(
          UIConfig.recommendLogoPadding,
          UIConfig.recommendLogoPadding / 2,
          UIConfig.recommendLogoPadding,
          UIConfig.recommendLogoPadding),
      child: Column(
        children: [
          Text(
            "品牌推荐",
            style: TextStyle(
                fontSize: UIConfig.fontSizeSub,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          Expanded(
              child: Container(
            margin: EdgeInsets.only(top: UIConfig.recommendLogoPadding / 2),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.circular(UIConfig.recommendLogoRadius)),
            child: const LogoBanner(),
          ))
        ],
      ),
    );
  }
}

class LogoBanner extends StatefulWidget {
  const LogoBanner({super.key});

  @override
  State<LogoBanner> createState() => _LogoBannerState();
}

class _LogoBannerState extends State<LogoBanner> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView.builder(
          controller: _pageController,
          itemCount: 2,
          onPageChanged: (index) {
            setState(() {
              _currentPage = index;
            });
          },
          itemBuilder: (context, index) {
            return GridView.count(
                crossAxisSpacing: 0, // 设置水平间距
                mainAxisSpacing: 0, // 设置垂直间距
                childAspectRatio: 1.45,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(0),
                crossAxisCount: 4,
                children: List.generate(8, (index) {
                  String imageUrl = 'assets/image/Duolingo Logo.png';
                  return Image.asset(
                    imageUrl,
                    width: UIConfig.logoSize,
                    height: UIConfig.logoSize,
                  );
                }));
          },
        ),
        Positioned(
          bottom: 5,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              2,
              (index) => Container(
                width: 8,
                height: 8,
                margin: const EdgeInsets.symmetric(horizontal: 1),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentPage == index
                      ? const Color(0xffFF6839)
                      : const Color(0x8eededed),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
