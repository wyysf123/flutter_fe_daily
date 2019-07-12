import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'dart:io';
import 'package:flutter/services.dart';
import 'pages/global_config.dart';

void main(){
  runApp(MyApp());
  if (Platform.isAndroid) {
    // 设置沉浸式状态栏
    SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: 'GitHub Daily',
        debugShowCheckedModeBanner: false,
          theme: GlobalConfig.themeData,
//        theme: ThemeData(
//          primarySwatch: Colors.teal
//        ),
        home: HomePage(),
        checkerboardOffscreenLayers: true,
      ),
    );
  }
}
