// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:advanced_rich_text/advanced_rich_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: AdvanceRichTextPage(),
    );
  }
}

class AdvanceRichTextPage extends StatefulWidget {
  const AdvanceRichTextPage({Key? key}) : super(key: key);

  @override
  State<AdvanceRichTextPage> createState() => _AdvanceRichTextPageState();
}

class _AdvanceRichTextPageState extends State<AdvanceRichTextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(padding: const EdgeInsets.all(20), children: [
        AdvanceRichText(
          initialText: "I agree that ",
          secondaryTextStyle: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.w700,
          ),
          textList: [
            TextSpanList(
                text: "AdvancedRichText ",
                textStyle: TextStyle(
                    color: Colors.green[600],
                    fontWeight: FontWeight.w700,
                    fontSize: 24)),
            TextSpanList(text: "package ", initialTextLike: true),
            TextSpanList(
                text: "is the easiest way to create ",
                textStyle: TextStyle(
                    color: Colors.blue[500], fontWeight: FontWeight.w500)),
            TextSpanList(
                text: "different styled texts.",
                textStyle: TextStyle(
                    color: Colors.purple[200], fontWeight: FontWeight.w700)),
            TextSpanList(
                text: " Agreed?",
                textStyle:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.w900)),
          ],
        ),
        SizedBox(
          height: 100,
        ),
        Expanded(
          child: AdvanceRichText(
            initialText: "Haven't liked this package, yet? ",
            secondaryTextStyle: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.w700,
            ),
            textList: [
              TextSpanList(
                text: "Please, do Like.",
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
