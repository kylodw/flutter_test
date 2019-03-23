import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_master_test/Application.dart';
import 'package:flutter_master_test/weiget/ButtonWidget.dart';
import 'package:flutter_master_test/weiget/FlexLayoutTestRoute.dart';
import 'package:flutter_master_test/weiget/InfiniteListView.dart';
import 'package:flutter_master_test/weiget/WrapLayout.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() {
    // TODO: implement createState
    return new _MainPageState();
  }
}

//vsync和 SingleTickerProviderStateMixin  有关系
class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  String appBarTitle = tabData[0]['text'];
  static List tabData = [
    {'text': 'ListView', 'icon': new Icon(Icons.language)},
    {'text': 'WIDGET', 'icon': new Icon(Icons.extension)},
    {'text': '组件收藏', 'icon': new Icon(Icons.favorite)},
    {'text': '关于手册', 'icon': new Icon(Icons.import_contacts)}
  ];
  List<Widget> myTabs = [];
  TabController controller;

  @override
  void initState() {
    super.initState();

    controller = new TabController(length: 4, vsync: this, initialIndex: 0);

    for (int i = 0; i < tabData.length; i++) {
      myTabs.add(new Tab(text: tabData[i]['text'], icon: tabData[i]['icon']));
    }
    controller.addListener(() {
      if (controller.indexIsChanging) {
        _onTabChange();
      }
    });

    Application.controller = controller;
  }

  @override
  void dispose() {
    controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: Text("这里暂时留着"),
      ),
      body: new TabBarView(controller: controller, children: <Widget>[
        new InfiniteListView(),
        new WrapLayout(),
        new FlexLayoutTestRoute(),
        new ButtonWidget(),
      ]),
      bottomNavigationBar: Material(
        color: const Color(0xFFF0F0F0),
        child: SafeArea(
            child: new Container(
          height: 65.0,
          decoration: BoxDecoration(
              color: const Color(0xFFF0F0F0),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: const Color(0xFFd0d0d0),
                    blurRadius: 3.0,
                    spreadRadius: 2.0,
                    offset: Offset(-1.0, -1.0))
              ]),
          child: TabBar(
              controller: controller,
              indicatorColor: Theme.of(context).primaryColor,
              indicatorWeight: 3.0,
              labelColor: Theme.of(context).primaryColor,
              unselectedLabelColor: const Color(0xFF8E8E8E),
              tabs: myTabs),
        )),
      ),
    );
  }

  //导航栏的点击事件
  void _onTabChange() {
    //这个不知道什么意思  表明 State 当前是否正确绑定在View树中
    if (this.mounted) {
      this.setState(() {
        appBarTitle = tabData[controller.index]['text'];
      });
    }
  }
}
