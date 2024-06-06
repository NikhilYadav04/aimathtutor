import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:math/components/MainScreenText.dart';

PopUp(BuildContext context) {
  final Snack = SnackBar(
    elevation: 0,
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    content: AwesomeSnackbarContent(
      title: 'Its Gemini Here!',
      message: 'Use My AI Power To Learn Maths',
      contentType: ContentType.success,
    ),
  );

  ScaffoldMessenger.of(context).showSnackBar(Snack);
}

PopUp1(BuildContext context) {
  final Snack = SnackBar(
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.black,
      content: Row(
        children: [
          Container(
            height: 150,
            width: 140,
            child: LottieBuilder.asset("assets/minibot.json"),
          ),
          Column(
            children: [
              Container(child: PopupText1("Hi Gemini Bot Here")),
              SizedBox(
                height: 10,
              ),
              // Container(child: PopupText2("I Am Here To Help You")),
              // SizedBox(
              //   height: 10,
              // ),
              Container(child: PopupText2("Solve Your Math Doubts")),
              SizedBox(
                height: 10,
              ),
              Container(child: PopupText2("Faster And Learn With Me")),
            ],
          )
        ],
      ));

  ScaffoldMessenger.of(context).showSnackBar(Snack);
}
