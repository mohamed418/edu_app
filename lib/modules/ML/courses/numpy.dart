import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../layout/bloc/cubit.dart';
import '../../../layout/bloc/states.dart';
import '../../../models/components.dart';

import 'package:url_launcher/url_launcher.dart';

class Numpy extends StatefulWidget {
  const Numpy({Key? key}) : super(key: key);

  @override
  State<Numpy> createState() => _NumpyState();
}

class _NumpyState extends State<Numpy> {
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
                        title: 'Numpy',
                        desc: 'Intro for Numpy in arabic',
                        index: 1,
                        press: () async{
                          await launch('https://www.youtube.com/watch?v=BbuyR2HDn0U&list=PL6-3IRz2XF5UM-FWfQeF1_YhMMa12Eg3s');
                        },
                      ),
                      course(
                        title: 'Numpy',
                        desc: 'Intro for Numpy in english',
                        index: 2,
                        press: () async{
                          await launch('https://www.youtube.com/watch?v=BbuyR2HDn0U&list=PL6-3IRz2XF5UM-FWfQeF1_YhMMa12Eg3s');
                        },
                      ),
                      course(
                        title: 'Numpy',
                        desc: 'Numpy advanced',
                        index: 3,
                        press: () async{
                          await launch('https://www.youtube.com/watch?v=yKcTNDVQa0c');
                        },
                      ),
                      course(
                        title: 'Numpy',
                        desc: ' Numpy tutorial ',
                        index: 4,
                        press: () async{
                          await launch('https://www.youtube.com/watch?v=QUT1VHiLmmI');
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
