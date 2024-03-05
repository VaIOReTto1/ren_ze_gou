import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ren_ze_gou/UI/RenZeAppBar.dart';
import 'package:ren_ze_gou/config/MyIcon.dart';

import '../../config/config.dart';
import '../../model/Medicnce.dart';

toMedicinePage(BuildContext context, Medicine medicine) {
  Navigator.of(context).push(CupertinoPageRoute(builder: (context) {
    return MedicinePage(
      medicine: medicine,
    );
  }));
}

class MedicinePage extends StatefulWidget {
  final Medicine medicine;

  const MedicinePage({
    super.key,
    required this.medicine,
  });

  @override
  State<MedicinePage> createState() => _MedicinePageState();
}

class _MedicinePageState extends State<MedicinePage> {
  int _selectedList = 1;
  final ScrollController _scrollController = ScrollController();

  void _switchCatalog(int catalogIndex) {
    setState(() {
      _selectedList = catalogIndex;
    });
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    // 假设当滚动高度超过300.0时，切换到第2个目录
    if (_scrollController.offset >= UIConfig.medicinePageImageHeight) {
      _switchCatalog(2);
    } else {
      _switchCatalog(1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        const RenZeAppBar(),
        Container(
          color: Colors.white,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: UIConfig.recommendTabRLPadding / 4,
                    horizontal: UIConfig.recommendTabRLPadding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "商品",
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
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: UIConfig.recommendTabRLPadding / 4,
                    horizontal: UIConfig.recommendTabRLPadding / 2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "详情",
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
              )
            ],
          ),
        ),
        Expanded(
            child: ListView(
          controller: _scrollController,
          children: [
            Container(
              height: UIConfig.medicinePageImageHeight,
              width: double.infinity,
              margin: const EdgeInsets.all(0),
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(UIConfig.recommendTabRadius),
                  color: Colors.white),
              child: Image.network(
                widget.medicine.medicineImage,
                fit: BoxFit.fitHeight,
              ),
            ),
            Container(
                height: 1000,
                padding: EdgeInsets.symmetric(
                    horizontal: UIConfig.medicinePagePadding * 1.5,
                    vertical: UIConfig.medicinePagePadding),
                margin: EdgeInsets.all(UIConfig.medicinePagePadding * 0.8),
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: UIConfig.shadowGrey,
                      spreadRadius: 12,
                      blurRadius: 8,
                      offset: Offset.zero,
                    )
                  ],
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(UIConfig.recommendTabRadius),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "￥${widget.medicine.medicinePrice}",
                              style: TextStyle(
                                  fontSize: UIConfig.fontSizeLoginWelcome,
                                  color: UIConfig.Orange,
                                  letterSpacing: -0.24,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "月售：${widget.medicine.medicineCommentCount}",
                              style: TextStyle(
                                  fontSize: UIConfig.fontSizeMedicineSub,
                                  color: UIConfig.Grey,
                                  letterSpacing: -0.24),
                            ),
                          ]),
                      SizedBox(height: UIConfig.medicinePagePadding),
                      Text(
                        widget.medicine.medicineName,
                        style: TextStyle(
                          fontSize: UIConfig.fontSizeMedicineTitle,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -0.24,
                        ),
                      )
                    ]))
          ],
        )),
      ]),
      bottomNavigationBar: Container(
        height: UIConfig.medicinePageBottomHeight,
        padding: EdgeInsets.all(UIConfig.medicinePagePadding),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                InkWell(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        MyIcons.speech_buble,
                        size: UIConfig.appBarIconSize,
                        color: UIConfig.Grey,
                      ),
                      Text(
                        "业务员",
                        style: TextStyle(
                          color: UIConfig.Grey,
                          fontSize: UIConfig.fontSizeMedicineMin,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: UIConfig.medicinePagePadding * 2,
                ),
                InkWell(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        MyIcons.cart,
                        size: UIConfig.appBarIconSize,
                        color: UIConfig.Grey,
                      ),
                      Text(
                        "购物车",
                        style: TextStyle(
                          color: UIConfig.Grey,
                          fontSize: UIConfig.fontSizeMedicineMin,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                InkWell(
                    child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          UIConfig.medicinePageButtonRadius),
                      color: UIConfig.Yellow),
                  child: Padding(
                    padding: EdgeInsets.all(UIConfig.medicinePagePadding),
                    child: Text(
                      "加入购物车",
                      style: TextStyle(
                          fontSize: UIConfig.fontSizeMedicineTitle,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                )),
                SizedBox(
                  width: UIConfig.medicinePagePadding,
                ),
                InkWell(
                    child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          UIConfig.medicinePageButtonRadius),
                      color: UIConfig.buttonOrange),
                  child: Padding(
                    padding: EdgeInsets.all(UIConfig.medicinePagePadding),
                    child: Text(
                      "立即购买",
                      style: TextStyle(
                          fontSize: UIConfig.fontSizeMedicineTitle,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
