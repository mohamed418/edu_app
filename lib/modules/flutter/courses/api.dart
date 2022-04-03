import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../layout/bloc/cubit.dart';
import '../../../layout/bloc/states.dart';
import '../../../models/components.dart';

class APICourse extends StatefulWidget {
  const APICourse({Key? key}) : super(key: key);

  @override
  State<APICourse> createState() => _APICourseState();
}

class _APICourseState extends State<APICourse> {
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
                        title: 'API',
                        desc: 'Intro for API with flutter in arabic',
                        index: 1,
                        press: () async{
                          await launch('https://www.youtube.com/watch?v=IQ6NJ8JoO9E&list=PL3aG1K3LWCre6DIC2amKlXjn_kd2P6zE9');
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
