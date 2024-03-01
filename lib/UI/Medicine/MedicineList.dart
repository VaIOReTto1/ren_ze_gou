import '../../config/config.dart';
import 'package:flutter/material.dart';

class MedicineList extends StatefulWidget {
  final String medicineName;
  final String medicineCompany;
  final String medicineDate;
  final String medicineCommentCount;
  final String medicineCommentGood;
  final String medicineImage;
  final String medicinePrice;

  const MedicineList(
      {super.key,
      required this.medicineName,
      required this.medicineCompany,
      required this.medicineDate,
      required this.medicineCommentCount,
      required this.medicineCommentGood,
      required this.medicineImage,
      required this.medicinePrice});

  @override
  State<MedicineList> createState() => _MedicineListState();
}

class _MedicineListState extends State<MedicineList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(UIConfig.medicineListPadding),
      height: UIConfig.medicineListHeight,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Image.network(
            widget.medicineImage,
            width: UIConfig.medicineImageWidth,
          ),
          SizedBox(
            width: UIConfig.medicineListPadding * 2,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.medicineName,
                style: TextStyle(
                    fontSize: UIConfig.fontSizeMedicineTitle,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                widget.medicineCompany,
                style: TextStyle(
                    fontSize: UIConfig.fontSizeMedicineSub,
                    color: UIConfig.Grey,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "有效期至${widget.medicineDate}",
                style: TextStyle(
                    fontSize: UIConfig.fontSizeMedicineSub,
                    color: UIConfig.Grey,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "￥${widget.medicinePrice}",
                style: TextStyle(
                    fontSize: UIConfig.fontSizeMedicineTitle,
                    color: const Color(0xffE13F0B),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: UIConfig.medicineListHeight - 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${widget.medicineCommentCount}条评论",
                      style: TextStyle(
                          fontSize: UIConfig.fontSizeMedicineMin,
                          color: UIConfig.Grey,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "${widget.medicineCommentGood}好评",
                      style: TextStyle(
                          fontSize: UIConfig.fontSizeMedicineMin,
                          color: UIConfig.Grey,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Text(
                "仁和药业",
                style: TextStyle(
                    fontSize: UIConfig.fontSizeMedicineSub,
                    color: UIConfig.Grey,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Expanded(child: Container()),
          Column(
            children: [
              Expanded(child: Container()),
              InkWell(
                child: Container(
                  width: UIConfig.medicinePurchaseButtonWidth,
                  height: UIConfig.medicinePurchaseButtonHeight,
                  decoration: BoxDecoration(
                      color: const Color(0xffEE5424),
                      borderRadius:
                          BorderRadius.circular(UIConfig.recommendLogoRadius)),
                  child: Center(
                    child: Text(
                      "购 买",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: UIConfig.fontSizeMedicinePurchase,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
