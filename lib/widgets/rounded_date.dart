
import 'package:flutter/material.dart';

import '../date_model.dart';


List<Map<String,dynamic>> materialDate=[
  {
    'month':'Mon',
    'day':'21',
    'textC':Colors.white,
    'bgC':Color(0xff0F7260),
  },
  {
    'month':'Tue',
    'day':'22',
    'textC':Color(0xff404040),
    'bgC':Colors.white,
  },
  {
    'month':'Wed',
    'day':'23',
    'textC':Color(0xff404040),
    'bgC':Colors.white,
  },
  {
    'month':'Thu',
    'day':'24',
    'textC':Color(0xff404040),
    'bgC':Colors.white,
  },
  {
    'month':'Fri',
    'day':'25',
    'textC':Color(0xff404040),
    'bgC':Colors.white,
  },
  {
    'month':'Sat',
    'day':'26',
    'textC':Color(0xff404040),
    'bgC':Colors.white,
  },
  {
    'month':'Sun',
    'day':'27',
    'textC':Color(0xff404040),
    'bgC':Colors.white,
  },
];


class RoundedDateCard extends StatelessWidget {
  final DateOfDayModel dateOfDayModel;
  final bool active;
  const RoundedDateCard({Key? key, required this.dateOfDayModel, required this.active}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:15.0),
      child: Container(
        height: 70,
        width: 60,
        decoration: BoxDecoration(
            color:active ? Color(0xff0F7260):Colors.white,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(dateOfDayModel.dayStr,style: TextStyle(color: active ? Colors.white:Color(0xff404040),fontWeight: FontWeight.bold,fontSize: 16),),
            Container(
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:3.0,vertical: 2.0),
                  child: Text(' ${dateOfDayModel.daysNum} ',style: TextStyle(color: active ? Colors.white:Color(0xff404040),fontWeight: FontWeight.w700,fontSize: 15),),
                )),
          ],
        ),
      ),
    );
  }
}