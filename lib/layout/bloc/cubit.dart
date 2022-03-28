// ignore_for_file: avoid_print, equal_keys_in_map, non_constant_identifier_names, body_might_complete_normally_nullable
import 'package:Leran/layout/bloc/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../models/course_model.dart';
import '../../models/get_courses_model.dart';
import '../../models/login_model.dart';
import '../../network/local/cache_helper.dart';
import '../../network/remote/dio_helper.dart';

class LearnCubit extends Cubit<LearnStates> {
  LearnCubit() : super(LearnInitialState());

  static LearnCubit get(context) => BlocProvider.of(context);

  LearnLoginModel? LoginModel;

  void getUserData() {
    emit(UserDataLoadingState());
    DioHelper.getData(
      token: CacheHelper.getData(key: "token"),
      url: 'current-user',
    ).then((value) {
      LoginModel = LearnLoginModel.fromJson(value.data);
      emit(UserDataSuccesState(LoginModel!));
    }).catchError((error) {
      emit(UserDataErorrState());
      print(error.toString());
    });
  }

  late CourseModel courseModel;

  void submit({
    String? track,
    dynamic points,
  }) {
    emit(LearnLoadingState());
    DioHelper.patchData(
      token: CacheHelper.getData(key: "token"),
      url: 'register_courses',
      track: track,
      points: points,
    ).then((value) {
      print('ssssssssssssssss $track');
      courseModel = CourseModel.fromJson(value.data);
      emit(LearnSuccessState());
    }).catchError((error) {
      emit(LearnErrorState(error.toString()));
      print('eeeeeeeee $error');
    });
  }

  late GetCoursesModel getCoursesModel;

  void getCourses() {
    emit(GetCoursesLoadingState());
    DioHelper.getData(
      url: 'get_courses',
      token: CacheHelper.getData(key: "token"),
    ).then((value) {
      getCoursesModel = GetCoursesModel.fromJson(value.data);
      emit(GetCoursesSuccessState());
    }).catchError((error) {
      emit(GetCoursesErrorState(error.toString()));
      print('eeeeeeeee $error');
    });
  }

  double WebPoints = 0;
  double MLPoints = 0;
  double FlutterPoints = 0;

  Color color1 = Colors.grey;
  bool isVisible1 = false;

  void ch1() {
    FlutterPoints = isVisible1 ? FlutterPoints - 10 : FlutterPoints + 10;
    isVisible1 = !isVisible1;
    color1 = isVisible1 ? Colors.purple : Colors.grey;
    emit(ChangeStepState());
  }

  Color color2 = Colors.grey;
  bool isVisible2 = false;

  void ch2() {
    FlutterPoints = isVisible2 ? FlutterPoints - 10 : FlutterPoints + 10;
    isVisible2 = !isVisible2;
    color2 = isVisible2 ? Colors.purple : Colors.grey;
    emit(ChangeStepState());
  }

  Color color3 = Colors.grey;
  bool isVisible3 = false;

  void ch3() {
    FlutterPoints = isVisible3 ? FlutterPoints - 10 : FlutterPoints + 10;
    isVisible3 = !isVisible3;
    color3 = isVisible3 ? Colors.purple : Colors.grey;
    emit(ChangeStepState());
  }

  Color color4 = Colors.grey;
  bool isVisible4 = false;

  void ch4() {
    FlutterPoints = isVisible4 ? FlutterPoints - 10 : FlutterPoints + 10;
    isVisible4 = !isVisible4;
    color4 = isVisible4 ? Colors.purple : Colors.grey;
    emit(ChangeStepState());
  }

  Color color5 = Colors.grey;
  bool isVisible5 = false;

  void ch5() {
    FlutterPoints = isVisible5 ? FlutterPoints - 10 : FlutterPoints + 10;
    isVisible5 = !isVisible5;
    color5 = isVisible5 ? Colors.purple : Colors.grey;
    emit(ChangeStepState());
  }

  Color color6 = Colors.grey;
  bool isVisible6 = false;

  void ch6() {
    FlutterPoints = isVisible6 ? FlutterPoints - 10 : FlutterPoints + 10;
    isVisible6 = !isVisible6;
    color6 = isVisible6 ? Colors.purple : Colors.grey;
    emit(ChangeStepState());
  }

  VoidCallback? onCF(double v) {
    FlutterPoints = v;
  }

  Color colorM1 = Colors.grey;
  bool isVisiblM1 = false;

