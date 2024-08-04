import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../data/models/profile_frame_model.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../widgets/profile_frame.dart';

class ProfileUsersGridView extends StatelessWidget {
  const ProfileUsersGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: profileFrame.length,
      padding: AppPaddings.t24lr16b16,
      scrollDirection: Axis.vertical,
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: 123.h,
        crossAxisCount: 3,
        crossAxisSpacing: 11,
        mainAxisSpacing: 16,
      ),
      itemBuilder: (context, index) {
        final profile = profileFrame[index];
        return GlobalFrame(
          profilePicture: profile.image,
          username: profile.username,
        );
      },
    );
  }
}
