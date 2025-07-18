class SuperheroDetailsResponse {
  final String id;
  final String name;
  final String url;
  final String? fullName;
  final PowerStats powerStats;
  SuperheroDetailsResponse({
    required this.id,
    required this.name,
    required this.url,
    required this.fullName,
    required this.powerStats
  });

  factory SuperheroDetailsResponse.fromJson(Map<String, dynamic> json) {
    return SuperheroDetailsResponse(
      id: json["id"],
      name: json["name"],
      url: json["image"]["url"],
      fullName: json["biography"]["full-name"],
      powerStats: PowerStats.fromJson(json["powerstats"])
    );
  }
}

class PowerStats {
  final String intelligence;
  final String strength;
  final String speed;
  final String durability;
  final String power;
  final String combat;

  PowerStats({
    required this.intelligence,
    required this.strength,
    required this.speed,
    required this.durability,
    required this.power,
    required this.combat,
  });

  factory PowerStats.fromJson(Map<String, dynamic> json) {
    return PowerStats(
      intelligence: json["intelligence"],
      strength: json["strength"],
      speed: json["speed"],
      durability: json["durability"],
      power: json["power"],
      combat: json["combat"],
    );
  }
}
