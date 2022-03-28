// ignore_for_file: avoid_types_as_parameter_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

ShaderMask shadeMask(text, style) => ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (rect) => const LinearGradient(
        // begin: Alignment.topLeft,
        // end: Alignment.bottomRight,
        colors: <Color>[
          Colors.deepPurple,
          Colors.purple,
          Colors.purpleAccent,
        ],
      ).createShader(rect),
      child: Text(
        text,
        maxLines: 10,
        overflow: TextOverflow.ellipsis,
        style: style,
      ),
    );

Color defaultColor = Colors.deepOrange;

void navigateTo(Widget, context) => Navigator.pushReplacement(
    context, MaterialPageRoute(builder: (context) => Widget));

void navigateAndFinish(Widget, context) => Navigator.pushAndRemoveUntil(
    context, MaterialPageRoute(builder: (context) => Widget), (route) => false);

Widget Item_Courses(
    {required String imgUrl,
    required String nameCourse,
    required Function press}) {
  return GestureDetector(
    onTap: () {
      press();
    },
    child: Container(
      width: double.infinity,
      height: 260,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 10,
            offset: Offset(3, 3),
          )
        ],
      ),
      child: Column(
        children: [
          ClipRRect(
            child: Image.asset(
              imgUrl,
              width: 280,
              height: 170,
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              shadeMask(nameCourse, const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),),
              const Spacer(),
              const Text(
                '6 Topics',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

String token = '';

Widget buildProItem(image, title, description) => Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        height: 200,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              height: 200,
              width: 200,
              image: AssetImage(
                image,
              ),
              fit: BoxFit.fill,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  shadeMask(
                    title,
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

Widget Step_item({
  required String txt1,
  required Color color,
  required VoidCallback function,
  required context,
}) {
  return GestureDetector(
    onTap: function,
    child: Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(200),
            gradient: const LinearGradient(
              colors: <Color>[
                Colors.deepPurple,
                Colors.deepPurpleAccent,
                Colors.purpleAccent,
              ],
            ),

          ),
        ),
        Container(
          width: 110,
          height: 110,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
              width: 2,
            ),
            color: color,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  txt1,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget slider(context, p) => Column(
  children: [
    const SizedBox(height: 20),
    if(p == 0)
      Column(
        children: [
          shadeMask('when u finish learning one topic from those topics, press on it\'s circle. \nwhen finishing all of these topics you will be able to work in this field ^_^', const TextStyle(fontSize: 25),),
          SizedBox(
            child: Lottie.asset('assets/lottiee/go.json'),
            height: 200,
            width: 200,
          ),
        ],
      ),
    if(p == 10)
      shadeMask('Great, finish another one...', const TextStyle(fontSize: 25),),
    if(p == 20)
      shadeMask('go on', const TextStyle(fontSize: 25),),
    if(p == 30)
      Column(
        children: [
          shadeMask('really you are strong, complete the other half', const TextStyle(fontSize: 25),),
          SizedBox(
            child: Lottie.asset('assets/lottiee/half.json'),
            height: 200,
            width: 200,
          ),
        ],
      ),
    if(p == 40)
      shadeMask('you will finish them s00n -_^', const TextStyle(fontSize: 25),),
    if(p == 50)
      shadeMask('Only one step left', const TextStyle(fontSize: 25),),
    if(p == 60)
      Column(
        children: [
          shadeMask('now u can work in this field *_*', const TextStyle(fontSize: 25),),
          SizedBox(
            child: Lottie.asset('assets/lottiee/cong.json'),
            height: 220,
            width: 220,
          ),
        ],
      ),

    const SizedBox(height: 30),
  ],
);

//String? track;
dynamic points;
String topic1 = 'Web Development';
String topic2 = 'Machine Learning';
String topic3 = 'Flutter';
