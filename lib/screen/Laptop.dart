
import 'package:ecommercew/Widget/CustemPopupMenuButton.dart';
import 'package:ecommercew/Widget/CustemSnakeNavigationBar.dart';
import 'package:ecommercew/Widget/CustemGridView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Laptop extends StatefulWidget {
  const Laptop({super.key});

  @override
  State<Laptop> createState() => _LaptopState();
}

class _LaptopState extends State<Laptop> {
  List items = [
    {
      "image": "images/laptob.png",
      "titlt": "laptop",
      "subtitle": "Laptop orignal13",
      "text": "8\$"
    },
    {
      "image": "images/laptop1.png",
      "titlt": "laptop",
      "subtitle": "Laptop orignal11",
      "text": "5\$"
    },
    {
      "image": "images/laptop2.png",
      "titlt": "laptop",
      "subtitle": "Laptop orignal12",
      "text": "2\$"
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
