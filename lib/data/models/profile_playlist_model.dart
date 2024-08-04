import '../../utils/constants/assets_paths.dart';

class ProfilePlaylistModel {
  ProfilePlaylistModel({
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image;
  final String title;
  final String subtitle;
}

List<ProfilePlaylistModel> profilePlaylist = [
  ProfilePlaylistModel(
    image: AssetsPaths.profilePlaylistImage_1,
    title: 'Lorem ipsum',
    subtitle: 'Lorem ipsum',
  ),
  ProfilePlaylistModel(
    image: AssetsPaths.profilePlaylistImage_2,
    title: 'Gecənin günəşi',
    subtitle: 'Emil Dost',
  ),
   
];
