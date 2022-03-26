
import 'package:flutter/material.dart';

main(){
   runApp(MaterialApp(
     home:Scaffold(
       appBar: AppBar(
         title: Text("第一个Fluttter程序"),
       ),
       body:Center(
           child:Text("hell world",
           style: TextStyle(
               fontSize: 40 ,color: Colors.orange),
           ),
       ) ,

     )


   ));

}