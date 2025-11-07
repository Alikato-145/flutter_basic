import 'package:flutter/material.dart';
import 'package:myproject/screen/item.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
    title: "My title",
    theme: ThemeData(
      textTheme: GoogleFonts.kanitTextTheme(
        Theme.of(context).textTheme,
      ),
    ),
    home: Scaffold(
      // appBar: AppBar(
      //   title:const Text("หน้าแรกของแอพพลิเคชัน"),
      //   automaticallyImplyLeading: false,
      //   backgroundColor: Colors.blue,
      //   centerTitle: true,
      // ),
    body: const Item()
    )
    );
  }
}

