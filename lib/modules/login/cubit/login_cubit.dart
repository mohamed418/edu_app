// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/login_model.dart';
import '../../../network/remote/dio_helper.dart';
import 'login_states.dart';

class LearnLoginCubit extends Cubit<LearnLoginStates> {
  LearnLoginCubit() : super(LearnLoginInitialState());

  static LearnLoginCubit get(context) => BlocProvider.of(context);

  late LearnLoginModel loginModel;

  void login({
    required String email,
    required String password,
  }) {
    emit(LearnLoginLoadingState());
    DioHelper.postData(
      url: 'signin',
      data: {'email': email, 'password': password},
    ).then((value) {
      loginModel = LearnLoginModel.fromJson(value.data);
      emit(LearnLoginSuccessState(loginModel));
    }).catchError((error) {
      emit(LearnLoginErrorState(error.toString()));
      print('eeeeeeeee $error');
    });
  }

  IconData icon = Icons.visibility_off;
  bool isVisible = false;

  void visible() {
    isVisible = !isVisible;
    icon = isVisible ? Icons.visibility : Icons.visibility_off;
    emit(ChangeBottomNavState());
  }
}
