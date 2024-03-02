import 'package:flutter/cupertino.dart';
import 'package:ren_ze_gou/UI/ClassificationPage/ClassificationList.dart';

import '../../config/config.dart';

class ClassficationPage extends StatefulWidget {
  const ClassficationPage({super.key});

  @override
  State<ClassficationPage> createState() => _ClassficationPageState();
}

class _ClassficationPageState extends State<ClassficationPage> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: UIConfig.classficationMedicineImageWidth*1.4, // 每个项目的最大宽度
        crossAxisSpacing: 0, // 水平间距
        mainAxisSpacing: 0, // 垂直间距
        childAspectRatio: 1.32, // 子项的宽高比
      ),
      padding: const EdgeInsets.all(0),
      itemCount: 50, // 项目总数
      itemBuilder: (context, index) {
        return const ClassificationList(
            classificationName: "感冒用药",
            classificationImage: "https://s11.ax1x.com/2024/03/01/pF0U0OA.png");
      },
    );
  }
}
