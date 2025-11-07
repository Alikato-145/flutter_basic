import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child :Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: (){
            print("Button Click");
          }, 
          child: Text("Click",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
          ),
        const SizedBox(height: 10,),
        FilledButton(
          onPressed: (){},
          style: FilledButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white
          ),
           child: Text("MANUS",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
        const SizedBox(height: 10,),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            side: BorderSide(
              color: Colors.red,
              width: 2
            )
          ),
          onPressed: (){}, child: Text("MANUS",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
        const SizedBox(height: 10,),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor:Colors.purple,
            foregroundColor: Colors.white
          ),
          onPressed: (){}, child: Text("MANUS",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
      ],
    ),
    );
  }
}
