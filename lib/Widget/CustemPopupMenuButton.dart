
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../screen/Offers.dart';

class CustemPopupMenuButton extends StatelessWidget {
  const CustemPopupMenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        icon: Icon(Icons.menu_open),
        onSelected: (val){
          if(val=="offers1"){
            Navigator.of(context).push(
                MaterialPageRoute(builder:
                    (context)=>Offers()));
          }
        },
        itemBuilder: (context)=>
        [
          PopupMenuItem(
            child: Text("offers"),
            value: "offers1",
          ),

        ]

    );
  }
}
