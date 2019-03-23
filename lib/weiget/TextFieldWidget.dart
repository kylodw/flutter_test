import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextFieldWidget extends StatefulWidget {
  @override
  _TextFieldState createState() {
    // TODO: implement createState
    return new _TextFieldState();
  }
}

class _TextFieldState extends State<TextFieldWidget> {
  String _errorText;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("文本框输入"),
        ),
        body: Column(
          children: <Widget>[
            TextFormField(
              decoration: new InputDecoration(hintText: "这是提示", errorText:_getErrorText()),
              onFieldSubmitted: (String text) {
                setState(() {
                  _errorText = "错误";
                });
              },
            )
          ],
        ));
  }

  _getErrorText() {
    return _errorText;
  }
}
