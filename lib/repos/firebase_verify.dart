
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:math/UI/LoginScreen.dart';
import 'package:math/UI/MainScreen.dart';
import 'package:page_transition/page_transition.dart';

FireVerify(String ID, String Name,BuildContext context) async {
 final snackbar2 = SnackBar(
    elevation: 0,
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    content: AwesomeSnackbarContent(
      title: 'Error!',
      message: 'Student Not Found!',
      contentType: ContentType.failure,
    ),
  );

   final snackbar3 = SnackBar(
    elevation: 0,
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    content: AwesomeSnackbarContent(
      title: 'Error!',
      message: 'Error Logging In , Please Try Again!',
      contentType: ContentType.failure,
    ),
  );

  final snackbar4 = SnackBar(
    elevation: 0,
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    content: AwesomeSnackbarContent(
      title: 'Success!',
      message: 'Student Verified Successfully !',
      contentType: ContentType.success,
    ),
  );


  try {
    QuerySnapshot snapshot = await FirebaseFirestore.instance
        .collection('Students')
        .where('id', isEqualTo: ID)
        .where('name', isEqualTo: Name)
        .get();


        if(snapshot.docs.isEmpty )
        {
          ScaffoldMessenger.of(context).showSnackBar(snackbar2);
        }else
        {
          ScaffoldMessenger.of(context).showSnackBar(snackbar4);
          await Future.delayed(Duration(seconds: 3));
          Navigator.push(context, PageTransition(
            child: MainSCreen(Name: Name,),
            childCurrent: Login(),
           type: PageTransitionType.bottomToTop));

          
        }
  } catch (e) {
    print(e.toString());
    if (Name.isNotEmpty && ID.isNotEmpty) {
    ScaffoldMessenger.of(context).showSnackBar(snackbar3);
  }
     
  }
}