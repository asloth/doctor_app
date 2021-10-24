class HealthPost {
  int id;
  String name;
  String? unitDistancie;
  int? closeHour, openHour;
  double? distance;

  HealthPost(
    this.id,
    this.name, {
    this.openHour,
    this.closeHour,
    this.distance,
    this.unitDistancie,
  });
}

List<HealthPost> health_posts = [
  HealthPost(
    1,
    'Posta 1',
    openHour: 7,
    closeHour: 22,
    distance: 100,
    unitDistancie: 'm',
  ),
  HealthPost(
    2,
    'Posta 2',
    openHour: 7,
    closeHour: 22,
    distance: 500,
    unitDistancie: 'm',
  ),
  HealthPost(
    3,
    'Posta 3',
    openHour: 7,
    closeHour: 22,
    distance: 2.70,
    unitDistancie: 'km',
  ),
  HealthPost(
    4,
    'Posta 4',
    openHour: 7,
    closeHour: 22,
    distance: 5.46,
    unitDistancie: 'km',
  ),
];
