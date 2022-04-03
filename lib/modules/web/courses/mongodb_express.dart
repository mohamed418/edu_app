import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../layout/bloc/cubit.dart';
import '../../../layout/bloc/states.dart';
import '../../../models/components.dart';

import 'package:url_launcher/url_launcher.dart';

class Mongodb_Express extends StatefulWidget {
  const Mongodb_Express({Key? key}) : super(key: key);

  @override
  State<Mongodb_Express> createState() => _Mongodb_ExpressState();
}

class _Mongodb_ExpressState extends State<Mongodb_Express> {
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
                        title: 'Mongodb&Express',
                        desc: 'Intro for Mongodb&Express in arabic',
                        index: 1,
                        press: () async{

                          await launch('https://www.youtube.com/watch?v=zkARbMlweO0&list=PLMYF6NkLrdN-XN8xmNeznvIcfL_RySLXd');
                        },
                      ),
                      course(
                        title: 'Mongodb&Express',
                        desc: 'Intro for Mongodb&Express in english',
                        index: 2,
                        press: () async{

                          await launch('https://www.youtube.com/watch?v=Www6cTUymCY');
                        },
                      ),
                      course(
                        title: 'Mongodb&Express',
                        desc: 'Mongodb&Express advanced',
                        index: 3,
                          press: () async{

                            await launch('https://www.youtube.com/watch?v=9OPP_1eAENg&list=PL4cUxeGkcC9jpvoYriLI0bY8DOgWZfi6u');
                          },
                      ),
                      course(
                        title: 'Mongodb&Express',
                        desc: 'Mongodb&Express tutorial in arabic',
                        index: 4,
                        press: () async{

                          await launch('https://www.youtube.com/watch?v=L72fhGm1tfE');
                        },
                      ),
                      course(
                        title: 'Mongodb&Express',
                        desc: 'Mongodb&Express tutorial in english',
                        index: 5,
                        press: () async{

                          await launch('https://www.youtube.com/watch?v=oVGuf4Ictm0');
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
