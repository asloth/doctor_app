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

List<HealthPost> healthPosts = [
  HealthPost(
    1,
    'C.S. Villa Hermosa',
    openHour: 7,
    closeHour: 22,
    distance: 100,
    unitDistancie: 'm',
  ),
  HealthPost(
    2,
    'C.S. José Leonardo Ortiz',
    openHour: 00,
    closeHour: 24,
    distance: 500,
    unitDistancie: 'm',
  ),
  HealthPost(
    3,
    'P.S. Culpón',
    openHour: 8,
    closeHour: 12,
    distance: 2.70,
    unitDistancie: 'km',
  ),
  HealthPost(
    4,
    'P.S. Cerropón',
    openHour: 7,
    closeHour: 22,
    distance: 14,
    unitDistancie: 'km',
  ),
];
