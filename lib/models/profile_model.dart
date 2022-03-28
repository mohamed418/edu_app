class profileModel {
  CurrentUser? currentUser;

  profileModel.fromJson(Map<String, dynamic> json) {
    currentUser = json['currentUser'] != null
        ? new CurrentUser.fromJson(json['currentUser'])
        : null;
  }
}

class CurrentUser {
  User? user;
  bool? status;

  CurrentUser.fromJson(Map<String, dynamic> json) {
    user = json['User'] != null ? new User.fromJson(json['User']) : null;
    status = json['status'];
  }
}

class User {
  String? id;
  String? name;
  String? email;
  int? iat;

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    iat = json['iat'];
  }
}
