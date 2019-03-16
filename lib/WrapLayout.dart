import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WrapLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text("流式布局"),
      ),
      body: Wrap(
        spacing: 8.0,
        runSpacing: 4.0,
        alignment: WrapAlignment.center,
        children: <Widget>[
          new Chip(label: new Text("主轴(水平)方向间距"),avatar: new CircleAvatar(backgroundColor: Colors.blueGrey,child: Text('A'),),),
          new Chip(label: new Text(" 纵轴（垂直）方向间距"),avatar: new CircleAvatar(backgroundColor: Colors.blueGrey,child: Text('A'),),),
          new Chip(label: new Text("沿主轴方向居中"),avatar: new CircleAvatar(backgroundColor: Colors.blueGrey,child: Text('A'),),),
          new Chip(label: new Text("spacing"),avatar: new CircleAvatar(backgroundColor: Colors.blueGrey,child: Text('A'),),),
          new Chip(label: new Text("runSpacing"),avatar: new CircleAvatar(backgroundColor: Colors.blueGrey,child: Text('A'),),),
          new Chip(label: new Text("alignment"),avatar: new CircleAvatar(backgroundColor: Colors.blueGrey,child: Text('A'),),),
        ],
      ),
    );
  }
}
