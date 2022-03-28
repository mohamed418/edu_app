class LearnLoginModel {
  String? name;
  bool? status;
  String? token;

  LearnLoginModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    status = json['status'];
    token = json['token'];
  }
}
