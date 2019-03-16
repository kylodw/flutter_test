import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LinearLayoutHorizontal extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("线性布局Row和Column"),
      ),
      body: Column(
        //排除居中对齐的干扰
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text("kylodw"),
                  Text("MainAxisAlignment不懂是什么意思"),
                  Text("默认为居中对齐")
                ],
              )

            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text("kylodw"),
                  Text(" MainAxisSize.min  和MainAxisAlignment.center 的作用"),
                  Text("第二个Row，由于mainAxisSize值为MainAxisSize.min，Row的宽度等于两个Text的宽度和，所以对齐是无意义的，所以会从左往右显示")
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            textDirection: TextDirection.rtl,
            children: <Widget>[
              Text("kylodw"),
              Text("MainAxisAlignment.end和TextDirection.rtl 的作用"),
              Text("第三个Row设置textDirection值为TextDirection.rtl，所以子widget会从右向左的顺序排列，而此时MainAxisAlignment.end表示左对齐，"),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            verticalDirection: VerticalDirection.up,
            children: <Widget>[
              Text("kylodw 加大字体",style: TextStyle(fontSize: 30.0),),
              Text(" CrossAxisAlignment.start和VerticalDirection.up的作用"),
              Text("第四个Row测试的是纵轴的对齐方式，由于两个子Text字体不一样，所以其高度也不同，我们指定了verticalDirection值为VerticalDirection.up，即从低向顶排列，而此时crossAxisAlignment值为CrossAxisAlignment.start表示底对齐")
            ],
          ),
        ],
      ),
    );
  }

}