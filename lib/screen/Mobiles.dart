
import 'package:ecommercew/Widget/CustemPopupMenuButton.dart';
import 'package:ecommercew/Widget/CustemSnakeNavigationBar.dart';
import 'package:ecommercew/Widget/CustemGridView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Offers.dart';

class Mobiles extends StatefulWidget {
  const Mobiles({super.key});

  @override
  State<Mobiles> createState() => _MobilesState();
}

class _MobilesState extends State<Mobiles> {
  List items = [
    {
      "image": "images/mobile1.png",
      "titlt": "Mobile",
      "subtitle": "Mobile orignal13",
      "text": "81\$"
    },
    {
      "image": "images/mobile2.png",
      "titlt": "Mobile",
      "subtitle": "Mobile orignal11",
      "text": "50\$"
    },
    {
      "image": "images/mobile3.png",
      "titlt": "Mobile",
      "subtitle": "Mobile orignal12",
      "text": "29\$"
    },
  ];

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("EcommerceW",style: TextStyle(fontFamily: "BlackOpsOne")),
            ],
          ),
          actions: [
           CustemPopupMenuButton(),
          ],
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(child: CustemGridView(items: items )),
          ),
        ),
        bottomNavigationBar: CustemSnakeNavigationBar()
    );
  }


}
