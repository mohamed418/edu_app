// ignore_for_file: deprecated_member_use

import 'package:Leran/modules/signup/signup_cubit/signup_cubit.dart';
import 'package:Leran/modules/signup/signup_cubit/signup_states.dart';
import 'package:buildcondition/buildcondition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/form_validator.dart';
import 'package:lottie/lottie.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';

import '../../layout/home_layout.dart';
import '../../models/components.dart';
import '../../network/local/cache_helper.dart';
import '../login/login_screen.dart';

// ignore: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  final _emailController1 = TextEditingController();
  final _passwordController1 = TextEditingController();
  final _nameController1 = TextEditingController();
  var formLoginKey1 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => LearnSignUpCubit(),
      child: BlocConsumer<LearnSignUpCubit, SignUpStates>(
        listener: (context, state) {
          if (state is SignUpSuccessState) {
            if (state.loginModel.status == true) {
              CacheHelper.saveData(
                key: 'token',
                value: state.loginModel.token,
              ).then((value) {
                token = state.loginModel.token!;
                navigateAndFinish(
                  const HomeLayout(),
                  context,
                );
              });
            } else {
              //print(state.loginModel.message);
              MotionToast.error(
                description: const Text(
                  'false',
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 15),
                ),
                animationType: ANIMATION.fromLeft,
                //layoutOrientation: ORIENTATION.rtl,
                position: MOTION_TOAST_POSITION.bottom,
                width: 300,
                height: 100,
              ).show(context);
            }
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: Center(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        onPressed: () {
                          navigateTo(LoginScreen(), context);
                        },
                        icon: const Icon(
                          Icons.arrow_left_rounded,
                          size: 60,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    SizedBox(
                      child: Lottie.asset('assets/lottiee/learn2.json'),
                      height: 220,
                      width: 220,
                    ),
                    Form(
                      key: formLoginKey1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(.3),
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(50),
                                  bottomRight: Radius.circular(50),
                                  topRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15))),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                TextFormField(
                                  controller: _nameController1,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter your name';
                                    } else {
                                      return null;
                                    }
                                  },
                                  keyboardType: TextInputType.name,
                                  decoration: const InputDecoration(
                                    hintText: 'enter your name',
                                    label: Text(
                                      'Name',
                                      // style: TextStyle(color: signup_bg),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                TextFormField(
                                  controller: _emailController1,
                                  validator:
                                      ValidationBuilder().email().build(),
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: const InputDecoration(
                                    hintText: 'enter your email',
                                    label: Text(
                                      'Email',
                                      // style: TextStyle(color: signup_bg),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                TextFormField(
                                  controller: _passwordController1,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter your password';
                                    } else {
                                      return null;
                                    }
                                  },
                                  keyboardType: TextInputType.visiblePassword,
                                  decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        LearnSignUpCubit.get(context)
                                            .changePasswordVisability();
                                      },
                                      icon: Icon(LearnSignUpCubit.get(context)
                                          .passIcon),
                                    ),
                                    hintText: 'enter your password',
                                    label: const Text('Password'),
                                  ),
                                  obscureText:
                                      LearnSignUpCubit.get(context).isVisible,
                                ),
                                const SizedBox(height: 20),
                                BuildCondition(
                                  condition: state is! SignUpLoadingState,
                                  builder: (context) => FlatButton(
                                    color: Colors.deepPurple,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    minWidth: 500,
                                    onPressed: () {
                                      if (formLoginKey1.currentState!
                                          .validate()) {
                                        FocusScope.of(context).unfocus();
                                        LearnSignUpCubit.get(context)
                                            .userSignUp(
                                          name: _nameController1.text,
                                          email: _emailController1.text,
                                          password: _passwordController1.text,
                                        );
                                      } else {
                                        FocusScope.of(context).unfocus();
                                      }
                                    },
                                    child: Text('sign up'.toUpperCase(),
                                        style: const TextStyle(
                                            color: Colors.white, fontSize: 20)),
                                  ),
                                  fallback: (context) => const Center(
                                      child: CircularProgressIndicator()),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
