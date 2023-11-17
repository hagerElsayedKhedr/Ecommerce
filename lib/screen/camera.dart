import 'package:ecommercew/Widget/CustemGridView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Widget/CustemPopupMenuButton.dart';
import '../Widget/CustemSnakeNavigationBar.dart';

class Camera extends StatefulWidget {
  const Camera({super.key});

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  List items = [
    {
      "image": "images/camera1.png",
      "titlt": "Camera",
      "subtitle": "Camera orignal13",
      "text": "20\$"
    },
    {
      "image": "images/camer2.png",
      "titlt": "Camera",
      "subtitle": "Camera orignal11",
      "text": "80\$"
    },
    {
      "image": "images/camera3.png",
      "titlt": "Camera",
      "subtitle": "Camera orignal12",
      "text": "10\$"
    },
  ];

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
        actions: [
          CustemPopupMenuButton(),
        ],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(child: CustemGridView(items: items)),
        ),
      ),
      bottomNavigationBar: CustemSnakeNavigationBar(),
    );
  }
}
