class CourseModel {
  List<Courses>? courses;
  bool? status;

  CourseModel.fromJson(Map<String, dynamic> json) {
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
  String? id;

  Courses.fromJson(Map<String, dynamic> json) {
    id = json['_id'];
  }
}
