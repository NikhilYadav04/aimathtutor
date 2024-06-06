import 'package:flutter/material.dart';



Widget LoginText(String texti) {
  return Text(
    texti,
    style: TextStyle(
      fontSize: 26,
      fontFamily: 'KanitM',
      fontWeight: FontWeight.w600,
      color: Colors.purple.shade600,
    ),
  );
}

Widget LoginHeaderText() {
  return Text(
    "Verify Your Account",
    style: TextStyle(
        fontSize:32,
        fontFamily: 'KanitM',
        fontWeight: FontWeight.bold,
        color: Colors.purple.shade600),
  );
}

Widget BottomText(String text1,Color color){
  return Text(
 text1, style: TextStyle(
  color:  color,
  fontSize: 19
 ),
  );
}
