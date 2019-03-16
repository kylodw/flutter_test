import 'package:flutter/material.dart';

//State生命周期
//移除时调用
// deactivate
// dispose
//build是调用   进入初始化状态  didChangeDependencies  build
class CounterWidget extends StatefulWidget {
  final int initValue;

  const CounterWidget({Key key, this.initValue: 0});

  @override
  _CounterWidgetState createState() {
    return new _CounterWidgetState();
  }
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter;

  @override
  void initState() {
    super.initState();
    _counter = widget.initValue;
    print("进入初始化状态");
  }

  @override
  Widget build(BuildContext context) {
    print("开始build");
    // TODO: implement build
    return Center(
      child: FlatButton(onPressed: addInt, child: Text('$_counter')),
    );
  }

  void addInt() {
    @override
    void setState(fn) {
      ++_counter;
    }
  }

  @override
  void didUpdateWidget(CounterWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("deactivate");
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }

  @override
  void reassemble() {
    super.reassemble();
    print("reassemble");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");
  }
}
