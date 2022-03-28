import 'package:flutter/material.dart';

import '../models/components.dart';
import '../modules/ML/ML_steps_screen.dart';
import '../modules/flutter/flutter_steps_screen.dart';
import '../modules/profile/profile.dart';
import '../modules/web/web_steps_screen.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Text(
                      'Tracks',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Spacer(),
                    IconButton(onPressed: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => settingsScreen(),
                        ),
                      );
                    }, icon: const Icon(Icons.person))
                  ],
                ),
                const SizedBox(height: 10),
                Item_Courses(
                  imgUrl: 'assets/images/web.jpg',
                  nameCourse: topic1,
                  press: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => const WebStepsScreen(),
                      ),
                    );
                  },
                ),

                const SizedBox(height: 20),
                Item_Courses(
                  imgUrl: 'assets/images/ml.jpg',
                  nameCourse: topic2,
                  press: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => const MLStepsScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 20),
                Item_Courses(
                  imgUrl: 'assets/images/flutter.png',
                  nameCourse: topic3,
                  press: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => const FlutterStepsScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