  void chM1() {
    MLPoints = isVisiblM1 ? MLPoints - 10 : MLPoints + 10;
    isVisiblM1 = !isVisiblM1;
    colorM1 = isVisiblM1 ? Colors.purple : Colors.grey;
    emit(ChangeStepState());
  }

  Color colorM2 = Colors.grey;
  bool isVisiblM2 = false;

  void chM2() {
    MLPoints = isVisiblM2 ? MLPoints - 10 : MLPoints + 10;
    isVisiblM2 = !isVisiblM2;
    colorM2 = isVisiblM2 ? Colors.purple : Colors.grey;
    emit(ChangeStepState());
  }

  Color colorM3 = Colors.grey;
  bool isVisiblM3 = false;

  void chM3() {
    MLPoints = isVisiblM3 ? MLPoints - 10 : MLPoints + 10;
    isVisiblM3 = !isVisiblM3;
    colorM3 = isVisiblM3 ? Colors.purple : Colors.grey;
    emit(ChangeStepState());
  }

  Color colorM4 = Colors.grey;
  bool isVisiblM4 = false;

  void chM4() {
    MLPoints = isVisiblM4 ? MLPoints - 10 : MLPoints + 10;
    isVisiblM4 = !isVisiblM4;
    colorM4 = isVisiblM4 ? Colors.purple : Colors.grey;
    emit(ChangeStepState());
  }

  Color colorM5 = Colors.grey;
  bool isVisiblM5 = false;

  void chM5() {
    MLPoints = isVisiblM5 ? MLPoints - 10 : MLPoints + 10;
    isVisiblM5 = !isVisiblM5;
    colorM5 = isVisiblM5 ? Colors.purple : Colors.grey;
    emit(ChangeStepState());
  }

  Color colorM6 = Colors.grey;
  bool isVisiblM6 = false;

  void chM6() {
    MLPoints = isVisiblM6 ? MLPoints - 10 : MLPoints + 10;
    isVisiblM6 = !isVisiblM6;
    colorM6 = isVisiblM6 ? Colors.purple : Colors.grey;
    emit(ChangeStepState());
  }

  VoidCallback? onCM(double v) {
    MLPoints = v;
  }

  Color colorF1 = Colors.grey;
  bool isVisiblF1 = false;

  void chF1() {
    WebPoints = isVisiblF1 ? WebPoints - 10 : WebPoints + 10;
    isVisiblF1 = !isVisiblF1;
    colorF1 = isVisiblF1 ? Colors.purple : Colors.grey;
    emit(ChangeStepState());
  }

  Color colorF2 = Colors.grey;
  bool isVisiblF2 = false;

  void chF2() {
    WebPoints = isVisiblF2 ? WebPoints - 10 : WebPoints + 10;
    isVisiblF2 = !isVisiblF2;
    colorF2 = isVisiblF2 ? Colors.purple : Colors.grey;
    emit(ChangeStepState());
  }

  Color colorF3 = Colors.grey;
  bool isVisiblF3 = false;

  void chF3() {
    WebPoints = isVisiblF3 ? WebPoints - 10 : WebPoints + 10;
    isVisiblF3 = !isVisiblF3;
    colorF3 = isVisiblF3 ? Colors.purple : Colors.grey;
    emit(ChangeStepState());
  }

  Color colorF4 = Colors.grey;
  bool isVisiblF4 = false;

  void chF4() {
    WebPoints = isVisiblF4 ? WebPoints - 10 : WebPoints + 10;
    isVisiblF4 = !isVisiblF4;
    colorF4 = isVisiblF4 ? Colors.purple : Colors.grey;
    emit(ChangeStepState());
  }

  Color colorF5 = Colors.grey;
  bool isVisiblF5 = false;

  void chF5() {
    WebPoints = isVisiblF5 ? WebPoints - 10 : WebPoints + 10;
    isVisiblF5 = !isVisiblF5;
    colorF5 = isVisiblF5 ? Colors.purple : Colors.grey;
    emit(ChangeStepState());
  }

  Color colorF6 = Colors.grey;
  bool isVisiblF6 = false;

  void chF6() {
    WebPoints = isVisiblF6 ? WebPoints - 10 : WebPoints + 10;
    isVisiblF6 = !isVisiblF6;
    colorF6 = isVisiblF6 ? Colors.purple : Colors.grey;
    emit(ChangeStepState());
  }

  VoidCallback? onCW(double v) {
    WebPoints = v;
  }
}
