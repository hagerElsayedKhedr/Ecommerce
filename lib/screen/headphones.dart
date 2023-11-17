
import 'package:ecommercew/Widget/CustemGridView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Widget/CustemPopupMenuButton.dart';
import '../Widget/CustemSnakeNavigationBar.dart';


class headphone extends StatefulWidget {
  const headphone({super.key});

  @override
  State<headphone> createState() => _headphoneState();
}

class _headphoneState extends State<headphone> {
  List items = [
    {
      "image": "images/headphone.png",
      "titlt": "Headphone",
      "subtitle": "Headphone orignal13",
      "text": "10\$"
    },
    {
      "image": "images/headphon1.png",
      "titlt": "Headphone1",
      "subtitle": "Headphone orignal11",
      "text": "8\$"
    },
    {
      "image": "images/headphone2.jpg",
      "titlt": "Headphone2",
      "subtitle": "Headphone orignal12",
      "text": "12\$"
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
      bottomNavigationBar: CustemSnakeNavigationBar(),
    );
  }
}
