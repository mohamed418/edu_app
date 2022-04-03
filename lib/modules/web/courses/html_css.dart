import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../layout/bloc/cubit.dart';
import '../../../layout/bloc/states.dart';
import '../../../models/components.dart';

import 'package:url_launcher/url_launcher.dart';

class Html_Css extends StatefulWidget {
  const Html_Css({Key? key}) : super(key: key);

  @override
  State<Html_Css> createState() => _Html_CssState();
}

class _Html_CssState extends State<Html_Css> {
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
                        title: 'Html',
                        desc: 'Intro for html in arabic',
                        index: 1,
                        press: () async {
                          await launch(
                              'https://www.youtube.com/watch?v=6QAELgirvjs&list=PLDoPjvoNmBAw_t_XWUFbBX-c9MafPk9ji');
                        },
                      ),
                      course(
                        title: 'Html',
                        desc: 'Intro for html in english',
                        index: 2,
                        press: () async {
                          await launch(
                              'https://www.youtube.com/watch?v=dD2EISBDjWM&list=PLr6-GrHUlVf_ZNmuQSXdS197Oyr1L9sPB');
                        },
                      ),
                      course(
                        title: 'Html',
                        desc: 'html advanced',
                        index: 3,
                        press: () async {
                          await launch(
                              'https://www.youtube.com/watch?v=8xEssIHsBHk&list=PLHpTOkCsd2tMQ7QVrpXNLz6oeiaaA-_Gj');
                        },
                      ),
                      course(
                        title: 'Css',
                        desc: 'Intro for css in arabic',
                        index: 4,
                        press: () async {
                          await launch(
                              'https://www.youtube.com/watch?v=X1ulCwyhCVM&list=PLDoPjvoNmBAzjsz06gkzlSrlev53MGIKe');
                        },
                      ),
                      course(
                        title: 'Css',
                        desc: 'Intro for css in english',
                        index: 5,
                        press: () async {
                          await launch(
                              'https://www.youtube.com/watch?v=qKoajPPWpmo&list=PLr6-GrHUlVf8JIgLcu3sHigvQjTw_aC9C');
                        },
                      ),
                      course(
                        title: 'Css',
                        desc: 'css advanced',
                        index: 6,
                        press: () async {
                          await launch(
                              'https://www.youtube.com/watch?v=AFKnthgCpWQ&list=PLwGdqUZWnOp2JYAoNE_-7sSWcIeO1A-xi');
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
