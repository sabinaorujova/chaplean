import '../../utils/constants/assets_paths.dart';

class PodcastModel {
  String image;
  String title;
  String subtitle;

  PodcastModel({
    required this.image,
    required this.title,
    required this.subtitle,
  });
}

List<PodcastModel> podcastListModel = [
  PodcastModel(
    image: AssetsPaths.podcastImage_1,
    title: 'The Redemption of Jar Jar Binks',
    subtitle: 'Dylan Marron',
  ),
  PodcastModel(
    image: AssetsPaths.playlistImage_2,
    title: 'Fixable',
    subtitle: 'Frances Frei',
  ),
  PodcastModel(
    image: AssetsPaths.playlistImage_3,
    title: 'Good Sport',
    subtitle: 'Jody Avirgan',
  ),
  PodcastModel(
    image: AssetsPaths.playlistImage_4,
    title: 'ReThinking with Adam Grant',
    subtitle: 'Adam Grant',
  ),
  PodcastModel(
    image: AssetsPaths.podcastImage_5,
    title: 'Outrage + Optimism',
    subtitle: 'Christiana Figueres',
  ),
];
