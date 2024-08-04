import '../../utils/constants/assets_paths.dart';

class CreatePlayListModel {
  String image;
  String title;
  String subtitle;

  CreatePlayListModel({
    required this.image,
    required this.title,
    required this.subtitle,
  });
}

List<CreatePlayListModel> createPlayListModel = [
  CreatePlayListModel(
    image: AssetsPaths.blueApple,
    title: 'Playlist Name',
    subtitle: '101 content',
  ),
  CreatePlayListModel(
    image: AssetsPaths.playlistImage_2,
    title: '2 Playlist Name',
    subtitle: 'EmilDost',
  ),
  
];
