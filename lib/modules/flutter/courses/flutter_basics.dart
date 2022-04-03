import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../layout/bloc/cubit.dart';
import '../../../layout/bloc/states.dart';
import '../../../models/components.dart';

class FlutterBasics extends StatefulWidget {
  const FlutterBasics({Key? key}) : super(key: key);

  @override
  State<FlutterBasics> createState() => _FlutterBasicsState();
}

class _FlutterBasicsState extends State<FlutterBasics> {
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
                        child: Text(
                          'Courses recommended for you',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      course(
                        title: 'Flutter Basics',
                        desc: 'Intro for flutter in english',
                        index: 1,
                        press: () async {
                          await launch(
                              'https://www.youtube.com/watch?v=pTJJsmejUOQ');
                        },
                      ),
                      course(
                        title: 'Flutter Basics',
                        desc: 'videos of one minute in english',
                        index: 2,
                        press: () async {
                          await launch(
                              'https://www.youtube.com/watch?v=syvT63CosNE&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG');
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
