import 'dart:io';
import 'dart:typed_data';

import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';

class ChatBot extends StatefulWidget {
  final String url;
  ChatBot({super.key, required this.url});

  @override
  State<ChatBot> createState() => _ChatBotState();
}

class _ChatBotState extends State<ChatBot> {
  bool _isLoading = false;
  final Gemini gemini = Gemini.instance;

  List<ChatMessage> messages = [];

  ChatUser currentUser = ChatUser(id: "0", firstName: "Nikhil");
  ChatUser geminiUser =
      ChatUser(id: "1", firstName: 'Gemini', profileImage: "assets/bot.png");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 60,
          backgroundColor: Colors.purple.shade300,
          title: Text(
            "Gemini ChatBot",
            style: TextStyle(
                color: Colors.white, fontSize: 32, fontFamily: "KanitB"),
          ),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    image: DecorationImage(
                        image: AssetImage(widget.url), fit: BoxFit.cover)),
                child: DashChatUI()),
            if (_isLoading)
              Center(
                child: Indicator(),
              ),
          ],
        ));
  }

  Widget Indicator() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(color: Colors.grey.shade500, width: 2),
          borderRadius: BorderRadius.circular(18)),
      height: 100,
      width: 700,
      margin: EdgeInsets.fromLTRB(40, 200, 30, 0),
      child: Row(
        children: [
          Container(
            height: 150,
            width: 119,
            child: LottieBuilder.asset("assets/maths.json"),
          ),
          SizedBox(
            width: 0,
          ),
          Container(
            child: Text(
              "Loading Response..",
              style: TextStyle(fontSize: 24),
            ),
          )
        ],
      ),
    );
  }

  Widget DashChatUI() {
    return DashChat(
      currentUser: currentUser,
      onSend: _sendMessages,
      messages: messages,
      inputOptions: InputOptions(trailing: [
        IconButton(
            onPressed: () {
              _ImageMessage();
            },
            icon: Icon(Icons.image))
      ]),
      messageOptions: MessageOptions(
          currentUserTimeTextColor: Colors.black, timeFontSize: 32),
    );
  }

  void _sendMessages(ChatMessage chatMessage) {
    setState(() {
      _isLoading = true;
      messages = [chatMessage, ...messages];
    });

    try {
      String question = chatMessage.text;

      List<Uint8List>? images;
      if (chatMessage.medias != null && chatMessage.medias!.isNotEmpty) {
      images = [
        File(chatMessage.medias!.first.url).readAsBytesSync()
      ];
    }
      gemini.streamGenerateContent(question, images:  images).listen((event) {
        ChatMessage? lastMessage = messages.firstOrNull;

        if (lastMessage != null && lastMessage.user == geminiUser) {
          lastMessage = messages.removeAt(0);
          String response = event.content?.parts?.fold(
                  "", (previous, current) => "$previous ${current.text}") ??
              "";
          lastMessage.text += response;
          setState(() {
            messages = [lastMessage!, ...messages];
          });
        } else {
          String response = event.content?.parts?.fold(
                  "", (previous, current) => "$previous ${current.text}") ??
              "";
          ChatMessage message = ChatMessage(
              user: geminiUser, createdAt: DateTime.now(), text: response);
          setState(() {
            messages = [message, ...messages];
          });
        }
        setState(() {
          _isLoading = false;
        });
      });
    } catch (e) {
      print(e.toString());
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _ImageMessage() async {
    ImagePicker picker = ImagePicker();
    XFile? file = await picker.pickImage(
      source: ImageSource.gallery,
    );

    if (file != null) {
      ChatMessage message = ChatMessage(
          user: currentUser,
          createdAt: DateTime.now(),
          text: "Solve For X?",
          medias: [
            ChatMedia(url: file.path, fileName: "", type: MediaType.image)
          ]
          );
          _sendMessages(message);
    }
  }
}
