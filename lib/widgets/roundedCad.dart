import 'package:flutter/material.dart';
import 'package:task3_3lir/doctor_model.dart';



class RoundedCard extends StatelessWidget {
  final DoctorModel doctorData;
  RoundedCard({required this.doctorData});
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                    color: Colors.grey[200]!.withOpacity(0.5),
                    child: Image(image: AssetImage(doctorData.image),fit: BoxFit.cover,)),
                SizedBox(width: 5,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,),
                    Text(doctorData.name,style: TextStyle(
                        fontSize: 20,fontWeight: FontWeight.bold,color: Theme.of(context).canvasColor),),
                    SizedBox(height: 9,),
                    Text(doctorData.specialization,style: TextStyle(
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
                        Text(doctorData.stars.toString(),style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600),),
                        SizedBox(width: 3,),
                        Icon(Icons.location_on,color: Colors.amber,size: 16,),
                        Text('${doctorData.km} km',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600),)
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
}