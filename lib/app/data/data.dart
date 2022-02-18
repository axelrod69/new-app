import 'package:boozimba/app/models/UserModel.dart';
import 'package:boozimba/app/models/storesModel.dart';

final User user = User(
  name: 'John Doe',
  profileImageUrl: 'https://wallpapercave.com/wp/AYWg3iu.jpg',
);
final List<Story> stories = [
  Story(
    url: 'assets/images/pub screen 1 (1).png',
    media: MediaType.image,
    duration: const Duration(seconds: 10),
    user: user,
  ),
  Story(
    url: 'assets/images/pub screen 1 (8).png',
    media: MediaType.image,
    user: User(
      name: 'John Doe',
      profileImageUrl: 'https://wallpapercave.com/wp/AYWg3iu.jpg',
    ),
    duration: const Duration(seconds: 7),
  ),
  Story(
    url: 'assets/images/pub screen 1 (3).png',
    media: MediaType.image,
    duration: const Duration(seconds: 5),
    user: user,
  ),
  Story(
    url: 'assets/images/pub screen 1 (4).png',
    media: MediaType.image,
    duration: const Duration(seconds: 8),
    user: user,
  ),
];
