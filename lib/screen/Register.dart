import 'package:ecommercew/HomePage.dart';
import 'package:ecommercew/Widget/Constants.dart';
import 'package:ecommercew/Widget/mainImage.dart';
import 'package:ecommercew/screen/login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Widget/CustemTextFormField.dart';

class Register extends StatefulWidget {
   static String id = "Register";

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  late final String n;
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();
 TextEditingController name = TextEditingController();
  TextEditingController Email = TextEditingController();
  TextEditingController Password = TextEditingController();
  TextEditingController Passwordr = TextEditingController();

  @override
  void initState() {
    super.initState();
    getpref();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
    resizeToAvoidBottomInset: true,
        backgroundColor: kSecondColor,
        body: Form(
          key: globalKey,
          child: ListView(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: height * 0.3,
                        child: MainImage(),
                      ),
                      CustemTextfeild(
                        hint: "Enter Your Name",
                        icon: Icons.person,
                        keyboardtype: TextInputType.name,
                        labelText: 'Name',
                        controller: name,

                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      CustemTextfeild(
                        hint: "Enter Your Email",
                        icon: Icons.email_outlined,
                        keyboardtype: TextInputType.emailAddress,
                        labelText: 'Email',
                        controller: Email,
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      CustemTextfeild(
                        hint: "Enter Your Password",
                        icon: Icons.password,
                        keyboardtype: TextInputType.visiblePassword,
                        suffixicon: Icons.remove_red_eye_outlined,
                        labelText: 'Password',
                        controller: Password,
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      CustemTextfeild(
                        hint: "Enter Your Password again",
                        icon: Icons.password,
                        keyboardtype: TextInputType.visiblePassword,
                        suffixicon: Icons.remove_red_eye_outlined,
                        labelText: 'Password',
                        controller: Passwordr,

                      ),
                      SizedBox(
                        height: height * 0.020,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black),
                        child: TextButton(
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          onPressed: () {
                            if (globalKey.currentState!.validate()) {
                              globalKey.currentState!.save();

                              setpref();
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Homepage()));
                            }
                            ;
                          },
                        ),
                      ),
                      SizedBox(
                        height: height * 0.020,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "You have an account",
                            style: TextStyle(color: kIconColor, fontSize: 16),
                          ),
                          SizedBox(
                            width: width * 0.020,
                          ),
                          TextButton(
                            child: const Text(
                              "Login",
                              style: TextStyle(color: Colors.black),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Login()));
                            },
                          ),
                        ],
                      ),
                      TextButton(
                        child: const Text(
                          "Not Now",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Homepage()));
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));

  }
  setpref()async{
    final SharedPreferences prefsE = await SharedPreferences.getInstance();
    final SharedPreferences prefsP = await SharedPreferences.getInstance();
    final SharedPreferences prefsN = await SharedPreferences.getInstance();
    await prefsE.setString('email', Email.text);
    await prefsP.setString('password', Password.text);
    await prefsN.setString('name', name.text);
  }

  getpref()async{
    final SharedPreferences prefsE = await SharedPreferences.getInstance();
    final SharedPreferences prefsP = await SharedPreferences.getInstance();
    final SharedPreferences prefsN = await SharedPreferences.getInstance();
    final String? actione = prefsE.getString('email');
    final String? actionp = prefsP.getString('password');
    final String? actionn = prefsN.getString('name');
    if(actione==null&&actionp==null&&actionn==null){
    }
    else{
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Homepage()));
    }
  }
}
