import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_text_styles.dart';
import '../../widgets/global_divider.dart';
import '../profile/widgets/profile_pinned_tab_bar.dart';
import 'widgets/public_profile_header.dart';
import 'widgets/public_profile_playlist_list_view.dart';
import 'widgets/public_profile_users_grid_view.dart';

class PublicProfilePage extends StatefulWidget {
  const PublicProfilePage({super.key});

  @override
  State<PublicProfilePage> createState() => _PublicProfilePageState();
}

class _PublicProfilePageState extends State<PublicProfilePage>
    with TickerProviderStateMixin {
  late TabController tabController;
  int activeTabIndex = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 2);
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
      appBar: AppBar(
        centerTitle: true,
        scrolledUnderElevation: 0,
        backgroundColor: AppColors.primaryColor,
        title: Text(
          'username',
          style: AppTextStyles.whiteS13W600,
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(4.0),
          child: GlobalDivider(),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          const PublicProfileHeader(),
          ProfilePinnedTabBar(
            controller: tabController,
          ),
          SliverFillRemaining(
            child: TabBarView(
              controller: tabController,
              children: const [
                PublicProfilePlaylistListView(
                  profileBottomSheet: true,
                ),
                PublicProfileUsersGridView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
