import '../../../models/login_model.dart';

abstract class SignUpStates{}

class SignUpInitialState extends SignUpStates{}

class SignUpSuccessState extends SignUpStates{
  final LearnLoginModel loginModel;
  SignUpSuccessState(this.loginModel);
}

class SignUpLoadingState extends SignUpStates{}

class SignUpErrorState extends SignUpStates{
  final String error;
  SignUpErrorState(this.error);
}

class ChangeBottomNavState1 extends SignUpStates{}
