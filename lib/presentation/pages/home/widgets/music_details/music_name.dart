import 'package:flutter/material.dart';

import '../../../../../data/models/feed_model.dart';
import '../../../../../utils/constants/app_text_styles.dart';

class MusicName extends StatelessWidget {
  final FeedModel? musicdetail;

  const MusicName({Key? key, this.musicdetail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      musicdetail!.musicName , 
      style: AppTextStyles.appBarTitle25,
    );
  }
}
