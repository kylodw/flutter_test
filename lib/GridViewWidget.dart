import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

/**
 * 静态的GridView
 */
class GridViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, childAspectRatio: 1.0),
        children: <Widget>[
          Icon(Icons.ac_unit),
          Icon(Icons.ac_unit),
          Icon(Icons.ac_unit),
          Icon(Icons.ac_unit),
          Icon(Icons.ac_unit),
          Icon(Icons.ac_unit),
          Icon(Icons.ac_unit),
          Icon(Icons.ac_unit),
        ],
      ),
    );
  }
}
