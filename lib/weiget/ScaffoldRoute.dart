import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScaffoldRoute extends StatefulWidget {
  @override
  _ScaffoldRouteState createState() {
    // TODO: implement createState
    return new _ScaffoldRouteState();
  }
}

class _ScaffoldRouteState extends State<ScaffoldRoute>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 1;

  //tablayout 需要定义一个Controller
  TabController _tabController;

  List tabs = ["新闻", "历史", "图片"];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("路由首页"),
        bottom: TabBar(
            tabs: tabs.map((e)=>Tab(text: e,)).toList(),
          controller: _tabController,
            ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.share), onPressed: _shared)
        ],
        leading: Builder(builder: (context) {
          return IconButton(
            icon: Icon(
              Icons.dashboard,
              color: Colors.white,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
      ),
      drawer: new MyDrawer(),
      body: TabBarView(
          controller:_tabController ,
          children: tabs.map((e) {
        return Center(
          child: Text(e, textScaleFactor: 5),
        );
      }).toList()),
//    普通的导航栏
//      bottomNavigationBar: BottomNavigationBar(
//        items: <BottomNavigationBarItem>[
//          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
//          BottomNavigationBarItem(
//              icon: Icon(Icons.business), title: Text("酒店")),
//          BottomNavigationBarItem(icon: Icon(Icons.school), title: Text("学校")),
//        ],
//        currentIndex: _selectedIndex,
//        fixedColor: Colors.blue,
//        onTap: _onItemTapped,
//      ),

    bottomNavigationBar: BottomAppBar(
      color: Colors.white,
      shape: CircularNotchedRectangle(),
      child: Row(
        children: <Widget>[
          IconButton(icon:Icon(Icons.home),onPressed: null,),
          SizedBox(),
          IconButton(icon: Icon(Icons.business),onPressed: null,)
        ],
        mainAxisAlignment: MainAxisAlignment.spaceAround,
      ),
    ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onAdd,
        child: Icon(Icons.add),
      ),

    );
  }

  void _onItemTapped(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  _shared() {
    //这里是分享
  }

  _onAdd() {
    //悬浮按钮的add
  }
  void _onclick(){
    _tabController.addListener((){
      switch(_tabController.index){
        case 1:
          break;
        case 2:
          break;
        case 3:
          break;
      }
    });
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
        context: context,
        // DrawerHeader consumes top MediaQuery padding.
        removeTop: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 38.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: ClipOval(
                      child: Image.asset(
                        "imgs/avatar.png",
                        width: 80,
                      ),
                    ),
                  ),
                  Text(
                    "Wendux",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: const Icon(Icons.add),
                    title: const Text('Add account'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text('Manage accounts'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
