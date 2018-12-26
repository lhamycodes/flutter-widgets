import 'package:flutter/material.dart';

import './text_output.dart';

class TextControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextControlState();
  }
}

class _TextControlState extends State<TextControl> {

  String _pageText = 'Hello World';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            color: Colors.deepOrange,
            textColor: Colors.white,
            onPressed: () {
              setState(() {
                this._pageText = (this._pageText == 'Hi Bro') ? 'Hello World' : 'Hi Bro';
                print("Text Changed");
              });
            },
            child: Text('Change Text'),
          ),
        ),
        Center(
          child: TextOutput(_pageText),
        ),
      ],
    );
  }
}
