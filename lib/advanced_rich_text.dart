// ignore_for_file: prefer_const_constructors

library advanced_rich_text;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AdvanceRichText extends StatefulWidget {
  final String initialText;
  final TextStyle? initialTextStyle;
  final TextStyle? secondaryTextStyle;
  final List<TextSpanList> textList;

  const AdvanceRichText(
      {Key? key,
      required this.textList,
      required this.initialText,
      this.initialTextStyle,
      this.secondaryTextStyle})
      : super(
          key: key,
        );

  @override
  State<AdvanceRichText> createState() => _AdvanceRichTextState();
}

class _AdvanceRichTextState extends State<AdvanceRichText> {
  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: widget.initialText,
            style: widget.initialTextStyle ?? TextStyle(color: Colors.black),
            children: [
          ...widget.textList
              .map((e) => textSpanText(
                  textStyle: e.textStyle,
                  label: e.text,
                  first: e.initialTextLike,
                  onTapText: e.onTap))
              .toList()
        ]));
  }

  TextSpan textSpanText({
    required String label,
    bool first = false,
    TextStyle? textStyle,
    Function()? onTapText,
  }) {
    return TextSpan(
        text: label,
        style: first
            ? widget.initialTextStyle
            : (textStyle ?? widget.secondaryTextStyle),
        recognizer: TapGestureRecognizer()..onTap = onTapText ?? () {});
  }
}

class TextSpanList {
  String text;
  bool initialTextLike;
  TextStyle? textStyle;
  Function()? onTap;
  TextSpanList(
      {required this.text,
      this.initialTextLike = false,
      this.onTap,
      this.textStyle});
}
