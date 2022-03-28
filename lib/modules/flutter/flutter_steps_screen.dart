import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../layout/bloc/cubit.dart';
import '../../layout/bloc/states.dart';
import '../../models/components.dart';

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
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Step_item(
                        txt1: 'Flutter \nBasics',
                        color: LearnCubit.get(context).color1,
                        function: () {
                          LearnCubit.get(context)
                              .submit(track: topic3, points: 10);
                          LearnCubit.get(context).ch1();
                        },
                        context: context,
                      ),
                      Step_item(
                        txt1: 'Animation',
                        color: LearnCubit.get(context).color2,
                        function: () {
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
                        txt1: 'State \nManagement',
                        color: LearnCubit.get(context).color3,
                        function: () {
                          LearnCubit.get(context)
                              .submit(track: topic3, points: 10);
                          LearnCubit.get(context).ch3();
                        },
                        context: context,
                      ),
                      Step_item(
                        txt1: 'Firebase',
                        color: LearnCubit.get(context).color4,
                        function: () {
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
                        txt1: 'Linear algebra\nfor ML',
                        color: LearnCubit.get(context).color5,
                        function: () {
                          LearnCubit.get(context)
                              .submit(track: topic3, points: 10);
                          LearnCubit.get(context).ch5();
                        },
                        context: context,
                      ),
                      Step_item(
                        txt1: 'intro to \nML',
                        color: LearnCubit.get(context).color6,
                        function: () {
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
                    value: LearnCubit.get(context).FlutterPoints,
                    max: 60,
                    divisions: 6,
                    label: '${LearnCubit.get(context).FlutterPoints} points',
                    onChanged: null,
                  ),
                  slider(context, LearnCubit.get(context).FlutterPoints),
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
