import '../../widgets/custom_nav_bar.dart';

import '../../../core/routes/generator.dart';
import 'widgets/create_playlist_bottom_sheet.dart';
import 'widgets/playlist_details_bottom_sheet.dart';
import '../playlist_content/playlist_content_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../../data/models/create_playlist_model.dart';
import '../../../utils/constants/app_paddings.dart';
import '../../../utils/constants/assets_paths.dart';
import '../../widgets/bottom_sheet_rounded.dart';
import '../../widgets/custom_list_tile.dart';
import '../../widgets/search_appbar.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchAppbar(
        showSecondContanier: true,
        showCustomBackButton: false,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return BottomSheetRounded(
                height: 300.h,
                children: const [CreatePlaylistBottomSheet()],
              );
            },
          );
        },
      ),
      body: ListView.separated(
        padding: AppPaddings.tlr24b16,
        shrinkWrap: true,
        itemCount: createPlayListModel.length,
        scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) => 16.verticalSpace,
        itemBuilder: (context, index) {
          final createMusicList = createPlayListModel[index];
          return GestureDetector(
            onTap: () => Navigate.to(context, const PlaylistContentPage()),
            child: CustomListTile(
              trailing: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return const BottomSheetRounded(
                        children: [
                          PlaylistDetailsBottomSheet(),
                        ],
                      );
                    },
                  );
                },
                child: SizedBox(
                  child: SvgPicture.asset(AssetsPaths.horizontalDots),
                ),
              ),
              hasTrailing: true,
              hasUsername: true,
              image: createMusicList.image,
              title: createMusicList.title,
              subtitle: createMusicList.subtitle,
            ),
          );
        },
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
