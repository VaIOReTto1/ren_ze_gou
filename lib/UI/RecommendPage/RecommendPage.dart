import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ren_ze_gou/UI/RecommendPage/RecommendBanner.dart';
import 'package:ren_ze_gou/UI/RecommendPage/RecommendLogo.dart';
import 'package:ren_ze_gou/UI/RecommendPage/RecommendTab.dart';
import 'package:ren_ze_gou/UI/RenZeAppBar.dart';
import 'package:ren_ze_gou/config/config.dart';

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
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: _scrollController,
      padding: EdgeInsets.zero,
      children: const [
        RecommendBanner(),
        RecommendLogo(),
        RecommendTab(),
      ],
    );
  }
}
