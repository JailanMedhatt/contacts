
import 'package:contacts/args.dart';
import 'package:flutter/material.dart';

class texttField extends StatelessWidget{
  IconData icon;
  String text;

  texttField({required this.icon, required this.text});
  @override
  Widget build(BuildContext context) {
  return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
    child: TextFormField(
      onChanged: (textt){
        if(text=="Enter Your Name here"){ args.name=textt;}
        else{
          args.phoneNum=textt;
        }

      },
      validator:(text){
        if(text==""){
          args.vaidate=false;
          return"required";
        }
        else{
          return null;
        }
      }
      ,

    decoration: InputDecoration(
    label: Text(text,
    style: TextStyle(color: Colors.black),

    ),
    suffixIcon: Icon(icon, color: Colors.blue),
    enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(25),
    borderSide: BorderSide(color: Colors.white)),
    fillColor: Colors.white,
    filled: true),

    ),);
  }
}