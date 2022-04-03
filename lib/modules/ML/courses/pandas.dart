import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../layout/bloc/cubit.dart';
import '../../../layout/bloc/states.dart';
import '../../../models/components.dart';

import 'package:url_launcher/url_launcher.dart';

class Pandas extends StatefulWidget {
  const Pandas({Key? key}) : super(key: key);

  @override
  State<Pandas> createState() => _PandasState();
}

class _PandasState extends State<Pandas> {
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
                        title: 'Pandas',
                        desc: 'Intro for Pandas in arabic',
                        index: 1,
                        press: () async{
                          await launch('https://www.youtube.com/watch?v=3ISW655DemU&list=PLvLvlVqNQGHCb2_ygmr1DQOMOv0yXp84F');
                        },
                      ),
                      course(
                        title: 'Pandas',
                        desc: 'Intro for Pandas in english',
                        index: 2,
                        press: () async{
                          await launch('https://www.youtube.com/watch?v=vmEHCJofslg');
                        },
                      ),
                      course(
                        title: 'Pandas',
                        desc: 'Pandas advanced',
                        index: 3,
                        press: () async{
                          await launch('https://www.youtube.com/watch?v=hMgrCzZD2ew');
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
