import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../layout/bloc/cubit.dart';
import '../../../layout/bloc/states.dart';
import '../../../models/components.dart';

import 'package:url_launcher/url_launcher.dart';

class React extends StatefulWidget {
  const React({Key? key}) : super(key: key);

  @override
  State<React> createState() => _ReactState();
}

class _ReactState extends State<React> {
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
                        title: 'React',
                        desc: 'Intro for react in arabic',
                        index: 1,
                        press: () async{
                          await launch('https://www.youtube.com/watch?v=LgB3j2y1b-4&list=PLtFbQRDJ11kEjXWZmwkOV-vfXmrEEsuEW');
                        },
                      ),
                      course(
                        title: 'React',
                        desc: 'Intro for react in english',
                        index: 2,
                        press: () async{
                          await launch('https://www.youtube.com/watch?v=Ke90Tje7VS0');
                        },
                      ),
                      course(
                        title: 'React',
                        desc: 'react advanced',
                        index: 3,
                        press: () async{
                          await launch('https://www.youtube.com/watch?v=xa-_FIy2NgE&list=PLzlkf6Y3hMLCBEy7SJPUVPKoCXZ-m78IQ');
                        },
                      ),
                      course(
                        title: 'React',
                        desc: 'react tutorial in arabic',
                        index: 4,
                        press: () async{
                          await launch('https://www.youtube.com/watch?v=LWCcVGOJXUo&list=PLyr3gkJ8OBxq2vDxRus1N0XHt7j6mqMkK');
                        },
                      ),
                      course(
                        title: 'React',
                        desc: 'react tutorial in english',
                        index: 5,
                        press: () async{
                          await launch('https://www.youtube.com/watch?v=j942wKiXFu8&list=PL4cUxeGkcC9gZD-Tvwfod2gaISzfRiP9d');
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
