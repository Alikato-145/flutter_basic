import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
         Image.network(
          "https://storage.googleapis.com/cms-storage-bucket/lockup_flutter_vertical.a9d6ce81aee44ae017ee.png",
          width: 150,height: 150,
          ),
          const SizedBox(height: 30,),
          Image.asset(
            "assets/images/pic1.png",
            width:150,height: 150,
          ),
          const SizedBox(height: 30,),
          Image.asset(
            "assets/images/pic2.png",
            width:150,height: 150,
          ),
          Container(
            alignment: Alignment.center,
            color:Colors.orange,
            child:const Text("Manus",)
          )
      ],
    
    );
  }
}
