import 'package:flutter/material.dart';
import 'package:ren_ze_gou/UI/ClassificationPage/MedicineItem.dart';
import 'package:ren_ze_gou/config/config.dart';

class ClassificationList extends StatefulWidget {
  final String classificationName;
  final String classificationImage;

  const ClassificationList(
      {super.key,
      required this.classificationName,
      required this.classificationImage});

  @override
  State<ClassificationList> createState() => _ClassificationListState();
}

class _ClassificationListState extends State<ClassificationList> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => toMedicineItem(context),
      child: Column(
        children: [
          Image.network(
            widget.classificationImage,
            width: UIConfig.classificationMedicineImageWidth,
            height: UIConfig.classificationMedicineImageHeight,
          ),
          Text(
            widget.classificationName,
            style:
                TextStyle(fontSize: UIConfig.fontSizeMain, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
