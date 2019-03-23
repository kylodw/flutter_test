import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InfiniteGridView extends StatefulWidget {
  @override
  _InfiniteGridViewState createState() {
    // TODO: implement createState
    return new _InfiniteGridViewState();
  }
}

class _InfiniteGridViewState extends State<InfiniteGridView> {
  List<IconData> _icons = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initData();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("动态GridView"),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, childAspectRatio: 1.0),
          itemCount: _icons.length,
          itemBuilder: (context, index) {
            if (index == _icons.length - 1 && _icons.length < 200) {
              initData();
            }
            return Icon(_icons[index]);
          }),
    );
  }

  void initData() {
    Future.delayed(Duration(milliseconds: 200)).then((e) {
      setState(() {
        _icons.addAll([
          Icons.ac_unit,
          Icons.map,
          Icons.business,
          Icons.dashboard,
          Icons.add
        ]);
      });
    });
  }
}
