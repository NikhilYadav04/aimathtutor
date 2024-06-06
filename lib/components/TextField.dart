import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:math/repos/firebase_verify.dart';

TextEditingController name = TextEditingController();
TextEditingController IDD = TextEditingController();

Widget NameFieldLogin() {
  return TextField(
    controller: name,
    style: TextStyle(),
    decoration: InputDecoration(
        
        floatingLabelBehavior: FloatingLabelBehavior.never,
        contentPadding: EdgeInsets.symmetric(vertical: 17),
        prefixIcon: Icon(Icons.person),
        label: Text(
          "Enter Your Name",
          style: TextStyle(fontSize: 19),
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.purple, width: 1.5),
            borderRadius: BorderRadius.circular(12)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue.shade900),
            borderRadius: BorderRadius.circular(12))),
  );
}

Widget IDFieldLogin() {
  return TextField(
    controller: IDD,
    decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.never,
        contentPadding: EdgeInsets.symmetric(vertical: 18),
        prefixIcon: Icon(Icons.contacts_outlined),
        label: Text(
          "Enter Your Student ID",
          style: TextStyle(fontSize: 19),
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.purple, width: 1.5),
            borderRadius: BorderRadius.circular(12)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue.shade900),
            borderRadius: BorderRadius.circular(12))),
  );
}

Future<void> verifyUser(BuildContext context) async {
  final snackbar = SnackBar(
    elevation: 0,
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    content: AwesomeSnackbarContent(
      title: 'Hey Student!',
      message: 'Please Enter You Name And ID!',
      contentType: ContentType.help,
    ),
  );

  String Name = name.text.trim();
  String ID = IDD.text.trim();

  if (Name.isEmpty || ID.isEmpty) {
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
    return;
  }

  await FireVerify(ID, Name, context);
  IDD.text = "";
  name.text="";
}
