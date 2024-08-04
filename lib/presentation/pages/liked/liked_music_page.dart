import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';
import '../../widgets/custom_nav_bar.dart';
import 'widgets/liked_app_bar.dart';
import 'widgets/liked_tab_bar.dart';

class LikedMusicPage extends StatefulWidget {
  const LikedMusicPage({super.key});

  @override
  State<LikedMusicPage> createState() => _LikedMusicPageState();
}

class _LikedMusicPageState extends State<LikedMusicPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  int activeTabIndex = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 3);
    tabController.addListener(() {
      setState(() {
        activeTabIndex = tabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyScaleBlack,
      appBar: LikedAppBar(controller: tabController),
      body: LikedTabBar(
        controller: tabController,
      ),
       bottomNavigationBar: const BottomNavBar(),
    );
  }
}
