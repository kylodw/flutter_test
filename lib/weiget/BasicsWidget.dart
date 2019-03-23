import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//基础控件
class BasicsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //使用  style: DefaultTextStyle.of(context).style
    DefaultTextStyle(
      style: TextStyle(
          color: Colors.red,
          fontSize: 20.0,
          fontFamily: 'Lato',
      ),
      textAlign: TextAlign.start,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("heelo")
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("基础的widget"),
      ),
      body: Center(

        child: Column(
          children: <Widget>[
            Text(
              "kylodw",
              textAlign: TextAlign.center,
              style: DefaultTextStyle.of(context).style,
            ),
            Text(
              "kylodw" * 10,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              "kylodw",
              textScaleFactor: 1.5,
            ),
            Text.rich(TextSpan(
                children: [
                  TextSpan(
                      text: "网址："
                  ),
                  TextSpan(
                    text: "www.baidu.com",
                    style: TextStyle(
                        color: Colors.blue
                    ),
//                  recognizer: _tapRecognizer
                  ),
                ]
            ))

          ],
        ),
      ),
    );
  }
}

class _tapRecognizer {
}
