import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

/**
 * widget:
 * 有状态的widget:StatefulWidget在运行过程中有一些状态(data)需要更改
 * 无状态的widget:StatelessWidget 内容是确定没有状态(data)
 */
class MyApp extends StatelessWidget {
  @protected
  Widget build(BuildContext context) {
    //采用MaterialApp风格
    return MaterialApp(home: cHomePage());
  }
}


class cHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("第一个Fluttter程序"),
      ),
      body:mHomeContent(),
    );
  }
}

class mHomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center( //设置居中显示
        child: Text(
        "hell world",
        style: TextStyle(fontSize: 40, color: Colors.orange),
    ));
  }

}