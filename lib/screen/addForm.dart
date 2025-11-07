import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myproject/models/person.dart';
import 'package:myproject/screen/item.dart';
class AddForm extends StatefulWidget {
  const AddForm({super.key});

  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  final _formKey = GlobalKey<FormState>();
  String _name='';
  int _age=20;
  Job _job =Job.police;
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        title:const Text("หน้าแรกของแอพพลิเคชัน"),
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsetsGeometry.all(15),
        child: Form(
          key: _formKey,
          child:Column(
            children: [
              TextFormField(
                maxLength: 20,
                decoration:const  InputDecoration(
                  label: Text("ป้อนชื่อ",style:TextStyle(fontSize:15))
                ),
                validator: (value) {
                  if(value==null || value.isEmpty){
                    return "กรุณาป้อนชื่อของคุณ";
                  }
                  return null;
                },
                onSaved:(value) {
                  _name=value!;//not null
                },
              ),
                TextFormField(
               
                keyboardType: TextInputType.number,
                decoration:const  InputDecoration(
                label: Text("อายุ",style:TextStyle(fontSize:15))
                ),
                validator: (value) {
                  if(value==null || value.isEmpty){
                    return "กรุณาป้อนอายุของคุณ";
                  }
                  return null;
                },
                onSaved:(value){
                  _age=int.parse(value.toString());
                }
              ),
              const SizedBox(height: 20,),
              DropdownButtonFormField(
                initialValue: _job,
                items: Job.values.map((key){
                  return DropdownMenuItem(
                    value:key,
                    child:Text(key.title),
                    );
                }).toList(), 
                onChanged: (value){
                  setState(() {
                    _job=value!;
                  });
                }),
              FilledButton(
                onPressed:(){
                  _formKey.currentState!.validate();
                  _formKey.currentState!.save();
                  data.add(Person(name: _name, age: _age, job: _job));
                  _formKey.currentState!.reset();
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (ctx) => const Item()),
                );
                }, 
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.blue
                ),
                child: Text("บันทึกข้อมูล",style: TextStyle(fontSize:20),))
            ],
            )
          )
        ),
    );
  }
}