import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task3_3lir/widgets/naficotion_icon.dart';
import 'package:task3_3lir/widgets/rounded_date.dart';
import 'package:task3_3lir/widgets/today_date.dart';

class DoctorScreen extends StatefulWidget {
  @override
  _DoctorScreenState createState() => _DoctorScreenState();
}

class _DoctorScreenState extends State<DoctorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap:()=> Navigator.pop(context),
            child: Icon(Icons.arrow_back)),
        actions: [
         Padding(
           padding: const EdgeInsets.only(right:8.0),
           child: NotificotionIcon(context),
         ),
        ],
        elevation: 0,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height ,
        width: MediaQuery.of(context).size.width,
        color: Color(0xffF5F5F5),
          child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height *0.2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 2,
                    left: 20,
                    child: Row(
                      children: [
                        Container(
                          height: 120,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.grey[200].withOpacity(1),
                            image: DecorationImage(image: AssetImage('images/doctor1.png')),
                          ),
                        ),
                        SizedBox(width: 15,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Dr. Fred Mask',style: TextStyle(
                                fontSize: 22,fontWeight: FontWeight.bold,color:Colors.white),),
                            SizedBox(height: 12,),
                            Text('Heart Surgen',style: TextStyle(
                                fontSize: 13,color:Colors.white,fontWeight: FontWeight.w500),),
                            SizedBox(height: 8,),
                            Row(
                              children: [
                                Icon(Icons.star,color: Colors.amber,size: 18,),
                                SizedBox(width: 5,),
                                Icon(Icons.star,color: Colors.amber,size: 18,),
                                SizedBox(width: 5,),
                                Icon(Icons.star,color: Colors.amber,size: 18,),
                                SizedBox(width: 5,),
                                Icon(Icons.star,color: Colors.amber,size: 18,),
                                SizedBox(width: 5,),
                                Icon(FontAwesomeIcons.solidStarHalf,color: Colors.amber,size: 14,),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height *0.2-25,
              right: 30,
              child: Container(
                height: 50,
                width: 45,
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  elevation: 6,
                    color: Colors.white,
                    child: Icon(Icons.location_on,color: Colors.amber,size: 30,)),
              ),
            ),
            Positioned(
                top: MediaQuery.of(context).size.height *0.24,
                left: 25,
                right: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('April 2020',style: TextStyle(
                        fontSize: 20,fontWeight: FontWeight.bold,color: Theme.of(context).canvasColor),),
                    SizedBox(height: 12),
                    Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: materialDate.length,
                          itemBuilder: (ctx,index){
                          return RoundedDate(
                              context,materialDate[index]['day'],
                            materialDate[index]['month'],
                            materialDate[index]['textC'],
                            materialDate[index]['bgC'],);
                          }),
                    ),
                    SizedBox(height: 25,),
                    Text('Morning',style: TextStyle(
                        fontSize: 21,fontWeight: FontWeight.bold,color: Theme.of(context).canvasColor),),
                    Padding(
                      padding: const EdgeInsets.only(right:25.0,top: 8),
                      child: Container(
                        height: 95,
                        width: MediaQuery.of(context).size.width,
                        child:GridView.builder(
                          itemCount: materialDateDay.length,
                            physics: NeverScrollableScrollPhysics(),
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 5, childAspectRatio: 2.3),
                            itemBuilder: (BuildContext context, index) {
                              return TodayDate(
                                  materialDateDay[index]['time'],
                                  materialDateDay[index]['textC'],
                                  materialDateDay[index]['bgC'],
                              );
                            }),
                      ),
                    ),
                    SizedBox(height: 25,),
                    Text('Evening',style: TextStyle(
                        fontSize: 21,fontWeight: FontWeight.bold,color: Theme.of(context).canvasColor),),
                    Padding(
                      padding: const EdgeInsets.only(right:25.0,top: 8),
                      child: Container(
                        height: 90,
                        width: MediaQuery.of(context).size.width,
                        child:GridView.builder(
                            itemCount: 6,
                            physics: NeverScrollableScrollPhysics(),
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 5, childAspectRatio: 2.3),
                            itemBuilder: (BuildContext context, index) {
                              return TodayDate(
                                materialDateDay[index]['time'],
                                index==1? Colors.black45:materialDateDay[index]['textC'],
                                index==1? Colors.white:  materialDateDay[index]['bgC'],
                              );
                            }),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:25.0,right: 25),
                      child: Material(
                        borderRadius: BorderRadius.circular(10),
                        color: Theme.of(context).accentColor,
                        child: MaterialButton(
                          minWidth: double.infinity,
                            height: 25,
                            onPressed: (){},
                          child: Text('Make An Appointment',
                            style: TextStyle(color: Colors.white,fontSize: 18),),
                        ),
                      ),
                    )
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}
