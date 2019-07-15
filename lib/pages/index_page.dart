import 'package:flutter/material.dart';
import 'global_config.dart';
import 'comm_page.dart';

class IndexPage extends StatefulWidget {
  String title;
  IndexPage(this.title);

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> with SingleTickerProviderStateMixin {
  AnimationController _controller;



  Widget tabbar(){
    double width = MediaQuery.of(context).size.width / 4;
    print(width);
    return new TabBar(
        isScrollable: true,
        labelColor: GlobalConfig.dark == true ? new Color(0xFF63FDD9) : Colors.blue,
        unselectedLabelColor: GlobalConfig.dark == true ? Colors.white : Colors.black,
        labelPadding: EdgeInsets.only(right: 0,left: 0),
        tabs: [
          Container(
            child: Tab(text: 'JavaScript'),
            width: width,
          ),
          Container(
            child: Tab(text: 'Dart'),
            width: width,
          ),
          Container(
            child: Tab(text: 'CSS'),
            width: width,
          ),
          Container(
            child: Tab(text: 'Swift'),
            width: width,
          )
        ]
    );
  }

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('大前端'),
            bottom: tabbar(),
          ),
          body: TabBarView(
              children: [
                CommonPage('JavaScript'),
                CommonPage('Dart'),
                CommonPage('CSS'),
                CommonPage('Swift')
              ]
          ),
        )
    );
  }
}
