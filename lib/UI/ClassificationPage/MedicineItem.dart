import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ren_ze_gou/UI/RenZeAppBar.dart';
import 'package:ren_ze_gou/config/config.dart';

toMedicineItem(BuildContext context) {
  Navigator.of(context).push(CupertinoPageRoute(builder: (context) {
    return const MedicineItem();
  }));
}

class MedicineItem extends StatefulWidget {
  const MedicineItem({super.key});

  @override
  State<MedicineItem> createState() => _MedicineItemState();
}

class _MedicineItemState extends State<MedicineItem> {
  List<String> type = ["发热", "头疼", "四肢乏力", "干咳", "多痰"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const RenZeAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: UIConfig.medicineItemRLPadding,
                vertical: UIConfig.medicineItemRLPadding / 2),
            child: Column(
              children: [
                ItemList(
                  category: "适用病症",
                  type: type,
                ),
                ItemList(
                  category: "适用病症",
                  type: type,
                ),
                ItemList(
                  category: "适用病症",
                  type: type,
                ),
                ItemList(
                  category: "适用病症",
                  type: type,
                ),
                Padding(
                  padding: EdgeInsets.only(top: UIConfig.medicineItemRLPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        child: Text(
                          "重置",
                          style: TextStyle(
                              color: UIConfig.Orange,
                              fontSize: UIConfig.fontSizeMedicineItemButton,
                              letterSpacing: 2),
                        ),
                      ),
                      InkWell(
                        child: Text(
                          "确认筛选",
                          style: TextStyle(
                              color: UIConfig.Orange,
                              fontSize: UIConfig.fontSizeMedicineItemButton,
                              letterSpacing: 2),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ItemList extends StatefulWidget {
  final String category;
  final List<String> type;

  const ItemList({super.key, required this.category, required this.type});

  @override
  State<ItemList> createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(UIConfig.medicineListPadding * 2.5),
          child: Text(
            widget.category,
            style: TextStyle(
              fontSize: UIConfig.fontSizeMedicinePurchase,
            ),
          ),
        ),
        Wrap(
          spacing: UIConfig.medicineListPadding, // 水平间距
          runSpacing: UIConfig.medicineListPadding, // 垂直间距，即行间距
          children: widget.type.map((type) {
            return Container(
              height: UIConfig.classificationTypeHeight,
              width: UIConfig.classificationTypeWidth,
              decoration: BoxDecoration(
                color: UIConfig.typeGrey,
                borderRadius:
                    BorderRadius.circular(UIConfig.classificationTypeRadius),
              ),
              child: Center(
                child: Text(
                  type,
                  style: TextStyle(fontSize: UIConfig.fontSizeMain),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
