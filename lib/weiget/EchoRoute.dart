import 'package:flutter/material.dart';

class EchoRoute extends StatelessWidget {


//  EchoRoute(this.tip);
//
//  final String tip;
  final String text;
  final Color backColor;
  //这个相当于构造？  EchoRoute(text: "hello world")
  const EchoRoute({
    Key key,
    @required this.text,
    this.backColor: Colors.grey,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("回显文本"),
      ),
      body: Center(
        child: Container(
          color: backColor,
          child: Text(text),
        ),
      ),
    );
  }
}
