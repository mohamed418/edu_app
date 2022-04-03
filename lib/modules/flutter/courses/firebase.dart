import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../layout/bloc/cubit.dart';
import '../../../layout/bloc/states.dart';
import '../../../models/components.dart';

class Firebase extends StatefulWidget {
  const Firebase({Key? key}) : super(key: key);

  @override
  State<Firebase> createState() => _FirebaseState();
}

class _FirebaseState extends State<Firebase> {
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
                        title: 'Firebase',
                        desc: 'Intro for Firebase in arabic',
                        index: 1,
                        press: () async{

                          await launch('https://www.youtube.com/watch?v=Ox806RyVjpY&list=PLuBL2DYgVDm2Gyr-2AFaNFj0JA8WSSH0T');
                        },
                      ),
                      course(
                        title: 'Firebase',
                        desc: 'Intro for Firebase in english',
                        index: 2,
                        press: () async{

                          await launch('https://www.youtube.com/watch?v=6sZWlMhh-EU&list=PLQrn8asEsczpy2AxA3sKSD99wMMWXeAlL');
                        },
                      ),

                      course(
                        title: 'Firebase',
                        desc: 'Firebase tutorial in english',
                        index: 5,
                          press: () async{

                            await launch('https://www.youtube.com/watch?v=VGfhfRfkxdg');
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
