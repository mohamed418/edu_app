
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../layout/bloc/cubit.dart';
import '../../layout/bloc/states.dart';
import '../../models/components.dart';

class MLStepsScreen extends StatelessWidget {
  const MLStepsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LearnCubit, LearnStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
          )),
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
                    child: shadeMask('Machine-Learning Track', const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),),
                  ),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Step_item(
                        txt1: 'Statics\nfor\n ML',
                        color: LearnCubit.get(context).colorM1,
                        function: () {
                          LearnCubit.get(context)
                              .submit(track: topic2, points: 10);
                          LearnCubit.get(context).chM1();
                        },
                        context: context,
                      ),
                      Step_item(
                        txt1: 'Numpy',
                        color: LearnCubit.get(context).colorM2,
                        function: () {
                          LearnCubit.get(context)
                              .submit(track: topic2, points: 10);
                          LearnCubit.get(context).chM2();
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
                        txt1: 'Pandas',
                        color: LearnCubit.get(context).colorM3,
                        function: () {
                          LearnCubit.get(context)
                              .submit(track: topic2, points: 10);
                          LearnCubit.get(context).chM3();
                        },
                        context: context,
                      ),
                      Step_item(
                        txt1: 'Matplotllib',
                        color: LearnCubit.get(context).colorM4,
                        function: () {
                          LearnCubit.get(context)
                              .submit(track: topic2, points: 10);
                          LearnCubit.get(context).chM4();
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
                        color: LearnCubit.get(context).colorM5,
                        function: () {
                          LearnCubit.get(context)
                              .submit(track: topic2, points: 10);
                          LearnCubit.get(context).chM5();
                        },
                        context: context,
                      ),
                      Step_item(
                        txt1: 'intro to \nML',
                        color: LearnCubit.get(context).colorM6,
                        function: () {
                          LearnCubit.get(context)
                              .submit(track: topic2, points: 10);
                          LearnCubit.get(context).chM6();
                        },
                        context: context,
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Slider(
                    inactiveColor: Colors.purpleAccent,
                    thumbColor: Colors.purple,
                    value: LearnCubit.get(context).MLPoints,
                    max: 60,
                    divisions: 6,
                    label: '${LearnCubit.get(context).MLPoints} points',
                    onChanged: null,
                  ),
                  slider(context, LearnCubit.get(context).MLPoints),
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
