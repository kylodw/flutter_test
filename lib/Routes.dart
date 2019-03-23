import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_master_test/MainPage.dart';
import 'package:flutter_master_test/weiget/ButtonWidget.dart';

class Routes {
  static String root = "/";
  static String home = "/home";
  static String widgetDemo = '/widget_demo';
  static String codeView = '/code_view';
  static String webViewPage = '/web_view_page';

  static void configRoutes(Router router) {
    //没找到路由
    router.notFoundHandler = new Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print("ROUTE IS NOT");
    });

    var homeHandler = new Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        return new MainPage();
      },
    );
    //首页的路由
    router.define(home, handler: homeHandler);
    //root路由
    var rootHandler = new Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return new ButtonWidget();
    });
    router.define(root, handler: rootHandler);

  }
}
