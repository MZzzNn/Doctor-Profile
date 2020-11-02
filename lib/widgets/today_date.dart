import 'package:flutter/material.dart';

List<Map<String,dynamic>> materialDateDay=[
  {
    'time':'08:30 AM',
    'textC':Colors.black45,
    'bgC':Colors.white,
  },
  {
    'time':'09:30 AM',
    'textC':Colors.white,
    'bgC':Color(0xff0F7260),
  },
  {
    'time':'09:30 AM',
    'textC':Colors.black45,
    'bgC':Colors.white,
  },
  {
    'time':'10:00 AM',
    'textC':Colors.black45,
    'bgC':Colors.white,
  },
  {
    'time':'10:30 AM',
    'textC':Colors.black45,
    'bgC':Colors.white,
  },
  {
    'time':'10:30 AM',
    'textC':Colors.black45,
    'bgC':Colors.white,
  },
];
Widget TodayDate(String time,Color textC,Color bgC){
  return Container(
    height: 10,
    width: 50,
    child: Card(
      color: bgC,
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.alarm,size: 20,color: textC),
          Text(time,style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600,color: textC),)
        ],
      ),
    ),
  );
}