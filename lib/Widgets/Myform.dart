import 'package:flutter/material.dart';

class Myform extends StatelessWidget {
  Myform({super.key, required this.title, required this.icon});

  String title;

  IconData icon;

  final GlobalKey _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value){

      },
      decoration: InputDecoration(
          label: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(icon,
              color: Colors.black,),
              SizedBox(
                width: 20,
              ),
              Text(title, style: TextStyle(fontSize: 25, color: Colors.black),),
            ],
          ),


          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),


      ),
    );
  }
}
