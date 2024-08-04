import 'package:flutter/material.dart';

import '../chat/chat_page.dart';
import '../library/create_playlist_page.dart';
import '../notification/notification_page.dart';
import '../privacy/privacy_page.dart';
import '../profile/profile_page.dart';
import '../search/search_page.dart';
import 'home_page.dart';

class NavigationScreens extends StatefulWidget {
  const NavigationScreens({super.key});

  @override
  State<NavigationScreens> createState() => _NavigationScreensState();
}

class _NavigationScreensState extends State<NavigationScreens> {
  int _selectedIndex = 0;

  final List screens = const [
    HomePage(),
    NotificationPage(),
    ProfilePage(),
    LibraryPage(),
    ChatPage(),
    SearchPage(),
    PrivacyPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
     
    );
  }
}
