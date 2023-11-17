
import 'package:ecommercew/Widget/Constants.dart';
import 'package:ecommercew/screen/Car.dart';
import 'package:ecommercew/screen/Laptop.dart';
import 'package:ecommercew/screen/Mobiles.dart';
import 'package:ecommercew/screen/camera.dart';
import 'package:ecommercew/screen/headphones.dart';
import 'package:ecommercew/screen/login.dart';
import 'package:ecommercew/screen/watch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class custemcategory extends StatelessWidget {
  final IconData iconname;
 final String textname;


 const custemcategory({super.key,
   required this.iconname,
   required this.textname,
   });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          child: Container(
              child: Icon(iconname,size: 24,color: kMainColor,),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color:kSecondColor,
              )
          ),
          onTap:(){
            if(iconname==Icons.headphones){
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => headphone()));
            }
            else if(iconname==Icons.watch){
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => watch()));
            }
           else if(iconname==Icons.laptop){
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Laptop()));
            }
           else if(iconname==Icons.car_rental){
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Car()));
            }
           else if(iconname==Icons.mobile_screen_share){
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Mobiles()));
            }
           else if(iconname==Icons.camera_alt_outlined){
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Camera()));
            }


          },
        ),
         Text(textname,
           style: TextStyle(fontSize: 15,
               fontFamily: "FjallaOne",color: kSecondColor),
        )
      ],
    );
  }
}