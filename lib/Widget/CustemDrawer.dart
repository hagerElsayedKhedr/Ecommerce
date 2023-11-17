
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screen/AboutUs.dart';
import 'Constants.dart';
import 'mainImage.dart';

class CustemDrawer extends StatefulWidget {
  const CustemDrawer({super.key});

  @override
  State<CustemDrawer> createState() => _CustemDrawerState();
}

class _CustemDrawerState extends State<CustemDrawer> {
  bool state=false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          shrinkWrap: true,
          children: [
            const Center(child: MainImage()),
            Container(
                margin: const EdgeInsets.only(top: 20, bottom: 5),
                color: Colors.black12,
                child: const Text(
                  "Hello ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: kSecondColor),
                )),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 5),
              color: kBackground,
              child: InkWell(
                child: Row(
                  children: [Icon(Icons.info,color:  kSecondColor,), Text("   About Us",
                    style: TextStyle(color: kSecondColor,fontWeight: FontWeight.bold),)],
                ),
                onTap: () {
                  setState(() {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => AboutUs()));
                  });
                },
              ),
            ),
            Container(
              color: kBackground,
              child: Row(
                children: [
                  Icon(Icons.light_mode,color: kSecondColor),
                  Text("   Dark Mood",style: TextStyle(color: kSecondColor,fontWeight: FontWeight.bold),),
                  Switch(
                    activeColor: kSecondColor,
                    value: AdaptiveTheme.of(context).mode.isDark,
                    onChanged: (value) {
                      if (value) {
                        AdaptiveTheme.of(context).setDark();
                      } else {
                        AdaptiveTheme.of(context).setLight();
                      }
                    },
                  ),
                ],
              ),
            )
          ],
        )
    );
  }
}
