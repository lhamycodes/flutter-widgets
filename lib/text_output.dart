import 'package:flutter/material.dart';

class TextOutput extends StatelessWidget {
  final String pageText;

  TextOutput(this.pageText);

  @override
  Widget build(BuildContext context) {
    return Text(pageText);
  }
}