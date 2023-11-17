
import 'package:ecommercew/Widget/CustemGridView.dart';
import 'package:ecommercew/Widget/CustemPopupMenuButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Widget/CustemSnakeNavigationBar.dart';

class watch extends StatefulWidget {
  const watch({super.key});

  @override
  State<watch> createState() => _watchState();
}

class _watchState extends State<watch> {
  List items = [
    {
      "image": "images/watch.png",
      "titlt": "Watch",
      "subtitle": "Watch orignal13",
      "text": "2\$"
    },
    {
      "image": "images/watch1.png",
      "titlt": "Watch",
      "subtitle": "Watch orignal11",
      "text": "8\$"
    },
    {
      "image": "images/watch2.png",
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
