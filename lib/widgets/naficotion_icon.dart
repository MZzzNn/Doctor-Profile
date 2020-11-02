import 'package:flutter/material.dart';

Widget NotificotionIcon(BuildContext context){
  return   Stack(
    children: <Widget>[
      IconButton(
          icon: Icon(Icons.notifications_none, color: Colors.white, size: 26,),
          onPressed: () {}),
      Positioned(
        top: 10,
        right: 12,
        child: Container(
          height: 8,
          width: 8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).accentColor,
          ),
        ),
      )
    ],
  );
}