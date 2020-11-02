import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<Map<String,dynamic>> materialRounded=[
  {
    'icon':FontAwesomeIcons.tooth,
     'title':'Dental',
    'subTitle':' 26 Doctors '
  },
  {
    'icon':Icons.favorite,
    'title':'Heart',
    'subTitle':' 15 Doctors '
  },
  {
    'icon':FontAwesomeIcons.brain,
    'title':'Brain',
    'subTitle':' 12 Doctors '
  },
  {
    'icon':FontAwesomeIcons.eye,
    'title':'Eye',
    'subTitle':' 10 Doctors '
  }
];
Widget RoundedContainer(BuildContext context,String title,IconData icon,String subTitle){
  return  Padding(
    padding: const EdgeInsets.only(right:15.0),
    child: Container(
      height: 110,
      width: 90,
      decoration: BoxDecoration(
        color: Theme.of(context).accentColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(icon,color: Colors.white,size: 28,),
          Text(title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 15),),
          Container(
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(5)
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:3.0,vertical: 2.0),
              child: Text(' ${subTitle} ',
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 12),),
            ),
          )
        ],
      ),
    ),
  );
}