// ignore_for_file: avoid_print

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
import '../signup/signup_screen.dart';
import 'cubit/login_cubit.dart';
import 'cubit/login_states.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  var formLoginKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final _emailController = TextEditingController();
    final _passwordController = TextEditingController();

    return BlocProvider(
      create: (BuildContext context) => LearnLoginCubit(),
      child: BlocConsumer<LearnLoginCubit, LearnLoginStates>(
        listener: (context, state) {
          if (state is LearnLoginSuccessState) {
            if (state.loginModel.status == true) {
              print(state.loginModel.status);
              print(state.loginModel.token);
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
              MotionToast.success(
                description: const Text(
                  'True',
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
            } else {
              MotionToast.error(
                description: const Text(
                  'ERROR',
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
                    SizedBox(
                      child: Lottie.asset('assets/lottiee/learn1.json'),
                      height: 150,
                      width: 150,
                    ),
                    Form(
                      key: formLoginKey,
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
                                  textInputAction: TextInputAction.next,
                                  controller: _emailController,
                                  validator:
                                      ValidationBuilder().email().build(),
                                  keyboardType: TextInputType.text,
                                  decoration: const InputDecoration(
                                    hintText: 'enter your email',
                                    label: Text(
                                      'Email',
                                      // style: TextStyle(color: signup_bg),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                TextFormField(
                                  onFieldSubmitted: (v) {
                                    if (formLoginKey.currentState!.validate()) {
                                      FocusScope.of(context).unfocus();
                                    } else {
                                      FocusScope.of(context).unfocus();
                                    }
                                  },
                                  controller: _passwordController,
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
                                        LearnLoginCubit.get(context).visible();
                                      },
                                      icon: Icon(
                                          LearnLoginCubit.get(context).icon),
                                    ),
                                    hintText: 'enter your password',
                                    label: const Text('Password'),
                                  ),
                                  obscureText:
                                      LearnLoginCubit.get(context).isVisible,
                                ),
                                const SizedBox(height: 10),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: TextButton(
                                      onPressed: () {
                                        navigateAndFinish(
                                            SignUpScreen(), context);
                                      },
                                      child: const Text(
                                        'Don\'t have an account?',
                                        style:
                                            TextStyle(color: Colors.blueAccent),
                                      )),
                                ),
                                const SizedBox(height: 30),
                                BuildCondition(
                                  condition: true,
                                  // ignore: deprecated_member_use
                                  builder: (context) => FlatButton(
                                    color: Colors.deepPurple,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    minWidth: 500,
                                    onPressed: () {
                                      if (formLoginKey.currentState!
                                          .validate()) {
                                        FocusScope.of(context).unfocus();
                                        LearnLoginCubit.get(context).login(
                                          email: _emailController.text,
                                          password: _passwordController.text,
                                        );
                                      } else {
                                        FocusScope.of(context).unfocus();
                                      }
                                    },
                                    child: Text('sign in'.toUpperCase(),
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
