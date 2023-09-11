import 'package:flutter/material.dart';


class ContactContainer extends StatelessWidget{
  List <bool> visibility;
  List <String> names;
  List <String> phoneNumbers;
  int index;
  Function del;
  ContactContainer({required this.visibility, required this.names, required this.phoneNumbers, required this.index,required this.del});
  @override
  Widget build(BuildContext context) {
    return Visibility(visible: visibility[index],
      child: Container(
        padding: EdgeInsets.only(top: 20, left: 15, bottom: 15),
        margin: EdgeInsets.symmetric(vertical: 15,horizontal: 10),

        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.white
        ), child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
            Column(
              children: [
                Text("Name:${names[index]}", style: TextStyle(fontSize: 15),),
                SizedBox(height: 5,),
                Text("Phone:${phoneNumbers[index]}", style: TextStyle(fontSize: 15),),
              ],
            ),
            IconButton(onPressed: (){
            del(index);

            }, icon: Icon(Icons.delete,color: Colors.red,))
          ],
        ),
      ),
    );
  }
}