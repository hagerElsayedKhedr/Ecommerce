
import 'package:ecommercew/screen/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import '../HomePage.dart';
import '../screen/cart.dart';
import 'Constants.dart';

class CustemSnakeNavigationBar extends StatefulWidget {
  const CustemSnakeNavigationBar({super.key});

  @override
  State<CustemSnakeNavigationBar> createState() => _CustemSnakeNavigationBarState();
}

class _CustemSnakeNavigationBarState extends State<CustemSnakeNavigationBar> {
  final BorderRadius _borderRadius = const BorderRadius.only(
    topLeft: Radius.circular(25),
    topRight: Radius.circular(25),
  );

  ShapeBorder? bottomBarShape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
  );
  SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.floating;
  EdgeInsets padding = const EdgeInsets.all(12);
  int _SelectedItemPosition=2;
  SnakeShape snakeShape = SnakeShape.circle;
  bool showSelectedLabels = false;
  bool showUnselectedLabels = false;
  Color selectedColor = kSecondColor;
  Color unselectedColor = kBackground;
  Gradient selectedGradient =
  const LinearGradient(colors: [Colors.red, Colors.amber]);
  Gradient unselectedGradient =
  const LinearGradient(colors: [Colors.red, Colors.blueGrey]);
  Color? containerColor;
  List<Color> containerColors = [
    const Color(0xFFFDE1D7),
    const Color(0xFFE4EDF5),
    const Color(0xFFE7EEED),
    const Color(0xFFF4E4CE),
  ];

  @override
  Widget build(BuildContext context) {
    int _selectedItemPosition = 0;
    return SnakeNavigationBar.color(
      behaviour: snakeBarStyle,
      snakeShape: snakeShape,
      shape: bottomBarShape,
      padding: padding,
      snakeViewColor: selectedColor,
      selectedItemColor:
      snakeShape == SnakeShape.indicator ? selectedColor : null,
      unselectedItemColor: kIconColor,

      showUnselectedLabels: showUnselectedLabels,
      showSelectedLabels: showSelectedLabels,
      selectedLabelStyle: TextStyle(fontSize: 14),
      unselectedLabelStyle: TextStyle(fontSize: 10),
      currentIndex: _selectedItemPosition,
      onTap: (val){
        setState(() {
          _selectedItemPosition=val;
          if(val==0){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=>Homepage()));
          }
          else if(val==1){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=>cart()));

          }
          else if(val==2){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=>profile()));
          }
          _selectedItemPosition = 0;
        });
      },
      backgroundColor: kMainColor,

      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 28,
            ),
            label: "*"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.add_shopping_cart_outlined,
              size: 28,
            ),
            label: "*"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 28,
            ),
            label: "*"),
      ],
    );;
  }
}
