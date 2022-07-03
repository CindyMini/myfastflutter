import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

// form 表单的使用
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
        title: Text("登录页面"),
      ),
      body: _FormDemo(),
    );
  }
}

//2.fromDemo
class _FormDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FormDemoState();
}

class _FormDemoState extends State<_FormDemo> {
  TextEditingController textConroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.always,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: textConroller,
            decoration: const InputDecoration(
                icon: Icon(Icons.people), labelText: '用户名或手机号'),
          ),
          // TextFormField(
          // decoration: const InputDecoration(
          //     icon: Icon(Icons.people), labelText: '用户名或手机号'),
          // ),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
                icon: Icon(Icons.people), labelText: '密码'),
          ),
          Container(
            width: double.infinity,
            height: 44,
            color: Colors.red,
            child: TextButton(
              child: const Text(
                "注册",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              onPressed: () => print("点击了注册按钮"),
            ),
          ),
        ],
      ),
    );
  }
}

//1.textFieldDemo
class textFieldDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MytextFieldDemoState();
  }
}

class MytextFieldDemoState extends State<textFieldDemo> {
  final textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // 1.设置默认值
    textEditingController.text = "hello world";
    textEditingController.addListener(() {
      print("textEditingController:${textEditingController.text}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
          //输入框相关样式
          icon: Icon(Icons.people), //设置左边显示的图标
          labelText: "username", //输入框上面显示一个提示的文本
          hintText: "请输入姓名", // 显示提示的站位文字
          border: InputBorder.none,
          filled: true, //是否填充,默认false
          fillColor: Colors.grey),
      onChanged: (value) => print("changed-->$value"),
      onSubmitted: (value) => print("Submitted-->$value"),
    );
  }
}
