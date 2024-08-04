import '../../utils/constants/app_strings.dart';
import '../../utils/constants/assets_paths.dart';

class FeedModel {
  final String id;
  final String image;
  final String musicName;
  final String singerName;

  FeedModel({
    required this.id,
    required this.image,
    required this.musicName,
    required this.singerName,
  });

  static List<FeedModel> musicDetails = [
    FeedModel(
      id: '1',
      image: AssetsPaths.girlPng,
      singerName: AppStrings.rihanna,
      musicName: AppStrings.diamonds,
    
    ),
    FeedModel(
      id: '2',
      image: AssetsPaths.girlPng,
      singerName: AppStrings.rihanna,
      musicName: AppStrings.diamonds,
    ),

    FeedModel(
      id: '3',
      image: AssetsPaths.girlPng,
      singerName: AppStrings.rihanna,
      musicName: AppStrings.diamonds,
    ),
  ];
}
