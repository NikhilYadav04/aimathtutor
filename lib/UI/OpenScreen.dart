import 'package:flutter/material.dart';

import 'package:math/components/Button.dart';

class OpenScreen extends StatefulWidget {
  const OpenScreen({super.key});

  @override
  State<OpenScreen> createState() => _OpenScreenState();
}

class _OpenScreenState extends State<OpenScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade700,
      body: Column(
        children: [
          SizedBox(
            height: 270,
          ),
          Center(
            child: Image.asset("assets/logof.png"),
          ),
          SizedBox(
            height: 170,
          ),
          Container(
              height: 67,
              width: 320,
              child: ButtonHome(context)),
        ],
      ),
    );
  }
}
