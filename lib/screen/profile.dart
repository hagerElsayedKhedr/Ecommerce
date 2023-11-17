import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Widget/CustemSnakeNavigationBar.dart';
import '../Widget/Constants.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kMainColor,
      appBar: AppBar(title: Text("EcommerceW",),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: ListView(
            shrinkWrap: true,
            children: [
              Center(
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("images/shopping.png"),
                        backgroundColor: kBackground,
                        radius: 100,
                      ),
                    ),
                    Positioned(
                      child: InkWell(
                        child:
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                backgroundColor: kSecondColor,
                                radius: 25,
                                child: Icon(
                                  Icons.camera_alt,
                                  size: 30,
                                  color: kMainColor,
                                )),),
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return Container(
                                  height: height * 0.16,
                                  child: ListView(
                                    children: [
                                      Text(
                                        "Please Choose Image",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineLarge,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      InkWell(
                                        child: Row(
                                          children: [
                                            Icon(Icons.image),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "From Gallary",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineMedium,
                                            ),
                                          ],
                                        ),
                                        onTap: () {},
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      InkWell(
                                        child: Row(
                                          children: [
                                            Icon(Icons.camera_alt),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "From Camera",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineMedium,
                                            ),
                                          ],
                                        ),
                                        onTap: () {},
                                      ),
                                    ],
                                  ),
                                );
                              });
                        },
                      ),
                      bottom: 0,
                      right: 20,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: kBackground,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "Your Name :Hager Elsayed",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                color: kBackground,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "Your Email :hagerelsayed1141988@gmail.com",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustemSnakeNavigationBar(),
    );
  }
}
