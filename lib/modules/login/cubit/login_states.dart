import '../../../models/login_model.dart';

abstract class LearnLoginStates {}

class LearnLoginInitialState extends LearnLoginStates {}

class LearnLoginSuccessState extends LearnLoginStates {
  final LearnLoginModel loginModel;

  LearnLoginSuccessState(this.loginModel);
}

class LearnLoginLoadingState extends LearnLoginStates {}

class LearnLoginErrorState extends LearnLoginStates {
  final String error;

  LearnLoginErrorState(this.error);
}

class ChangeBottomNavState extends LearnLoginStates {}
