import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:math/ChatbotUI/APiKey.dart';
import 'package:math/ChatbotUI/ChatBotScreen.dart';
import 'package:math/UI/MainScreen.dart';
import 'package:math/UI/OpenScreen.dart';
import 'package:math/firebase_options.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Future<void> _initializeApp() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    Gemini.init(apiKey: API_KEY);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initializeApp(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return MaterialApp(
            home: SplashScreen(),
          );
        } else if (snapshot.hasError) {
          return MaterialApp(
            home: ErrorScreen(error: snapshot.error.toString()),
          );
        } else {
          return MaterialApp(
            theme: ThemeData(
              fontFamily: "RadioBig"
            ),
            debugShowCheckedModeBanner: false,
            home: OpenScreen(),
          );
        }
      },
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 150,
        width: 150,
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}

class ErrorScreen extends StatelessWidget {
  final String error;

  const ErrorScreen({required this.error});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Error: $error'),
      ),
    );
  }
}
