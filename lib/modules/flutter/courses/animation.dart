import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../layout/bloc/cubit.dart';
import '../../../layout/bloc/states.dart';
import '../../../models/components.dart';

class AnimationCourse extends StatefulWidget {
  const AnimationCourse({Key? key}) : super(key: key);

  @override
  State<AnimationCourse> createState() => _AnimationCourseState();
}

class _AnimationCourseState extends State<AnimationCourse> {
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
                        title: 'Animation',
                        desc: 'Intro for Animation in arabic',
                        index: 1,
                        press: () async{
                          await launch('https://www.youtube.com/watch?v=6ZoSdrcT_yA&list=PL93xoMrxRJItoTZJKda7TqmVoqS0WwADI');
                        },
                      ),
                      course(
                        title: 'Animation',
                        desc: 'Intro for Animation in english',
                        index: 2,
                        press: () async{
                          await launch('https://www.youtube.com/watch?v=Qlb2pSMwKHY&list=PLrS57q8gZKG9qOwbWYCkJBg39ANvRSvEh');
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
