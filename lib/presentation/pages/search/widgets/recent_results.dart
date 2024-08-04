import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/constants/assets_paths.dart';

class RecentResults extends StatelessWidget {
  const RecentResults({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 6,
      itemBuilder: (context, index) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Loremipsum",
              style: AppTextStyles.etheralWhite,
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(AssetsPaths.xIcon),
            )
          ],
        );
      },
    );
  }
}
