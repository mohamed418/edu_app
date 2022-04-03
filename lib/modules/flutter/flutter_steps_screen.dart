import 'package:Leran/modules/flutter/courses/api.dart';
import 'package:Leran/modules/flutter/courses/dart_oop.dart';
import 'package:Leran/modules/flutter/courses/flutter_basics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../layout/bloc/cubit.dart';
import '../../layout/bloc/states.dart';
import '../../models/components.dart';
import 'courses/animation.dart';
import 'courses/firebase.dart';
import 'courses/state_management.dart';

class FlutterStepsScreen extends StatelessWidget {
  const FlutterStepsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LearnCubit, LearnStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    alignment: Alignment.centerLeft,
                    child: shadeMask(
                      'Flutter Track',
                      const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  Row(
                    children: [
                      shadeMask(
                        'one click',
                        const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        ' for recommended courses',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.purpleAccent,
                        ),

                      )
                    ],
                  ),
                  Row(
                    children: [
                      shadeMask(
                        'double click',
                        const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        ' when finishing',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.purpleAccent,
                        ),

                      )
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Step_item(
                        txt1: 'Dart & OOP',
                        color: LearnCubit
                            .get(context)
                            .color1,
                        function: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Dart()));
                        },
                        context: context,
                        doublePress: () {
                          LearnCubit.get(context)
                              .submit(track: topic3, points: 10);
                          LearnCubit.get(context).ch1();
                        },
                      ),
                      Step_item(
                        txt1: 'Flutter \n UI',
                        color: LearnCubit
                            .get(context)
                            .color2,
                        function: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => FlutterBasics()));
                        },
                        doublePress: () {
                          LearnCubit.get(context)
                              .submit(track: topic3, points: 10);
                          LearnCubit.get(context).ch2();
                        },
                        context: context,
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Step_item(
                        txt1: 'Animation',
                        color: LearnCubit
                            .get(context)
                            .color3,
                        function: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => AnimationCourse()));
                        },
                        doublePress: () {
                          LearnCubit.get(context)
                              .submit(track: topic3, points: 10);
                          LearnCubit.get(context).ch3();
                        },
                        context: context,
                      ),
                      Step_item(
                        txt1: 'State \n Management',
                        color: LearnCubit
                            .get(context)
                            .color4,
                        function: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => StateManagement()));
                        },
                        doublePress: () {
                          LearnCubit.get(context)
                              .submit(track: topic3, points: 10);
                          LearnCubit.get(context).ch4();
                        },
                        context: context,
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Step_item(
                        txt1: 'Firebase',
                        color: LearnCubit
                            .get(context)
                            .color5,
                        function: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Firebase()));
                        },
                        doublePress: () {
                          LearnCubit.get(context)
                              .submit(track: topic3, points: 10);
                          LearnCubit.get(context).ch5();
                        },
                        context: context,
                      ),
                      Step_item(
                        txt1: 'API\'s',
                        color: LearnCubit
                            .get(context)
                            .color6,
                        function: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => APICourse()));
                        },
                        doublePress: () {
                          LearnCubit.get(context)
                              .submit(track: topic3, points: 10);
                          LearnCubit.get(context).ch6();
                        },
                        context: context,
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Slider(
                    inactiveColor: Colors.purpleAccent,
                    thumbColor: Colors.purple,
                    value: LearnCubit
                        .get(context)
                        .FlutterPoints,
                    max: 60,
                    divisions: 6,
                    label: '${LearnCubit
                        .get(context)
                        .FlutterPoints} points',
                    onChanged: null,
                  ),
                  slider(context, LearnCubit
                      .get(context)
                      .FlutterPoints),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
