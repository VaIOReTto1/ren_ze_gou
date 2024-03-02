import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
    return Column(
      children: [
        Image.network(
          widget.classificationImage,
          width: UIConfig.classficationMedicineImageWidth,
          height: UIConfig.classficationMedicineImageHeight,
        ),
        Text(
          widget.classificationName,
          style: TextStyle(
            fontSize: UIConfig.fontSizeMain,
            color: Colors.black
          ),
        ),
      ],
    );
  }
}
