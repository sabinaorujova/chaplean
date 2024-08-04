import '../../utils/constants/assets_paths.dart';

class PlaylistModel {
  String image;
  String title;
  String subtitle;

  PlaylistModel({
    required this.image,
    required this.title,
    required this.subtitle,
  });
}

List<PlaylistModel> playlistModel = [
  PlaylistModel(
    image: AssetsPaths.playlistImage_1,
    title: 'Trap Nation',
    subtitle: 'Trap Nation',
  ),
  PlaylistModel(
    image: AssetsPaths.playlistImage_2,
    title: 'Liquicity Drum & Bass',
    subtitle: 'Liquicity',
  ),
  PlaylistModel(
    image: AssetsPaths.playlistImage_3,
    title: 'UKF Drum & Bass',
    subtitle: 'UKF',
  ),
  PlaylistModel(
    image: AssetsPaths.playlistImage_4,
    title: 'Indie playlist',
    subtitle: 'Erin Halpenny',
  ),
  PlaylistModel(
    image: AssetsPaths.playlistImage_5,
    title: 'Lofi Girl’s favorites',
    subtitle: 'Lofi Girl',
  ),
  PlaylistModel(
    image: AssetsPaths.musicImage_1,
    title: 'Diamonds',
    subtitle: 'Rihanna',
  ),
  PlaylistModel(
    image: AssetsPaths.musicImage_2,
    title: 'Bad Guy',
    subtitle: 'Billie Eilish',
  ),
  PlaylistModel(
    image: AssetsPaths.musicImage_1,
    title: 'Diamonds',
    subtitle: 'Rihanna',
  ),
  PlaylistModel(
    image: AssetsPaths.musicImage_1,
    title: 'Diamonds',
    subtitle: 'Rihanna',
  ),
];
