import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

//简单的listview显示
class ListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //listview 的切割线
    Widget divider1 = Divider(
      color: Colors.blue,
    );
    Widget divider2 = Divider(
      color: Colors.red,
    );
    return Scaffold(
        appBar: AppBar(
          title: Text("ListView"),
        ),
        body: ListView.separated(
          itemCount: 100,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text("$index"),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return index % 2 == 0 ? divider1 : divider2;
          },
        ));
  }
}
