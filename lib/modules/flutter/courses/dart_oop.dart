import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../layout/bloc/cubit.dart';
import '../../../layout/bloc/states.dart';
import '../../../models/components.dart';

class Dart extends StatefulWidget {
  const Dart({Key? key}) : super(key: key);

  @override
  State<Dart> createState() => _DartState();
}

class _DartState extends State<Dart> {
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
                        title: 'Dart in arabic',
                        desc: 'Intro for dart in arabic',
                        index: 1,
                        press: () async {
                          await launch(
                              'https://www.youtube.com/watch?v=HVYlPAw70MU&list=PLMDrOnfT8EAj6Yjdki9OCLSwqdBs4xhQz');
                        },
                      ),
                      course(
                        title: 'dart & OOP in english',
                        desc: 'Intro for dart&OOP in english',
                        index: 2,
                        press: () async {
                          await launch(
                              'https://www.youtube.com/watch?v=F3JuuYuOUK4&t=381s');
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
