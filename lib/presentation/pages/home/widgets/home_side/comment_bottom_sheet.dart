import 'package:flutter/material.dart';

import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_paddings.dart';
import '../../../../../utils/constants/app_strings.dart';
import '../../../../widgets/global_input.dart';
import 'bottom_sheet_box.dart';
import 'comment_tile.dart';

class CommentBottomSheet extends StatelessWidget {
  const CommentBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BottomSheetBox(
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 6,
              itemBuilder: (context, index) {
                return const CommentTile(
                  username: AppStrings.username,
                  comment: AppStrings.commentText,
                );
              },
            ),
          ),
        const  Padding(
            padding: AppPaddings.tlr16b12,
            child:  GlobalInput(
              hintText: AppStrings.message,
              suffixIcon: Icon(
                Icons.send,
                color: AppColors.etherealWhite,
              ),
            ),
          )
        ],
      ),
    );
  }
}
