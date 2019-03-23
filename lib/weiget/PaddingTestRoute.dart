import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class PaddingTestRoute  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text("EdgeInsets  padding 留白"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(padding: const EdgeInsets.only(left: 8.0),child: Text("左边添加8像素补白"),),
                Padding(padding: const EdgeInsets.symmetric(vertical: 8.0),child: Text("上下各添加8像素补白"),),
                Padding(padding: const EdgeInsets.fromLTRB(20.0,20.0,20.0,20.0),child: Text("分别指定四个方向的补白"),),
              ],
            ),
          )
        ],
      ),
    );
  }
  
}