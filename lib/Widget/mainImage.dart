
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainImage extends StatelessWidget {
  const MainImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image(image:  AssetImage("images/shopping.png"));
  }
}
