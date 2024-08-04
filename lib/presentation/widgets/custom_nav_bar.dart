import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../features/app_router/app_router.dart';
import '../../features/app_router/route_constants.dart';
import '../../utils/constants/app_colors.dart';
import '../../utils/constants/app_strings.dart';
import '../../utils/constants/assets_paths.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;



  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AssetsPaths.homeIcon),
          label: AppStrings.home,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AssetsPaths.notificationIcon),
          label: AppStrings.notification,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AssetsPaths.profileIcon),
          label: AppStrings.profile,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AssetsPaths.libraryIcon),
          label: AppStrings.library,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AssetsPaths.chatIcon),
          label: AppStrings.chat,
        ),
      ],
      currentIndex: selectedIndex,
      elevation: 0,
      selectedItemColor: AppColors.etherealWhite,
      onTap: (index) {
        setState(() {
          selectedIndex = index;
        });
        changeTab(index);
      },
    );
  }

  void changeTab(int index) {
    switch (index) {
      case 0:
        router.pushNamed(RouteConstants.home);
        break;
      case 1:
        router.pushNamed(RouteConstants.notification);
        break;
      case 2:
        router.pushNamed(RouteConstants.profile);

        break;
      case 3:
        router.pushNamed(RouteConstants.library);
        
        break;
      default:
              router.pushNamed(RouteConstants.chat);

        break;
    }
  }
}
