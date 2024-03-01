import 'package:flutter/material.dart';
import 'package:ren_ze_gou/UI/Medicine/MedicineList.dart';
import 'package:ren_ze_gou/config/config.dart';
import 'package:sticky_headers/sticky_headers.dart';

class RecommendTab extends StatefulWidget {
  const RecommendTab({super.key});

  @override
  State<RecommendTab> createState() => _RecommendTabState();
}

class _RecommendTabState extends State<RecommendTab> {
  int _selectedList = 1; // 默认选中的目录

  void _switchCatalog(int catalogIndex) {
    setState(() {
      _selectedList = catalogIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return StickyHeader(
        header: Container(
          color: Colors.white,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () => _switchCatalog(1),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: UIConfig.recommendTabRLPadding / 4,
                      horizontal: UIConfig.recommendTabRLPadding),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "仁优惠",
                        style: TextStyle(
                          color: _selectedList == 1
                              ? const Color(0xffFF6839)
                              : UIConfig.Grey,
                          fontSize: UIConfig.fontSizeSub,
                          fontWeight: _selectedList == 1
                              ? FontWeight.bold
                              : FontWeight.w400,
                        ),
                      ),
                      Builder(builder: (BuildContext context) {
                        if (_selectedList == 1) {
                          return Container(
                            width: UIConfig.recommendTabDividerWidth,
                            height: UIConfig.recommendTabDividerHeight,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    UIConfig.recommendTabRadius),
                                color: const Color(0xffFF6839)),
                          );
                        } else {
                          return Container();
                        }
                      })
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () => _switchCatalog(2),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: UIConfig.recommendTabRLPadding / 4,
                      horizontal: UIConfig.recommendTabRLPadding / 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "应季药优选",
                        style: TextStyle(
                          color: _selectedList == 2
                              ? const Color(0xffFF6839)
                              : UIConfig.Grey,
                          fontSize: UIConfig.fontSizeSub,
                          fontWeight: _selectedList == 2
                              ? FontWeight.bold
                              : FontWeight.w400,
                        ),
                      ),
                      Builder(builder: (BuildContext context) {
                        if (_selectedList == 2) {
                          return Container(
                            width: UIConfig.recommendTabDividerWidth,
                            height: UIConfig.recommendTabDividerHeight,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    UIConfig.recommendTabRadius),
                                color: const Color(0xffFF6839)),
                          );
                        } else {
                          return Container();
                        }
                      })
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        content: Column(
            children: List.generate(
          10,
          (index) {
            return const MedicineList(
              medicineName: "复方氨酚烷胺胶囊",
              medicineCompany: "仁和制药责任有限公司",
              medicineDate: "2024-9-15",
              medicineCommentCount: "999+",
              medicineCommentGood: "98%",
              medicineImage: "https://s11.ax1x.com/2024/03/01/pF0U0OA.png",
              medicinePrice: "100.00",
            );
          },
        )));
  }
}
