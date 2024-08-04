import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/routes/generator.dart';
import '../../utils/constants/app_colors.dart';
import '../../utils/constants/app_paddings.dart';
import '../../utils/constants/app_strings.dart';
import '../pages/home/home_page.dart';
import 'custom_back_button.dart';
import 'global_input.dart';

class SearchAppbar extends StatefulWidget implements PreferredSizeWidget {
  const SearchAppbar({
    Key? key,
    this.showCustomBackButton = false,
    this.showSecondContanier = false,
    required this.onPressed,
    this.onSubmitted,
  }) : super(key: key);

  final bool showCustomBackButton;
  final bool showSecondContanier;
  final void Function() onPressed;
  final void Function(String)? onSubmitted;

  @override
  // ignore: library_private_types_in_public_api
  _SearchAppbarState createState() => _SearchAppbarState();

  @override
  Size get preferredSize => const Size.fromHeight(80);
}

class _SearchAppbarState extends State<SearchAppbar> {
  final TextEditingController _textEditingController = TextEditingController();
  bool showTabBarContent = false;

  @override
  void initState() {
    super.initState();
    _textEditingController.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  void _onTextChanged() {
    setState(() {
      showTabBarContent = _textEditingController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80.h,
      titleSpacing: 0,
      backgroundColor: AppColors.primaryColor,
      leadingWidth: 0,
      title: Column(
        children: [
          Padding(
            padding: AppPaddings.all8,
            child: Row(
              children: [
                if (widget.showCustomBackButton == true)
                  CustomBackButton(
                    icon: Icons.arrow_back,
                    onPressed: () => Navigate.back(
                      Scaffold.of(context).context,
                      const HomePage(),
                    ),
                  ),
                10.horizontalSpace,
                SizedBox(
                  width: 310.w,
                  height: 40.h,
                  child: GlobalInput(
                    controller: _textEditingController,
                    prefixIcon: const Icon(Icons.search_rounded),
                    hintText: AppStrings.search,
                    onSubmitted: widget.onSubmitted,
                  ),
                ),
                8.horizontalSpace,
                if (widget.showSecondContanier == true)
                  CustomBackButton(
                      onPressed: widget.onPressed, icon: Icons.add),
              ],
            ),
          ),
          const Divider(
            thickness: 2,
            color: AppColors.secondaryBlue,
          ),
        ],
      ),
    );
  }
}
