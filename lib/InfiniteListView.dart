import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:english_words/english_words.dart';


//有下拉加载的listview 和 固定头的listview
class InfiniteListView extends StatefulWidget {
  @override
  _InfiniteListViewState createState() {
    // TODO: implement createState
    return new _InfiniteListViewState();
  }
}

class _InfiniteListViewState extends State<InfiniteListView> {
  static const loadingTag = "loading";
  var _words = <String>[loadingTag];

  @override
  void initState() {
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    Widget divider1 = Divider(
      color: Colors.blue,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("底部加载"),
      ),
      body: Column(
        children: <Widget>[
          ListTile(title: Text("商品列表")),
          Expanded(
            child: ListView.separated(
              itemCount: _words.length,
              separatorBuilder: (context, index) {
                return divider1;
              },
              itemBuilder: (context, index) {
                if (_words[index] == loadingTag) {
                  if (_words.length - 1 < 100) {
                    _initData();
                    return Container(
                      padding: const EdgeInsets.all(16.0),
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 24.0,
                        height: 24.0,
                        child: CircularProgressIndicator(
                          strokeWidth: 2.0,
                        ),
                      ),
                    );
                  } else {
                    return Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        "没有更多了",
                        style: TextStyle(color: Colors.grey),
                      ),
                    );
                  }
                }
                return ListTile(
                  title: Text(_words[index]),
                );
              },
            ),
          ),
        ],
      ),
//      body:,
    );
  }

  void _initData() {
    Future.delayed(Duration(seconds: 2)).then((e) {
      _words.insertAll(_words.length - 1,
          generateWordPairs().take(20).map((e) => e.asPascalCase).toList());
      setState(() {
        //重新构建列表
      });
    });
  }
}
