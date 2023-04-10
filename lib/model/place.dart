// ignore_for_file: public_member_api_docs, sort_constructors_first
class Place {
  String title;
  String subtitle;
  String imageUrl;
  double height;
  Place({
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.height,
  });
  
  static List<Place> generatePlaces() {
    return [
      Place(title: "Raja Ampat", subtitle: "Indonesia", imageUrl: 'assets/images/rajaampat.jpg', height: 240),
      Place(title: "South Kuta", subtitle: "Indonesia", imageUrl: 'assets/images/southkuta.jpg', height: 200),
      Place(title: "Desert", subtitle: "Morocco", imageUrl: 'assets/images/desertmorocco.jpg', height: 120),
      Place(title: "Forest", subtitle: "Slovenia", imageUrl: 'assets/images/forestslovenia.jpg', height: 200),
      Place(title: "Moraine Lake", subtitle: "Canada", imageUrl: 'assets/images/morainelake.jpg', height: 240),
      Place(title: "Kerid Crater", subtitle: "Iceland", imageUrl: 'assets/images/keridcratericeland.jpg', height: 150),
      Place(title: "Ice Caves", subtitle: "Iceland", imageUrl: 'assets/images/icecavesiceland.jpg', height: 150),
    ];
  }
}
