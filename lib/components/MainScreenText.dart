import 'package:flutter/material.dart';

Widget PopupText1(String text) {
  return Text(
    text,
    style: TextStyle(fontSize: 23, fontFamily: "KanitB", color: Colors.white),
  );
}

Widget PopupText2(String text) {
  return Text(
    text,
    style: TextStyle(fontSize: 17.2, fontFamily: "KanitB", color: Colors.white),
  );
}

Widget WelcomeText(String text) {
  return Text(
    text,
    style: TextStyle(fontSize: 28, color: Colors.black, fontFamily: "KanitB"),
  );
}

Widget ShortText(String text) {
  return Text(
    text,
    style: TextStyle(
        fontSize: 14,
        color: Colors.black,
        fontFamily: "RadioBig",
        fontWeight: FontWeight.bold),
  );
}


Widget BotText(String text) {
  return Text(
    text,
    style: TextStyle(
        fontSize: 34,
        color: Colors.black,
        fontFamily: "KanitB",
        fontWeight: FontWeight.bold),
  );
}
