class GetCoursesModel {
  List<Courses>? courses;
  bool? status;

  GetCoursesModel.fromJson(Map<String, dynamic> json) {
    if (json['courses'] != null) {
      courses = <Courses>[];
      json['courses'].forEach((v) {
        courses!.add(Courses.fromJson(v));
      });
    }
    status = json['status'];
  }
}

class Courses {
  String? title;
  String? description;
  String? imageSrc;
  String? courseUrl;
  String? sId;

  Courses.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    imageSrc = json['imageSrc'];
    courseUrl = json['courseUrl'];
    sId = json['_id'];
  }
}
