// ignore_for_file: avoid_print
import 'package:Leran/modules/signup/signup_cubit/signup_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../models/login_model.dart';
import '../../../network/remote/dio_helper.dart';

class LearnSignUpCubit extends Cubit<SignUpStates> {
  LearnSignUpCubit() : super(SignUpInitialState());

  static LearnSignUpCubit get(context) => BlocProvider.of(context);

  void userSignUp(
      {String? name, String? email, String? password, String? phone}) {
    emit(SignUpLoadingState());
    DioHelper.postData(url: 'signup', data: {
      "name": name,
      "email": email,
      'password': password,
    }).then((value) {
      learnModel = LearnLoginModel.fromJson(value.data);
      emit(SignUpSuccessState(learnModel!));
      //print(learnModel!.message);
    }).catchError((error) {
      emit(SignUpErrorState(error.toString()));
      print(error);
    });
  }

  LearnLoginModel? learnModel;

  bool isVisible = true;
  IconData passIcon = Icons.visibility;

  void changePasswordVisability() {
    isVisible = !isVisible;
    passIcon = isVisible ? Icons.visibility : Icons.visibility_off;
    emit(ChangeBottomNavState1());
  }
}
