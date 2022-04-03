import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../layout/bloc/cubit.dart';
import '../../../layout/bloc/states.dart';
import '../../../models/components.dart';

import 'package:url_launcher/url_launcher.dart';

class LinearAlgerbra extends StatefulWidget {
  const LinearAlgerbra({Key? key}) : super(key: key);

  @override
  State<LinearAlgerbra> createState() => _LinearAlgerbraState();
}

class _LinearAlgerbraState extends State<LinearAlgerbra> {
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
                        title: 'Linear Algerbra',
                        desc: 'Intro for Linear Algerbra in arabic',
                        index: 1,
                        press: () async{
                          await launch('https://www.youtube.com/watch?v=LSOObL2qTxY&list=PLvuToPs04FnD1lFBolGr4ROQaxQ_zyC1c');
                        },
                      ),
                      course(
                        title: 'Linear Algerbra',
                        desc: 'Intro for Linear Algerbra in english',
                        index: 2,
                        press: () async{
                          await launch('https://www.youtube.com/watch?v=chbEYssggDE&list=PLoK2Lr1miEm9kxNtClv6c-hsW0QEmskut');
                        },
                      ),
                      course(
                        title: 'Linear Algerbra',
                        desc: 'Linear Algerbra advanced',
                        index: 3,
                        press: () async{
                          await launch('https://www.youtube.com/watch?v=SPj8ARqpFEU&list=PL2jykFOD1AWazz20_QRfESiJ2rthDF9-Z');
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
