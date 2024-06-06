import 'package:flutter/material.dart';
import 'package:math/components/Button.dart';
import 'package:math/components/Dialog.dart';
import 'package:math/components/TextField.dart';
import 'package:math/components/TextLogin.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade400,
        toolbarHeight: 70,
        title: Text(
          "Welcome Student",
          style: TextStyle(
              fontSize: 33,
              color: Colors.white,
              fontFamily: 'RobotoB',
              fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Image.asset(
                "assets/loginlogo.png",
                height: 170,
                width: 180,
              ),
            ),
            
            LoginHeaderText(),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 315, 0),
              child: LoginText("Name"),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 13),
                child: NameFieldLogin()),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 260, 0),
              child: LoginText("Student ID"),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 13),
                child: IDFieldLogin()),
            SizedBox(
              height: 45,
            ),
            Container(height: 60, width: 370, child: ButtonLogin(context)),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SizedBox(width: 48,),
               BottomText("Need Help Signing In ,", Colors.black),
               GestureDetector(
                onTap: (){
                  showDialog(context: context, builder: (context)=>Dialg(context));
                },
                child: BottomText(" Click Here", Colors.purple.shade700)
                )
              ],
            )
            ,
          ],
        ),
      ),
    );
  }
}
