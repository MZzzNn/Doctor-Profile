import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:task3_3lir/screens/docor_screen.dart';
import '../widgets/naficotion_icon.dart';
import '../widgets/roundedCad.dart';
import '../widgets/build_texField.dart';
import '../widgets/roundedContainr.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor:Theme.of(context).primaryColor,
        actions: [
          NotificotionIcon(context),
          Padding(
            padding: const EdgeInsets.only(right:20.0,top: 10,bottom: 10),
            child: Container(
              height: 20,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(image:  AssetImage('images/actor.jpg'),fit: BoxFit.cover,)
              ),
               ),
          ),
        ],
        elevation: 0,
      ),
      body: Container(
        color: Theme.of(context).primaryColor,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xffF5F5F5),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(35),
                  topLeft:  Radius.circular(35),
                )
              ),
            ),
            Positioned(
              top: 25,
              left: 25,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('Hi, Olivia',style: TextStyle(
                  color: Theme.of(context).canvasColor,
                  fontSize: 25,
                  fontWeight: FontWeight.w600
                ),),
                  SizedBox(height: 5,),
                  Text('Welcome Back',style: TextStyle(
                      color: Theme.of(context).canvasColor,
                      fontSize: 30,
                      fontWeight: FontWeight.w800
                  ),),
                ],
              ),
            ),
            Positioned(
                top: 110,
                left: 25,
                right: 25,
                child: textField(context)
            ),
            Positioned(
               top: 185,
                left: 25,
                right: 25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Category',style: TextStyle(
                        fontSize: 20,fontWeight: FontWeight.bold,color: Theme.of(context).canvasColor),),
                    Text('See all',style: TextStyle(
                        fontSize: 16,color: Colors.grey[600],fontWeight: FontWeight.w600),),
                  ],
                ),
            ),

            Positioned(
              top: 220,
              left: 25,
              child: Container(
                height: 120,
                width:MediaQuery.of(context).size.width,
                child:ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: materialRounded.length,
                  itemBuilder: (ctx,index){
                    return RoundedContainer(
                      context,materialRounded[index]['title'],
                      materialRounded[index]['icon'],
                      materialRounded[index]['subTitle'],
                    );
                  }),
              ),
            ),
            Positioned(
              top: 363,
              left: 25,
              right: 25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Top rate',style: TextStyle(
                      fontSize: 20,fontWeight: FontWeight.bold,color: Theme.of(context).canvasColor),),
                  Text('See all',style: TextStyle(
                      fontSize: 16,color: Colors.grey[600],fontWeight: FontWeight.w600),),
                ],
              ),
            ),
            Positioned(
                top: 390,
                left: 25,
                right: 25,
                child: Container(
                  height: 300,
                  width:MediaQuery.of(context).size.width,
                  child:ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: materialCard.length,
                      itemBuilder: (ctx,index){
                        return InkWell(
                          onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (_)=>DoctorScreen())),
                          child: RoundedCard(
                            context,materialCard[index]['title'],
                            materialCard[index]['subTitle'],
                            materialCard[index]['star'],
                            materialCard[index]['km'],
                            materialCard[index]['image'],
                          ),
                        );
                      }),
                ),
            ),



          ],
        ),
      ),

    );
  }
}
