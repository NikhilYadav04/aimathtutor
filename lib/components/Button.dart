import 'package:flutter/material.dart';
import 'package:math/UI/LoginSCreen.dart';
import 'package:math/UI/OpenScreen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:math/components/TextField.dart';

//MaterialPageRoute(builder: (context) => Login())

Widget ButtonHome(BuildContext context) {
  return InkWell(
    child: ElevatedButton(
        onPressed: () {
         Navigator.of(context).push(
              PageTransition(
                child: Login(),
                childCurrent: OpenScreen(),
                 type: PageTransitionType.rightToLeftWithFade),
          );
        },
        child: Text(
          "Start Learning",
          style: TextStyle(
              fontSize: 31, fontFamily: 'RobotoB', fontWeight: FontWeight.bold),
        )),
  );
}

Widget ButtonLogin(BuildContext context) {
  return InkWell(
    child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.purple.shade300),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14)))),
        onPressed: () {
          verifyUser(context);
        },
        child: Text(
          "Log In",
          style: TextStyle(
              fontSize: 32, fontFamily: 'KanitM', color: Colors.white),
        )),
  );
}

Widget DividerLine(){
  return Divider(
 color: Colors.purple.shade800,
 height: 4,
 thickness: 4,
  );
}
