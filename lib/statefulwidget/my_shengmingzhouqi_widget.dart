
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 *演示生命周期
 */
main(){
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
      body:HomeBody(),
    );
  }
}

class HomeBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    print("HomeBody build");
    return MyCounterWidget();
  }


}


class MyCounterWidget extends StatefulWidget{
  MyCounterWidget(){
    print("MyCounterWidget--->构造 ");
  }

  @override
  State<StatefulWidget> createState() {
    print("MyCounterWidget--->createState ");
    return MyCounterState();
  }
}


class MyCounterState extends State<MyCounterWidget>{
   int counter = 0;

   MyCounterState(){

     print("MyCounterState--->构造 ");
   }

   @override
  void initState() {
    super.initState();
    print("MyCounterState--->init ");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("MyCounterState--->didChangeDependencies ");
  }

  @override
  void didUpdateWidget(covariant MyCounterWidget oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print("MyCounterState--->didUpdateWidget ");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("MyCounterState--->dispose ");
  }

  @override
  Widget build(BuildContext context) {
    print("MyCounterState--->build ");
      return Center(
            child:Column(
                mainAxisAlignment:MainAxisAlignment.center,
                children:<Widget> [
                  Row(
                   mainAxisAlignment:MainAxisAlignment.center,
                   children:<Widget>[
                     TextButton(
                         onPressed: (){
                           setState(() {
                             counter++;
                           });

                         },
                         style: TextButton.styleFrom(
                           padding: const EdgeInsets.all(16.0),
                           primary: Colors.blue,
                           backgroundColor:Colors.blue,
                           textStyle: const TextStyle(fontSize: 20),
                         ),
                         child:const Text("+1",style:TextStyle(fontSize:18,color:Colors.lightBlue))
                     ),
                     TextButton(
                         onPressed: (){
                            setState(() {
                              counter--;
                            });
                         },
                         child:const Text("-1",style:TextStyle(fontSize:18,color:Colors.lightBlue))
                     ),
                ]
                  ),
                  Text("当前计数:$counter")
                ],


            )


      );

  }



}

