import '../../utils/constants/assets_paths.dart';

class ProfileFrameModel {
  final String image;
  final String username;

  ProfileFrameModel({
    required this.image,
    required this.username,
  });
}

List<ProfileFrameModel> profileFrame = [
  ProfileFrameModel(
    image: AssetsPaths.defaultProfileImage,
    username: 'Emil Dostaliyev',
  ),
  ProfileFrameModel(
    image: AssetsPaths.profilePictureWoman,
    username: 'Leyla Allahverdiyeva',
  ),
  ProfileFrameModel(
    image: AssetsPaths.profilePictureRounded,
    username: 'Lorem Ipsum Dolor Sit Amet',
  ),
  ProfileFrameModel(
    image: AssetsPaths.profilePictureRounded,
    username: 'Lorem Ipsum',
  ),
];
