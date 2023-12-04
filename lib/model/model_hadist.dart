class ModelHadist {
  int? id;
  String? name;
  String? arabic;
  String? terjemah;

  ModelHadist(this.id, this.name, this.arabic, this.terjemah);

  ModelHadist.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    arabic = json['arabic'];
    terjemah = json['terjemah'];
  }
}
