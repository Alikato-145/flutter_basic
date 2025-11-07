import 'package:flutter/material.dart';
import 'package:myproject/models/person.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myproject/screen/addForm.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text("หน้าแรกของแอพพลิเคชัน"),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: data[index].job.color,
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 5),
                  padding: const EdgeInsets.all(40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data[index].name,
                            style: GoogleFonts.kanit(
                              textStyle: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Text(
                            "อายุ ${data[index].age} ปี , อาชีพ ${data[index].job.title}",
                            style: const TextStyle(fontSize: 15),
                          )
                        ],
                      ),
                      Image.asset(
                        data[index].job.image,
                        width: 70,
                        height: 70,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(
            width: 100,
            height: 100,
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (ctx) => const AddForm()),
                );
              },
              icon: const Icon(Icons.add, size: 40, color: Colors.blue),
            ),
          )
        ],
      ),
    );
  }
}
