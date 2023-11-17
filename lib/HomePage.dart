import 'package:ecommercew/Widget/Constants.dart';
import 'package:ecommercew/Widget/CustemDrawer.dart';
import 'package:ecommercew/Widget/custemcategory.dart';
import 'package:ecommercew/screen/Register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Widget/CustemGridView.dart';
import 'Widget/CustemSnakeNavigationBar.dart';
import 'Widget/SearchDelegate.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List items = [
    {
      "image": "images/headphone.png",
      "titlt": "Headphone",
      "subtitle": "Headphone orignal13",
      "text": "23\$"
    },
    {
      "image": "images/watch.png",
      "titlt": "Watch",
      "subtitle": "smartWatch",
      "text": "20\$"
    },
    {
      "image": "images/laptop2.png",
      "titlt": "laptop",
      "subtitle": "Hp Laptop",
      "text": "280\$"
    },
    {
      "image": "images/car4.png",
      "titlt": "Car",
      "subtitle": "car mars",
      "text": "280\$"
    },
    {
      "image": "images/mobile1.png",
      "titlt": "Mobiles",
      "subtitle": "Mobiles orignal13",
      "text": "81\$"
    },
    {
      "image": "images/headphone.png",
      "titlt": "Headphone",
      "subtitle": "Headphone orignal13",
      "text": "23\$"
    },
  ];
  @override
  Widget build(BuildContext context) {
    
    double height = MediaQuery.of(context).size.height;
    
    return Scaffold(
      backgroundColor: kMainColor,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
           AwesomD();
          },
          child: const Stack(children: [
            Padding(
              padding: EdgeInsets.only(top: 5, left: 8),
              child: CircleAvatar(
                backgroundImage: AssetImage("images/shopping.png"),
                backgroundColor: kMainColor,
                radius: 16,
              ),
            ),
            Positioned(
                bottom: 6,
                left: 15,
                child: Text(
                  "Log out",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                      fontFamily: "FjallaOne",
                      color: kMainColor),
                ))
          ]),
        ),
        title: Row(
          children: [
            Text(
              "EcommerceW",
            ),
            SizedBox(
              width: 5,
            ),
            IconButton(
                onPressed: () {
                  showSearch(context: context, delegate: custemSearch());
                },
                icon: Icon(Icons.search),
                color: kMainColor),
          ],
        ),
      ),
      endDrawer: CustemDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(20),
          child: Container(
            child: ListView(
              shrinkWrap: true,
              children: [
                Container(
                  color: kBackground,
                  child: Text(
                    "Categories",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: height * 0.12,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: const [
                        custemcategory(
                            iconname: Icons.headphones, textname: "Headphone"),
                        SizedBox(
                          width: 20,
                        ),
                        custemcategory(iconname: Icons.watch, textname: "Watch"),
                        SizedBox(
                          width: 20,
                        ),
                        custemcategory(
                            iconname: Icons.laptop, textname: "Laptop"),
                        SizedBox(
                          width: 20,
                        ),
                        custemcategory(
                            iconname: Icons.car_rental, textname: "Car"),
                        SizedBox(
                          width: 20,
                        ),
                        custemcategory(
                            iconname: Icons.mobile_screen_share,
                            textname: "Mobiles"),
                        SizedBox(
                          width: 20,
                        ),
                        custemcategory(
                          iconname: Icons.camera_alt_outlined,
                          textname: "Camera",
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: kBackground,
                  child: Text(
                    "Best Selling",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ),
                CustemGridView(items: items)
              ],
            ),
          ),

      ),
      bottomNavigationBar: CustemSnakeNavigationBar(),
    );
  }

  AwesomD(){
    AwesomeDialog(
      btnCancelColor: kSecondColor,
      btnOkColor: kMainColor,
      closeIcon: Icon(Icons.close_sharp),
      descTextStyle:  Theme.of(context).textTheme.headlineMedium,
      context: context,
      dialogType: DialogType.question,
      borderSide: const BorderSide(
        color: kSecondColor,
        width: 2,
      ),
      width: 280,
      buttonsBorderRadius: const BorderRadius.all(
        Radius.circular(20),
      ),
      dismissOnTouchOutside: true,
      dismissOnBackKeyPress: false,
      onDismissCallback: (type) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Dismissed by $type'),
          ),
        );
      },
      headerAnimationLoop: true,
      animType: AnimType.bottomSlide,
      desc: 'Are You Want To Log Out?',
      showCloseIcon: true,
      btnCancelOnPress: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Homepage()));
      },
      btnOkOnPress: () {
        setpref();
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Register()));
      },
    ).show();
  }
  setpref()async{
    final SharedPreferences prefsE = await SharedPreferences.getInstance();
    final SharedPreferences prefsP = await SharedPreferences.getInstance();
    final SharedPreferences prefsN = await SharedPreferences.getInstance();
    await prefsE.remove('email');
    await prefsP.remove('password');
    await prefsN.remove('name');
  }
}
