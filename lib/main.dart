import 'package:flutter/material.dart';
import 'package:myproject/screen/home.dart';

void main(){
  var myApp = MaterialApp(
    title: "My title",
    home: Scaffold(
      appBar: AppBar(
        title:const Text("My App"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: const Home(),
    ),
  );
  runApp(myApp);
}

