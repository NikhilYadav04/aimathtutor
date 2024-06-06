import 'package:flutter/material.dart';

Widget Dialg(BuildContext context){
return AlertDialog(
  backgroundColor: Colors.black,
  actions: [
     TextButton(onPressed: (){
      Navigator.of(context).pop();
     }, child: Text("Close", style: TextStyle(
      color: Colors.white,
      fontFamily: "KanitM",
      fontSize: 22
     ),)
     ),
     
  ],
  title: Text("Enter The Unique ID Which You Were Provided In Your School", style: TextStyle(
      color: Colors.white,
      fontFamily: "KanitM",
      fontSize: 22
     ),),
  
);
}