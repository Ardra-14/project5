import 'package:flutter/material.dart';
import 'package:todo_app/pages/homepage.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title : "Todo App",
      home : HomePage(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}