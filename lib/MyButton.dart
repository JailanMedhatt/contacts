import 'package:flutter/material.dart';

class MyButton extends StatelessWidget{
  Color backgroundcolor;
  String text;
  Function onClick;
  MyButton({required this.backgroundcolor, required this.text, required this.onClick});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(onPressed: (){}, child: Text(text, style: TextStyle(color: Colors.black87, fontSize: 18, fontWeight: FontWeight.bold),),
        style: ElevatedButton.styleFrom(
            backgroundColor: backgroundcolor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25)
            )

        ),),
    );
  }
}