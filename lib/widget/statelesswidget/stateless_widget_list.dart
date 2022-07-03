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
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //采用MaterialApp风格
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.amberAccent),
        home: Scaffold(
          appBar: AppBar(title: Text("CICI.Chan")),
          body: HomeContent(),
        ));
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(8.0),
      child:ListView(
      children: <Widget>[
        ProductItem("test1", "第一张图片",
            "https://fc1tn.baidu.com/it/u=2869076751,502335351&fm=202&mola=new&crop=v1"),
        ProductItem("test2", "第二张图片",
            "https://fc1tn.baidu.com/it/u=2869076751,502335351&fm=202&mola=new&crop=v1"),
        ProductItem("test3", "第三张图片",
            "https://fc1tn.baidu.com/it/u=2869076751,502335351&fm=202&mola=new&crop=v1"),
      ],
    ),
    );


  }
}

class ProductItem extends StatelessWidget {
  String title;
  String desc;
  String imageURL;

  ProductItem(this.title, this.desc, this.imageURL);

  @override
  Widget build(BuildContext context) {
    return
      Container(
        //设置内边框的padding
        padding:EdgeInsets.all(20),
      decoration: BoxDecoration(border: Border.all()),
      child:Column(
      children: <Widget>[
        Text(title, style: const TextStyle(fontSize: 24)),
        Text(
          desc,
          style: const TextStyle(fontSize: 18,color:Colors.red,),
        ),
        const SizedBox(height: 30),
        Image.network(
          imageURL
        ),
      ],
    ));
  }
}
