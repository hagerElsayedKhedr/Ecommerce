import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Widget/CustemSnakeNavigationBar.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Text(
              " EcommerceW is an application whose goal is to Buy anything ",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustemSnakeNavigationBar(),
    );
  }
}
