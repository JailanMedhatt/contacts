import 'package:contacts/ContactContainer.dart';
import 'package:contacts/args.dart';
import 'package:contacts/textField.dart';
import 'package:flutter/material.dart';

class ContactsScreen extends StatefulWidget {
  @override
  State<ContactsScreen> createState() => _ContactScreenState();

}
class _ContactScreenState extends State<ContactsScreen> {
  int num=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("Contacts Screen"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          texttField(icon: Icons.edit, text:"Enter Your Name here"),
          texttField(icon: Icons.call, text: "Enter Your Number here"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: ElevatedButton(onPressed: (){if (num < 3&& args.vaidate==true) {
                  names[num] = args.name;
                  phoneNumbers[num] = args.phoneNum;
                  vissibility[num] = true;
                  num++;
                  setState(() {});
                }

                }, child: Text("Add", style: TextStyle(color: Colors.black87, fontSize: 18, fontWeight: FontWeight.bold),),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)
                      )

                  ),),
              )

            ],
          ),
          ContactContainer(
              visibility: vissibility,
              names: names,
              phoneNumbers: phoneNumbers,
              index: 0,del:onDelete,),
          ContactContainer(
              visibility: vissibility,
              names: names,
              phoneNumbers: phoneNumbers,
              index: 1, del: onDelete,),
          ContactContainer(
              visibility: vissibility,
              names: names,
              phoneNumbers: phoneNumbers,
              index: 2,del: onDelete,),
        ],
      ),
    );
  }

  static List<bool> vissibility = [false, false, false];

  static List<String> names = ["", "", ""];

  static List<String> phoneNumbers = ["", "", ""];




  onAdd() {
    if (num < 3) {
      names[num] = args.name;
      phoneNumbers[num] = args.phoneNum;
      vissibility[num] = true;
      num++;
      setState(() {});
    }
  }

  onDelete(index) {

    vissibility[index]=false;
    names[index]="";
    phoneNumbers[index]="";
    num=index;
      setState(() {});



  }}
//   swap(int index){
//     names[index]=names[index+1];
//     phoneNumbers[index]=args.phoneNum[index+1];
//     vissibility[index]=vissibility[index+1];
//   }
//   delete(index){
//     if(index==0||index==1){
//       if(vissibility[index+1]==true){
//         swap(index);
//         if(index==0  &&vissibility[index+2]==true){
//           swap(1);
//         }
//
//       }
//     }
//     vissibility[num-1]=false;
//     names[num-1]="";
//     phoneNumbers[num-1]="";
//     num--;
//     setState(() {});
//
// }}
