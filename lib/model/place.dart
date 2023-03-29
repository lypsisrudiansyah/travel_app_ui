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
      Place(title: "Rain Forest", subtitle: "Costa Rica", imageUrl: 'assets/images/travel1.jpg', height: 240),
      Place(title: "Lake Louise", subtitle: "Canada", imageUrl: 'assets/images/travel2.jpg', height: 200),
      Place(title: "Plitvice Lakes", subtitle: "Croatia", imageUrl: 'assets/images/travel3.jpg', height: 120),
      Place(title: "Dubai", subtitle: "UAE", imageUrl: 'assets/images/travel4.jpg', height: 200),
      Place(title: "Rain Forest", subtitle: "Canada", imageUrl: 'assets/images/mp_1.jpg', height: 240),
      Place(title: "Plitivice Lakes", subtitle: "Costa Rica", imageUrl: 'assets/images/mp_2.jpg', height: 150),
    ];
  }
}
