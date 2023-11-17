
import 'package:ecommercew/Widget/CustemGridView.dart';
import 'package:ecommercew/Widget/CustemPopupMenuButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Widget/CustemSnakeNavigationBar.dart';


class Car extends StatefulWidget {
  const Car({super.key});

  @override
  State<Car> createState() => _CarState();
}

class _CarState extends State<Car> {
  List items = [
    {
      "image": "images/car.png",
      "titlt": "Car",
      "subtitle": "Car orignal13",
      "text": "200\$"
    },
    {
      "image": "images/car1.png",
      "titlt": "Car",
      "subtitle": "Car orignal11",
      "text": "800\$"
    },
    {
      "image": "images/car2.png",
      "titlt": "Car",
      "subtitle": "Car orignal12",
      "text": "120\$"
    },
    {
      "image": "images/car3.png",
      "titlt": "Car",
      "subtitle": "Car orignal13",
      "text": "200\$"
    },
    {
      "image": "images/car4.png",
      "titlt": "Car",
      "subtitle": "Car orignal11",
      "text": "800\$"
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
