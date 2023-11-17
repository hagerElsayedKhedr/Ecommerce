import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Widget/CustemDrawer.dart';
import '../Widget/CustemSnakeNavigationBar.dart';
import 'cart.dart';

class itemDetails extends StatefulWidget {
  final data;
  const itemDetails({super.key, this.data});
  @override
  State<itemDetails> createState() => _itemDetailsState();
}

class _itemDetailsState extends State<itemDetails> {
  String typecolor="black";
  int selectitem=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("EcommerceW",style: TextStyle(fontFamily: "BlackOpsOne")),
          ],
        ),
      ),
      endDrawer: CustemDrawer(),
      body: ListView(
        shrinkWrap: true,
        children: [
          Image.asset( widget.data["image"]),
          Container(
            child:
            Text(widget.data["titlt"],
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 30,fontFamily: "BlackOpsOne"),),),
          Text(widget.data["subtitle"],
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 15),),
          Text(widget.data["text"],
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 20,color: Colors.red),),
         Row(
           children: [
             Radio(
                 activeColor: Colors.red,
                 value: "white",
                 groupValue: typecolor,
                 onChanged: (val){
                   setState(() {
                     typecolor=val!;
                   });
                 }
             ),
             Text("black"),
             Radio(
                 activeColor: Colors.red,
                 value: "black",
                 groupValue: typecolor,
                 onChanged: (val){
                   setState(() {
                     typecolor=val!;
                   });
                 }
             ),
             Text("white"),
           ],
         ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 90,vertical: 20),
            child: MaterialButton(onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=>const cart()));
            },
              child: const Text("Add To Cart",
                style: TextStyle(fontSize: 18,fontFamily: "BlackOpsOne"),),
              color:Colors.black,
              textColor: Colors.white,
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustemSnakeNavigationBar(),
    );
  }


}
