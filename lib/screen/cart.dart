
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Widget/CustemPopupMenuButton.dart';
import '../Widget/CustemSnakeNavigationBar.dart';


class cart extends StatefulWidget {
  const cart({super.key});

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
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
      body: SingleChildScrollView(
        child: Container(
        ),
      ),
      bottomNavigationBar: CustemSnakeNavigationBar(),
    );
  }
}
