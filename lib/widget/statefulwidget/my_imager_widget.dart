import 'package:flutter/material.dart';

///控制文本布局的参数：
///如文本对齐方式 textAlign、文本排版方向 textDirection，
///文本显示最大行数 maxLines、文本截断规则 overflow 等等，这些都是构造函数中的参数；
///控制文本样式的参数：
/// 如字体名称 fontFamily、字体大小 fontSize、文本颜色 color、文本阴影 shadows 等等，
/// 这些参数被统一封装到了构造函数中的参数 style 中；

main() {
  runApp(MyApp());
}

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
      body: myHomeBodyClipOvalImg(),
    );
  }
}

//普通文本
class myHomebody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Text(
      "《咏柳》\n 碧玉妆成一树高，万条垂下绿丝绦。\n 不知细叶谁裁出，二月春风似剪刀。",
      textAlign: TextAlign.center, //所有内容居中对齐
      softWrap: true, //超出部分是否会溢出屏幕
      maxLines: 3,
      overflow: TextOverflow.ellipsis, //超出部分显示....
      style: TextStyle(fontSize: 20, color: Colors.blue),
    );
  }
}

///富文本展示
///Android:SpannableString Ios:NSAttributedString
class myHomebodyTestSpan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Text.rich(
      TextSpan(children: [
        TextSpan(
            text: "《咏柳》",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: Colors.black)),
        TextSpan(
            text: "碧玉妆成一树高，万条垂下绿丝绦。",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300)),
        TextSpan(text: "不知细叶谁裁出，二月春风似剪刀。"),
      ]),
      textAlign: TextAlign.center,
    );
  }
}

class myHomeBodyNetImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Image.network(
          "https://fc1tn.baidu.com/it/u=2869076751,502335351&fm=202&mola=new&crop=v1",
          alignment: Alignment.center,
        ),
        width: 300,
        height: 300,
        color: Colors.amberAccent,
      ),
    );
  }
}

///设置圆角img
class myHomeBodyCircleImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: CircleAvatar(
          backgroundImage: NetworkImage(
            "https://fc1tn.baidu.com/it/u=2869076751,502335351&fm=202&mola=new&crop=v1",
          ),
          radius: 100,
          child: Container(
            alignment: Alignment(0, 5),
            width: 300,
            height: 300,
            color: Colors.amberAccent,
            child: Text("圆角图片"),
          ),
        ),
      ),
    );
  }
}

///设置圆角头像
class myHomeBodyClipOvalImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipOval(
        child: Image.network(
          "https://fc1tn.baidu.com/it/u=2869076751,502335351&fm=202&mola=new&crop=v1",
        ),
      ),
    );
  }
}

class myHomeBodyloadImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Image.asset(
          "images/img_dss_pub.png",
          alignment: Alignment.center,
        ),
        width: 300,
        height: 300,
        color: Colors.amberAccent,
      ),
    );
  }
}

class MyCounterWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyCounterState();
  }
}

class MyCounterState extends State<MyCounterWidget> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          TextButton(
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
                primary: Colors.blue,
                backgroundColor: Colors.blue,
                textStyle: const TextStyle(fontSize: 20),
              ),
              child: const Text("+1",
                  style: TextStyle(fontSize: 18, color: Colors.lightBlue))),
          TextButton(
              onPressed: () {
                setState(() {
                  counter--;
                });
              },
              child: const Text("-1",
                  style: TextStyle(fontSize: 18, color: Colors.lightBlue))),
        ]),
        Text("当前计数:$counter")
      ],
    ));
  }
}
