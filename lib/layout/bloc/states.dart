import '../../models/login_model.dart';

abstract class LearnStates {}

class LearnInitialState extends LearnStates {}

class LearnSuccessState extends LearnStates {}

class LearnLoadingState extends LearnStates {}

class LearnErrorState extends LearnStates {
  final String error;

  LearnErrorState(this.error);
}

class GetCoursesSuccessState extends LearnStates {}

class GetCoursesLoadingState extends LearnStates {}

class GetCoursesErrorState extends LearnStates {
  final String error;

  GetCoursesErrorState(this.error);
}

class ChangeStepState extends LearnStates {}

class UserDataLoadingState extends LearnStates {}

class UserDataSuccesState extends LearnStates {
  final LearnLoginModel learnLoginModel;

  UserDataSuccesState(this.learnLoginModel);
}

class UserDataErorrState extends LearnStates {}
