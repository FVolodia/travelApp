List<Place> placeList = [
  Place('Arizona', 'cool place', 2001, 20, 'images/img_arizona.jpg',
      Author('Lisa', 'images/user_1.jpg'), []),
  Place('Dubai', 'cool place', 123, 12, 'images/dubai.jpg',
      Author('Lisa', 'images/user_1.jpg'), []),
  Place('Miami', 'cool place', 298, 10, 'images/miami.jpg',
      Author('Lisa', 'images/user_1.jpg'), []),
  Place('New York', 'cool place', 765, 42, 'images/new_york.jpg',
      Author('Lisa', 'images/user_1.jpg'), []),
  Place('Tokyo', 'cool place', 698, 18, 'images/tokyo.jpeg',
      Author('Lisa', 'images/user_1.jpg'), []),
];



class Place {
  final String placeName;
  final String mainPlaceImageUrl;
  final String description;
  final Author author;
  final int watchedCount;
  final int likes;
  final List<String> images;

  Place(this.placeName, this.description, this.watchedCount, this.likes,
      this.mainPlaceImageUrl, this.author, this.images);
}

class Author {
  final String fullName;
  final String avatarUrl;

  Author(this.fullName, this.avatarUrl);
}
