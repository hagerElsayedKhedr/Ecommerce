
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Widget/CustemSnakeNavigationBar.dart';



class Offers extends StatefulWidget {
  const Offers({super.key});

  @override
  State<Offers> createState() => _OffersState();
}

class _OffersState extends State<Offers> {
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

        ],
      ),
      body: Container(

      ),
      bottomNavigationBar: CustemSnakeNavigationBar(),
    );
  }
}
