import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {


  @override
  _ButtonWidgetState createState() {
    return new _ButtonWidgetState();
  }
}

class _ButtonWidgetState extends State<ButtonWidget> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("测试button"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("漂浮按钮"),
              onPressed: _onclick("RaisedButton"),
            ),
            FlatButton(
              child: Text("扁平按钮"),
              onPressed: _onclick("FlatButton"),
            ),
            OutlineButton(
              child: Text("默认有一个边框，不带阴影且背景透明"),
              onPressed: _onclick("OutlineButton"),
            ),
            IconButton(
              icon: Icon(Icons.thumb_up),
              onPressed: _onclick("IconButton"),
            )
          ],
        ),
      ),
    );
  }

  _onclick(String s) {
    print(s);
  }
}
