import '../../widgets/custom_nav_bar.dart';
import 'package:flutter/material.dart';

import '../../widgets/search_appbar.dart';
import 'widgets/results.dart';
import 'widgets/tabbar_content.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  int activeTabIndex = 0;
  bool _showRecentResults = true;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 4);
    tabController.addListener(() {
      setState(() {
        activeTabIndex = tabController.index;
      });
    });
  }

  void _handleSearch(String searchText) {
    setState(() {
      _showRecentResults = searchText.isEmpty;
    });
  }

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: SearchAppbar(
        showSecondContanier: false,
        showCustomBackButton: true,
        onPressed: () {},
        onSubmitted: _handleSearch,
      ),
      body: _showRecentResults
          ? const Results()
          : TabbarContent(
              controller: tabController,
            ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
