import 'package:flutter/material.dart';

class ImageRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new DecoratedBox(decoration: 
    new BoxDecoration(
      image: new DecorationImage(image: new AssetImage('images/ic_launcher.png'))
    ));
  }
  
}