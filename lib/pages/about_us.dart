import 'package:flutter/material.dart';
import 'global_config.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  final String content = '''此App是练习Flutter而创立的，主要有一下几个方面作用：
  
  一方面练习实践下Flutter技术。
  
  一方面可以方便自己查看前端相关最新的信息。
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('关于'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Text(
          content,
          style: TextStyle(fontSize: 16, color: GlobalConfig.listFontColor),
        ),
      ),
    );;
  }
}