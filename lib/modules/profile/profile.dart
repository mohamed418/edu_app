// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import '../../layout/bloc/cubit.dart';
import '../../models/components.dart';
import '../../network/local/cache_helper.dart';
import '../login/login_screen.dart';

class settingsScreen extends StatelessWidget {
  const settingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
      ),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Your progress:',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple),
                    ),
                  ),
                  const SizedBox(height: 60),
                  shadeMask(
                    'Web Track',
                    const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Slider(
                    inactiveColor: Colors.purpleAccent,
                    thumbColor: Colors.purple,
                    value: LearnCubit.get(context).WebPoints,
                    max: 60,
                    divisions: 6,
                    label: '${LearnCubit.get(context).WebPoints} points',
                    onChanged: null,
                  ),
                  const SizedBox(height: 15),
                  shadeMask(
                    'Machine-Learning Track',
                    const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Slider(
                    inactiveColor: Colors.purpleAccent,
                    thumbColor: Colors.purple,
                    value: LearnCubit.get(context).MLPoints,
                    max: 60,
                    divisions: 6,
                    label: '${LearnCubit.get(context).MLPoints} points',
                    onChanged: null,
                  ),
                  const SizedBox(height: 15),
                  shadeMask(
                    'Flutter Track',
                    const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Slider(
                      value: LearnCubit.get(context).FlutterPoints,
                      max: 60,
                      divisions: 6,
                      label: '${LearnCubit.get(context).FlutterPoints} points',
                      onChanged: null),
                  const SizedBox(height: 45),
                  TextButton(
                    onPressed: () {
                      CacheHelper.removeData(key: "token")
                          .then((value) => navigateAndFinish(
                                LoginScreen(),
                                context,
                              ));
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.purple,
                            blurRadius: 10,
                            offset: Offset(3, 3),
                          )
                        ],
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20)),
                        color: Colors.deepPurple,
                      ),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                        child: Text(
                          'Log out',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
