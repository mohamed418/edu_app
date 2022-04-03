import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../layout/bloc/cubit.dart';
import '../../../layout/bloc/states.dart';
import '../../../models/components.dart';

import 'package:url_launcher/url_launcher.dart';

class NodeJs extends StatefulWidget {
  const NodeJs({Key? key}) : super(key: key);

  @override
  State<NodeJs> createState() => _NodeJsState();
}

class _NodeJsState extends State<NodeJs> {
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
                        title: 'NodeJs',
                        desc: 'Intro for nodejs in arabic',
                        index: 1,
                        press: () async{

                          await launch('https://www.youtube.com/watch?v=Bw9N_1Wx6s4&list=PLF8OvnCBlEY1ovRLRqitSwBUzWYkggD2D');
                        },
                      ),
                      course(
                        title: 'NodeJs',
                        desc: 'Intro for nodejs in english',
                        index: 2,
                        press: () async{

                          await launch('https://www.youtube.com/watch?v=Oe421EPjeBE');
                        },
                      ),
                      course(
                        title: 'NodeJs',
                        desc: 'nodejs advanced',
                        index: 3,
                        press: () async{

                          await launch('https://www.youtube.com/watch?v=qG-PLm3APSs');
                        },
                      ),
                      course(
                        title: 'NodeJs',
                        desc: 'nodejs tutorial in english',
                        index: 5,
                          press: () async{

                            await launch('https://www.youtube.com/watch?v=zb3Qk8SG5Ms&list=PL4cUxeGkcC9jsz4LDYc6kv3ymONOKxwBU');
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
