import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ren_ze_gou/UI/RecommendPage/RecommendBanner.dart';
import 'package:ren_ze_gou/UI/RenZeAppBar.dart';

toRecommendPage(BuildContext context) {
  Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: (context) {
    return const RecommendPage();
  }));
}

class RecommendPage extends StatefulWidget {
  const RecommendPage({super.key});

  @override
  State<RecommendPage> createState() => _RecommendPageState();
}

class _RecommendPageState extends State<RecommendPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [RenZeAppBar(), RecommendBanner()],
      ),
    );
  }
}
