import 'package:flutter/material.dart';

class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("这是一个新页面"),
      ),
      body: Center(
        child: Text("新页面"),
      ),
    );
  }
}
