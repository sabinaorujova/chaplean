import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class SideBarItem extends StatelessWidget {
  final String iconName;
  final String? label;
  final TextStyle style;

  const SideBarItem({
    Key? key,
    required this.iconName,
     this.label,
    required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(iconName, height: 24),
        4.verticalSpace,
        Text(label?? '', style: style),
      ],
    );
  }
}