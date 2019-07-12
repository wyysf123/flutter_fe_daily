import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'comm_page.dart';
import 'global_config.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  //底部导航菜单
  final List<BottomNavigationBarItem> boottomTabs = [
    BottomNavigationBarItem(
        icon: Icon(Icons.directions_car), title: Text('JavaScript')),
    BottomNavigationBarItem(
        icon: Icon(Icons.directions_bike), title: Text('CSS')),
    BottomNavigationBarItem(
        icon: Icon(Icons.directions_run), title: Text('HTML')),
    BottomNavigationBarItem(
        icon: Icon(Icons.directions_subway), title: Text('dart')),
  ];

  //页面容器
  final List tabBodies = [
    CommonPage('Javascript'),
    CommonPage('css'),
    CommonPage('html'),
    CommonPage('dart')
  ];

  //声明当前索引和当前页面
  int currentIndex = 0;
  StatefulWidget currentPage;

  //底部导航容器
  Widget _bottomNavigationBar() {
    return new BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      fixedColor: GlobalConfig.selectBottomColor,
      items: boottomTabs,
      onTap: (int index) {
        if (currentIndex != index) {
          setState(() {
            currentIndex = index;
            currentPage = tabBodies[currentIndex];
          });
        }
      },
    );
  }

  //初始化当前页面
  @override
  void initState() {
    currentPage = tabBodies[currentIndex];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalConfig.bgColor,
      bottomNavigationBar: _bottomNavigationBar(),
      body: currentPage,
    );
  }
}
