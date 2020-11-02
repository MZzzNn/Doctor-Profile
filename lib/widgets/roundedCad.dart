import 'package:flutter/material.dart';

List<Map<String,dynamic>> materialCard=[
  {
    'image':'images/doctor1.png',
    'title':'Dr. Fred Mask',
    'subTitle':'Heart Surgen',
    'star':'5.9',
    'km':'5.3'
  },
  {
    'image':'images/doctor3.png',
    'title':'Dr. Stella Kane',
    'subTitle':'Bone Specialist',
    'star':'4.7',
    'km':'6.4'
  },
  {
    'image':'images/doctor2.png',
    'title':'Dr. Zac Wolff',
    'subTitle':'Eye Specialist',
    'star':'12.3',
    'km':'7.3'
  },
  {
    'image':'images/doctor4.png',
    'title':'Dr. Fred Mask',
    'subTitle':'Heart Surgen',
    'star':'2.4',
    'km':'4.3'
  }
];
Widget RoundedCard(BuildContext context, String title, String subTitle, String star ,String km,String image){
  return  Padding(
    padding: const EdgeInsets.only(top:4.0),
    child: Container(
      height: 95,
      width: MediaQuery.of(context).size.width,
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  height: 90,
                  width: 60,
                  color: Colors.grey[200].withOpacity(0.5),
                  child: Image(image: AssetImage(image),fit: BoxFit.cover,)),
              SizedBox(width: 5,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  Text(title,style: TextStyle(
                      fontSize: 20,fontWeight: FontWeight.bold,color: Theme.of(context).canvasColor),),
                  SizedBox(height: 9,),
                  Text(subTitle,style: TextStyle(
                      fontSize: 15,color: Colors.black38,fontWeight: FontWeight.w600),),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment:MainAxisAlignment.end,
                    crossAxisAlignment:  CrossAxisAlignment.end,
                    children: [
                      Icon(Icons.star,color: Colors.amber,size: 16,),
                      Text(star,style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600),),
                      SizedBox(width: 3,),
                      Icon(Icons.location_on,color: Colors.amber,size: 16,),
                      Text('${km} km',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600),)
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),

    ),
  );
}