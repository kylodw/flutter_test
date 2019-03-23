import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class ListViewWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return null;
  }

}
class _ListViewWidgetState extends State<ListViewWidget> with AutomaticKeepAliveClientMixin{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    super.build(context);
    return new RefreshIndicator(
        child: ListView.builder(itemBuilder: null),
        onRefresh: null);
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}