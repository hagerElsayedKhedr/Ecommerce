import 'package:ecommercew/HomePage.dart';
import 'package:ecommercew/Widget/Constants.dart';
import 'package:ecommercew/Widget/mainImage.dart';
import 'package:ecommercew/screen/Register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Widget/CustemTextFormField.dart';

class Login extends StatefulWidget {
  // static String? textE, textP;
   TextEditingController Email  = TextEditingController();
   TextEditingController Password = TextEditingController();
  // Login({ required this.Email,required this.Password});
  @override
  State<Login> createState() => _LoginState();


}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();

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
                        child: const MainImage(),
                      ),
                      CustemTextfeild(
                        hint: 'Enter Your Email',
                        icon: Icons.email_outlined,
                        keyboardtype: TextInputType.emailAddress,
                        labelText: 'Email',
                        controller:widget.Email ,
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      CustemTextfeild(
                        hint: "Enter Your Password",
                        icon: Icons.password_sharp,
                        keyboardtype: TextInputType.visiblePassword,
                        suffixicon: Icons.remove_red_eye_outlined,
                        labelText: 'Password',
                        controller:widget. Password,
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black),
                        child: TextButton(
                          child: const Text(
                            "Login",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          onPressed: () async {
                            if (globalKey.currentState!.validate()) {
                              globalKey.currentState!.save();

                              setpref();
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Homepage()));

                            }
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
                            "You don't  have an acount",
                            style: TextStyle(color: kIconColor, fontSize: 16),
                          ),
                          SizedBox(
                            width: width * 0.020,
                          ),
                          TextButton(
                            child: const Text(
                              "Register",
                              style: TextStyle(color: Colors.black),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Register()));
                            },
                          )
                        ],
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
    await prefsE.setString('email', widget.Email.text);
    await prefsP.setString('password',widget.Password.text);

  }

  getpref()async{
    final SharedPreferences prefsE = await SharedPreferences.getInstance();
    final SharedPreferences prefsP = await SharedPreferences.getInstance();
    final String? actione = prefsE.getString('email');
    final String? actionp = prefsP.getString('password');
    if(actione==null&&actionp==null){

    }
    else{
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Homepage()));
    }
  }
}
