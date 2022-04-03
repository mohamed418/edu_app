import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../layout/bloc/cubit.dart';
import '../../../layout/bloc/states.dart';
import '../../../models/components.dart';

import 'package:url_launcher/url_launcher.dart';

class JavaScript extends StatefulWidget {
  const JavaScript({Key? key}) : super(key: key);

  @override
  State<JavaScript> createState() => _JavaScriptState();
}

class _JavaScriptState extends State<JavaScript> {
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
                        title: 'JavaScript',
                        desc: 'Intro for javascript in arabic',
                        index: 1,
                        press: () async{
                          await launch('https://www.youtube.com/watch?v=GM6dQBmc-Xg&list=PLDoPjvoNmBAx3kiplQR_oeDqLDBUDYwVv');
                        },
                      ),
                      course(
                        title: 'JavaScript',
                        desc: 'Intro for javascript in english',
                        index: 2,
                        press: () async{
                          await launch('https://www.youtube.com/watch?v=PkZNo7MFNFg');
                        },
                      ),
                      course(
                        title: 'JavaScript',
                        desc: 'javascript advanced',
                        index: 3,
                        press: () async{
                          await launch('https://www.youtube.com/watch?v=1S8SBDhA7HA&list=PL0Zuz27SZ-6N3bG4YZhkrCL3ZmDcLTuGd');
                        },
                      ),
                      course(
                        title: 'JavaScript',
                        desc: ' javascript tutorial in arabic',
                        index: 4,
                        press: () async{
                          await launch('https://www.youtube.com/watch?v=AeXkyj4mXms&list=PLDoPjvoNmBAz7_BgzvNcOaE-m_SnE4jiT');
                        },
                      ),
                      course(
                        title: 'JavaScript',
                        desc: 'javascript tutorial in english',
                        index: 5,
                        press: () async{
                          await launch('https://www.youtube.com/watch?v=J4UKL355sUo&list=PL9ooVrP1hQOGoYVit61V7Y1uPzfnBvN86');
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
