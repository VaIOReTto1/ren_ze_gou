import 'package:ren_ze_gou/model/Medicnce.dart';

import '../../config/config.dart';
import 'package:flutter/material.dart';

import 'MedicinePage.dart';

class MedicineList extends StatefulWidget {
  final Medicine medicine;

  const MedicineList(
      {super.key, required this.medicine,});

  @override
  State<MedicineList> createState() => _MedicineListState();
}

class _MedicineListState extends State<MedicineList> {
  Medicine medicine = Medicine(
    medicineName: "复方氨酚烷胺胶囊",
    medicineCompany: "仁和制药责任有限公司",
    medicineDate: "2024-9-15",
    medicineCommentCount: "999+",
    medicineCommentGood: "98%",
    medicineImage: "https://s11.ax1x.com/2024/03/01/pF0U0OA.png",
    medicinePrice: "100.00",
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(UIConfig.medicineListPadding),
      height: UIConfig.medicineListHeight,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Image.network(
            widget.medicine.medicineImage,
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
                widget.medicine.medicineName,
                style: TextStyle(
                    fontSize: UIConfig.fontSizeMedicineTitle,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                widget.medicine.medicineCompany,
                style: TextStyle(
                    fontSize: UIConfig.fontSizeMedicineSub,
                    color: UIConfig.Grey,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "有效期至${widget.medicine.medicineDate}",
                style: TextStyle(
                    fontSize: UIConfig.fontSizeMedicineSub,
                    color: UIConfig.Grey,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "￥${widget.medicine.medicinePrice}",
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
                      "${widget.medicine.medicineCommentCount}条评论",
                      style: TextStyle(
                          fontSize: UIConfig.fontSizeMedicineMin,
                          color: UIConfig.Grey,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "${widget.medicine.medicineCommentGood}好评",
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
                onTap: ()=>toMedicinePage(context, medicine),
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
