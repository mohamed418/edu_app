import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../layout/bloc/cubit.dart';
import '../../../layout/bloc/states.dart';
import '../../../models/components.dart';

import 'package:url_launcher/url_launcher.dart';

class StateManagement extends StatefulWidget {
  const StateManagement({Key? key}) : super(key: key);

  @override
  State<StateManagement> createState() => _StateManagementState();
}

class _StateManagementState extends State<StateManagement> {
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
                        title: 'What is state management',
                        desc: 'What is state management in arabic',
                        index: 1,
                        press: () async{

                          await launch('https://www.youtube.com/watch?v=TI1XovoHejA');
                        },
                      ),
                      course(
                        title: 'What is state management',
                        desc: 'What is state management in english',
                        index: 2,
                        press: () async{
                          await launch('https://www.youtube.com/watch?v=B7MwkIh3Kck');
                        },
                      ),
                      course(
                        title: 'State Management',
                        desc: 'State Management in arabic',
                        index: 3,
                          press: () async{
                            await launch('https://www.youtube.com/watch?v=1N8OSyTZKe4&list=PL3aG1K3LWCrfRhN2p7gargu-ugZuCO44a');
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
