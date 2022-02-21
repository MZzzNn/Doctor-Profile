import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:task3_3lir/date_model.dart';
import 'package:task3_3lir/doctor_model.dart';
import 'package:task3_3lir/widgets/naficotion_icon.dart';
import 'package:task3_3lir/widgets/rounded_date.dart';
import 'package:task3_3lir/widgets/today_date.dart';



class DoctorScreen extends StatefulWidget {
  final DoctorModel doctorData;
  const DoctorScreen({Key? key,required this.doctorData}) : super(key: key);
  @override
  _DoctorScreenState createState() => _DoctorScreenState();
}

class _DoctorScreenState extends State<DoctorScreen> {

  var month= DateFormat.MMMM().format(DateTime.now()); // 2 -->feb

  var year= DateTime.now().year;

  int today= DateTime.now().day;
  int lastDayOfMoth = DateTime(DateTime.now().year, DateTime.now().month + 1, 0).day;

  //19  - 28
  List<DateOfDayModel> daysData = [];

  void initializeDate(){
    for(int day =today; day<=lastDayOfMoth; day++)
      daysData.add(DateOfDayModel(
          daysNum: day ,
          dayStr:  (DateFormat.E().format(   DateTime(DateTime.now().year, DateTime.now().month, day))   ).toString())
      );
  }

  int secCurrentDay = 0;

  late Size size;

@override
  void initState() {
    initializeDate();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
  print(MediaQuery.of(context).size.height*0.03);
  size =MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap:()=> Navigator.pop(context),
            child: Icon(Icons.arrow_back)),
        actions: [
         Padding(
           padding: const EdgeInsets.only(right:8.0),
           child: notificationIcon(context),
         ),
        ],
        elevation: 0,
      ),
      body: Container(
        height: size.height ,
        width: size.width,
        color: Color(0xffF5F5F5),
          child: Stack(
            alignment: Alignment.topLeft,
            children: [

            ///avatar profile card
            Container(
              height: size.height *0.2,
              width: size.width,
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 120,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.grey[200]!.withOpacity(1),
                      image: DecorationImage(image: AssetImage(widget.doctorData.image)),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('${widget.doctorData.name}',style: TextStyle(
                          fontSize: 22,fontWeight: FontWeight.bold,color:Colors.white),),
                      SizedBox(height: 10,),
                      Text('${widget.doctorData.specialization}',style: TextStyle(
                          fontSize: 13,color:Colors.grey[300],fontWeight: FontWeight.w500),),
                      SizedBox(height: 8,),


                      Row(
                        children: [


                          completeStar(widget.doctorData.stars),

                          halfStar(widget.doctorData.stars),

                        ],
                      ),

                    ],
                  ),
                ],
              )
            ),

            ///location card
            Positioned(
              top: size.height *0.2-25,
              right: 30,
              child: locationCard(),
            ),

            ///Date card
            Positioned(
                top: size.height *0.23,
                left: 25,
                right: 1,
                child: Container(
                  height: size.height *0.64,
                  width: size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('$month $year',style: TextStyle(
                          fontSize: 20,fontWeight: FontWeight.bold,color: Theme.of(context).canvasColor),),
                      SizedBox(height: 12),
                      Container(
                        height: size.height*0.12,
                        width: size.width,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          itemCount: daysData.length,
                            itemBuilder: (ctx,index){
                            return InkWell(
                                onTap: (){
                                  setState(() {
                                    secCurrentDay=index;
                                  });
                                },
                                child: RoundedDateCard(dateOfDayModel: daysData[index], active: secCurrentDay ==index,));
                            }),
                      ),
                      SizedBox(height: size.height*0.025,),


                      Text('Morning',style: TextStyle(
                          fontSize: 21,fontWeight: FontWeight.bold,color: Theme.of(context).canvasColor),),
                      Padding(
                        padding: const EdgeInsets.only(right:25.0,top: 8),
                        child: GridView.builder(
                          itemCount: materialDateDay.length,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),

                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3, crossAxisSpacing: 3, mainAxisSpacing: 3,mainAxisExtent: size.height *0.06,
                            ),
                            itemBuilder: (BuildContext context, index) {
                              return TodayDate(
                                  materialDateDay[index]['time'],
                                  materialDateDay[index]['textC'],
                                  materialDateDay[index]['bgC'],
                              );
                            }),
                      ),


                      SizedBox(height: size.height*0.02,),


                      Text('Evening',style: TextStyle(
                          fontSize: 21,fontWeight: FontWeight.bold,color: Theme.of(context).canvasColor),),
                      Padding(
                        padding: const EdgeInsets.only(right:25.0,top: 8),
                        child: GridView.builder(
                            itemCount: 6,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3, crossAxisSpacing: 3, mainAxisSpacing: 3,mainAxisExtent: size.height *0.06,
                            ),
                            itemBuilder: (BuildContext context, index) {
                              return TodayDate(
                                materialDateDay[index]['time'],
                                index==1? Colors.black45:materialDateDay[index]['textC'],
                                index==1? Colors.white:  materialDateDay[index]['bgC'],
                              );
                            }),
                      ),


                      Spacer(),

                      Padding(
                        padding: const EdgeInsets.only(right: 25.0),
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
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}

Widget locationCard()=>Container(
  height: 50,
  width: 45,
  child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      elevation: 6,
      color: Colors.white,
      child: Icon(Icons.location_on,color: Colors.amber,size: 30,)),
);

Widget completeStar(double numOfStars)=>Row(
    children: List.generate(numOfStars.toInt(), (index) =>Padding(
      padding: const EdgeInsets.only(right: 5.0),
      child: Icon(Icons.star,color: Colors.amber,size: 18,),
    ))
);

Widget halfStar(double numOfStars)=>Row(
    children:List.generate(numOfStars.round()-numOfStars.floor(), (index) =>Padding(
        padding: const EdgeInsets.only(right: 5.0),
        child: Icon(FontAwesomeIcons.solidStarHalf,color: Colors.amber,size: 14,)
    ))
);