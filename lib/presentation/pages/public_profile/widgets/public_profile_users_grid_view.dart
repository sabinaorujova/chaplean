import 'package:chaplean/data/models/profile_frame_model.dart';
import 'package:chaplean/presentation/widgets/profile_frame.dart';
import 'package:chaplean/utils/constants/app_paddings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PublicProfileUsersGridView extends StatelessWidget {
  const PublicProfileUsersGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: profileFrame.length,
      padding: AppPaddings.t24lr16b16,
      scrollDirection: Axis.vertical,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
