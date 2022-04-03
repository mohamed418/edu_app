import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../layout/bloc/cubit.dart';
import '../../../layout/bloc/states.dart';
import '../../../models/components.dart';

import 'package:url_launcher/url_launcher.dart';

class Static_ML extends StatefulWidget {
  const Static_ML({Key? key}) : super(key: key);

  @override
  State<Static_ML> createState() => _Static_MLState();
}

class _Static_MLState extends State<Static_ML> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LearnCubit, LearnStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              leading: BackButton(
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            body: SafeArea(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: SingleChildScrollView(
                  child: Column(

                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 20,
                        ),
                        child: Text('Courses recommended for you',
                            style: TextStyle(
                              color:Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),),
                      ),
                      course(
                        title: 'Static for ML',
                        desc: 'Intro for deep Learning in arabic',
                        index: 1,
                        press: () async {
                          await launch(
                              'https://youtu.be/VyWAvY2CF9c ');
                        },
                      ),
                      course(
                        title: 'Static for ML',
                        desc: 'Practical deep learning',
                        index: 2,
                        press: () async {
                          await launch(
                              'https://youtu.be/0oyCUWLL_fU');
                        },
                      ),

                      course(
                        title: 'Static for ML',
                        desc: 'keras with tensorflow',
                        index: 3,
                        press: () async {
                          await launch(
                              'https://youtu.be/qFJeN9V1ZsI ');
                        },
                      ),


                      course(
                        title: 'Static for ML',
                        desc: 'openCV',
                        index:4,
                        press: () async {
                          await launch(
                              'https://youtu.be/oXlwWbU8l2o');
                        },
                      ),

                      course(
                        title: 'Static for ML',
                        desc: 'applayed deep learning with pytorch',
                        index: 2,
                        press: () async {
                          await launch(
                              'https://youtu.be/CNuI8OWsppg');
                        },
                      ),

                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
