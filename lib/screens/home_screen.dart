import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:task3_3lir/screens/docor_screen.dart';
import '../category_model.dart';
import '../doctor_model.dart';
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
        actions: [
          notificationIcon(context),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [


                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hi, Olivia',style: TextStyle(
                            color: Theme.of(context).canvasColor,
                            fontSize: 20,
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

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: CustomTextFiled()
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
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

                  Container(
                    height: MediaQuery.of(context).size.width*0.3,//120
                    width:MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.only(left: 20,),
                    child:ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: categoriesData.length,
                        itemBuilder: (ctx,index){
                          return CategoryCard(categoryData: categoriesData[index],);
                        }),
                  ),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
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

                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child:ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: doctorsData.length,
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (ctx,index){
                            return InkWell(
                              onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (_)=>DoctorScreen(doctorData: doctorsData[index],))),
                              child: RoundedCard(doctorData: doctorsData[index]),
                            );
                          }),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
