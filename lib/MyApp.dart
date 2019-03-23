//应用本身也是一个widget
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_master_test/Application.dart';
import 'package:flutter_master_test/MainPage.dart';
import 'package:flutter_master_test/Routes.dart';

class MyApp extends StatelessWidget {
  MyApp() {
    final router = new Router();
    Routes.configRoutes(router);
    Application.router = router;
  }

  // 构建ui界面
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
        body: new MainPage(),
      ),
      onGenerateRoute: Application.router.generator,
    );
  }
}
