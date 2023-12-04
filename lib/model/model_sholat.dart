class ModelSholat {
  int? id;
  String? name;
  String? arabic;
  String? latin;

  ModelSholat(this.id, this.name, this.arabic, this.latin);

  ModelSholat.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    arabic = json['arabic'];
    latin = json['latin'];
  }
}
