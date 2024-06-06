import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:math/components/Button.dart';
import 'package:math/components/Card.dart';
import 'package:math/components/MainScreenText.dart';
import 'package:math/components/Popup.dart';
import 'package:url_launcher/url_launcher.dart';

class MainSCreen extends StatefulWidget {
  final String Name;
  const MainSCreen({super.key, required this.Name});

  @override
  State<MainSCreen> createState() => _MainSCreenState();
}

class _MainSCreenState extends State<MainSCreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade500,
        toolbarHeight: 5,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  margin: EdgeInsets.fromLTRB(12, 10, 0, 0),
                  child: CircleAvatar(
                    child: LottieBuilder.asset(
                      "assets/Bot.json",
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 18, 60, 0),
                      child: WelcomeText("Welcome ${widget.Name}!"),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 65, 0),
                      child: ShortText("Which Tutor You Want To Use?"),
                    ),
                  ],
                ),

                // Container(
                //     height: 50,
                //     width: 50,
                //     margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                //     decoration: BoxDecoration(
                //         border:
                //             Border.all(color: Colors.purple.shade900, width: 2),
                //         borderRadius: BorderRadius.circular(10)),
                //     child: IconButton(
                //         onPressed: () {
                //           PopUp1(context);
                //         },
                //         icon: Icon(
                //           Icons.notifications,
                //           size: 30,
                //           color: Colors.purple.shade700,
                //         ))),
              ],
            ),
            GestureDetector(
              onTap: () {
                launchUrl(Uri.parse("https://ai.google.dev/"),
                    mode: LaunchMode.inAppWebView);
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: AspectRatio(
                    aspectRatio: 11.5 / 7,
                    child: Image.asset("assets/gem.png")),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 220, 0),
              child: BotText("Math Bots"),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(15, 0, 240, 0),
                child: DividerLine()),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 110,
                width: 390,
                child: CardTutor("AI Math Tutor",
                    "    Learn Maths Lessons With AI", context)),
            SizedBox(
              height: 5,
            ),
            Container(
                height: 110,
                width: 390,
                child: CardWorkSheet("WorkSheet Maker",
                    "  Create list Of Math Problems", context)),
            SizedBox(
              height: 5,
            ),
            Container(
                height: 110,
                width: 390,
                child: CardWorkImage(
                    "Solve for X", "AI Problem Solving by Image.", context)),
            SizedBox(
              height: 5,
            ),
            Container(
                height: 110,
                width: 390,
                child: CardSummary(
                    "Sum Up Notes", "Shorten Your Math Notes", context))
          ],
        ),
      ),
    );
  }
}
