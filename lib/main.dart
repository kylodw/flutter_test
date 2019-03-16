import 'package:flutter/material.dart';
import 'package:flutter_master_test/BasicsWidget.dart';
import 'package:flutter_master_test/ButtonWidget.dart';
import 'package:flutter_master_test/CounterWidget.dart';
import 'package:flutter_master_test/CustomScrollViewTestRoute.dart';
import 'package:flutter_master_test/EchoRoute.dart';
import 'package:flutter_master_test/FlexLayoutTestRoute.dart';
import 'package:flutter_master_test/GridViewWidget.dart';
import 'package:flutter_master_test/ImageRoute.dart';
import 'package:flutter_master_test/InfiniteGridView.dart';
import 'package:flutter_master_test/InfiniteListView.dart';
import 'package:flutter_master_test/LinearLayoutHorizontal.dart';
import 'package:flutter_master_test/ListViewWidget.dart';
import 'package:flutter_master_test/NewRoute.dart';
import 'package:flutter_master_test/PaddingTestRoute.dart';
import 'package:flutter_master_test/RandomWordsWidget.dart';
import 'package:flutter_master_test/SampleAppPage.dart';
import 'package:flutter_master_test/ScaffoldRoute.dart';
import 'package:flutter_master_test/TapboxA.dart';
import 'package:flutter_master_test/WrapLayout.dart';

void main() => runApp(MyApp());

//应用本身也是一个widget
class MyApp extends StatelessWidget {
  // 构建ui界面
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

//首页  StatefulWidget有状态的wdiget
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  //状态类
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    //通知状态发生了改变
//    setState(() {
//      _counter++;
//    });
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return new SampleAppPage();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            Text('测试column'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
