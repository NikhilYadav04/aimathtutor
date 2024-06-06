import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:math/ChatbotUI/ChatBotScreen.dart';
import 'package:page_transition/page_transition.dart';

Widget CardTutor(String text, String desc, BuildContext context,) {
  return Card(
    color: Colors.purple.shade400,
    child: Row(
      children: [
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              "assets/tutor.png",
              height: 55,
              width: 55,
            ),
          ),
        ),
        Column(
          children: [
            SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow.shade500,
                ),
                SizedBox(
                  width: 3,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 40, 0),
                  child: Text(
                    text,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: "KanitB"),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              child: Text(
                desc,
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontFamily: "RadioBig",
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 9,
        ),
        IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  PageTransition(
                      child: ChatBot(url: "assets/TutorImg1.png",), type: PageTransitionType.rightToLeft));
            },
            icon: Icon(
              Icons.arrow_circle_right_outlined,
              size: 50,
              color: Colors.yellow.shade500,
            ))
      ],
    ),
  );
}

Widget CardWorkSheet(String text, String desc,BuildContext context) {
  return Card(
    color: Colors.purple.shade400,
    child: Row(
      children: [
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              "assets/wsheet.png",
              height: 55,
              width: 55,
            ),
          ),
        ),
        Column(
          children: [
            SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow.shade500,
                ),
                SizedBox(
                  width: 3,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Text(
                    text,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: "KanitB"),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
              child: Text(
                desc,
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontFamily: "RadioBig",
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 11,
        ),
        IconButton(
            onPressed: () {
               Navigator.push(
                  context,
                  PageTransition(
                      child: ChatBot(url:  "assets/worksheet.png",), type: PageTransitionType.rightToLeft));
            },
            icon: Icon(
              Icons.arrow_circle_right_outlined,
              size: 50,
              color: Colors.yellow.shade500,
            ))
      ],
    ),
  );
}

Widget CardWorkImage(String text, String desc,BuildContext context) {
  return Card(
    color: Colors.purple.shade400,
    child: Row(
      children: [
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              "assets/imageq.png",
              height: 55,
              width: 55,
            ),
          ),
        ),
        Column(
          children: [
            SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow.shade500,
                ),
                SizedBox(
                  width: 3,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 66, 0),
                  child: Text(
                    text,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: "KanitB"),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(14, 0, 0, 0),
              child: Text(
                desc,
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontFamily: "RadioBig",
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 8,
        ),
        IconButton(
            onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                      child: ChatBot(url:  "assets/questions.png",), type: PageTransitionType.rightToLeft));
            },
            icon: Icon(
              Icons.arrow_circle_right_outlined,
              size: 50,
              color: Colors.yellow.shade500,
            ))
      ],
    ),
  );
}

Widget CardSummary(String text, String desc,BuildContext context) {
  return Card(
    color: Colors.purple.shade400,
    child: Row(
      children: [
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              "assets/notes.png",
              height: 55,
              width: 55,
            ),
          ),
        ),
        Column(
          children: [
            SizedBox(
              height: 24,
            ),
            Row(
              children: [
                SizedBox(
                  width: 0,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow.shade500,
                ),
                SizedBox(
                  width: 3,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 28, 0),
                  child: Text(
                    text,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: "KanitB"),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(14, 0, 21, 0),
              child: Text(
                desc,
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontFamily: "RadioBig",
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 16,
        ),
        IconButton(
            onPressed: () {
               Navigator.push(
                  context,
                  PageTransition(
                      child: ChatBot(url:  "assets/summary.png",), type: PageTransitionType.rightToLeft));
            },
            icon: Icon(
              Icons.arrow_circle_right_outlined,
              size: 50,
              color: Colors.yellow.shade500,
            ))
      ],
    ),
  );
}
