import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/app_text_styles.dart';

class PlayListMusicDetails extends StatelessWidget {
  const PlayListMusicDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '101 audio',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyles.etheralWhite8,
        ),
        5.horizontalSpace,
        const CircleAvatar(
          radius: 2,
        ),
        5.horizontalSpace,
        Text('EmilDost',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.etheralWhite8),
      ],
    );
  }
}
