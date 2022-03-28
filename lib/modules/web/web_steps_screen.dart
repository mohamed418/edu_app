// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../layout/bloc/cubit.dart';
import '../../layout/bloc/states.dart';
import '../../models/components.dart';

class WebStepsScreen extends StatelessWidget {
  const WebStepsScreen({Key? key}) : super(key: key);

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
          body: SafeArea(
            child: Container(
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
                        'Web Track',
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
                          txt1: 'Html\n&\nCss',
                          color: LearnCubit.get(context).colorF1,
                          function: () {
                            LearnCubit.get(context)
                                .submit(track: topic1, points: 10);
                            LearnCubit.get(context).chF1();
                          },
                          context: context,
                        ),
                        Step_item(
                          txt1: 'JavaScript',
                          color: LearnCubit.get(context).colorF2,
                          function: () {
                            LearnCubit.get(context)
                                .submit(track: topic1, points: 10);
                            LearnCubit.get(context).chF2();
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
                          txt1: 'React',
                          color: LearnCubit.get(context).colorF3,
                          function: () {
                            LearnCubit.get(context)
                                .submit(track: topic1, points: 10);
                            LearnCubit.get(context).chF3();
                          },
                          context: context,
                        ),
                        Step_item(
                          txt1: 'Node js',
                          color: LearnCubit.get(context).colorF4,
                          function: () {
                            LearnCubit.get(context)
                                .submit(track: topic1, points: 10);
                            LearnCubit.get(context).chF4();
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
                          txt1: 'Mongodb',
                          color: LearnCubit.get(context).colorF5,
                          function: () {
                            LearnCubit.get(context)
                                .submit(track: topic1, points: 10);
                            LearnCubit.get(context).chF5();
                          },
                          context: context,
                        ),
                        Step_item(
                          txt1: 'Express',
                          color: LearnCubit.get(context).colorF6,
                          function: () {
                            LearnCubit.get(context)
                                .submit(track: topic1, points: 10);
                            LearnCubit.get(context).chF6();
                          },
                          context: context,
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Slider(
                      inactiveColor: Colors.purpleAccent,
                      thumbColor: Colors.purple,
                      value: LearnCubit.get(context).WebPoints,
                      max: 60,
                      divisions: 6,
                      label: '${LearnCubit.get(context).WebPoints} points',
                      onChanged: null,
                    ),
                    slider(context, LearnCubit.get(context).WebPoints),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
