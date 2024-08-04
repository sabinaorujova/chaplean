import 'package:flutter/material.dart';

import '../../../../utils/constants/app_text_styles.dart';

class PlayListName extends StatelessWidget {
  const PlayListName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Playlist Name',
      style: AppTextStyles.etheralWhite16,
    );
  }
}
