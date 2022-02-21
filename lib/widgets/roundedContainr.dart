import 'package:flutter/material.dart';
import 'package:task3_3lir/category_model.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel categoryData;
  const CategoryCard({Key? key,required this.categoryData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
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
            Icon(categoryData.icon,color: Colors.white,size: 28,),
            Text(categoryData.category,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 15),),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:3.0,vertical: 2.0),
                child: Text(' ${categoryData.numOfDoctors} Doctors ',
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 12),),
              ),
            )
          ],
        ),
      ),
    );
  }
}