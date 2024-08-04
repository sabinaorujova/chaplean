import 'package:flutter/material.dart';

import '../../../../utils/constants/assets_paths.dart';

class MusicSvg extends StatelessWidget {
  const MusicSvg({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 256,
        width: 256,
        child: Image.asset(AssetsPaths.cover),
      ),
    );
  }
}
