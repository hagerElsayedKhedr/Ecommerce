import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Constants.dart';

class CustemTextfeild extends StatefulWidget {
 //final Function? Onclick;
  final TextEditingController controller;
  final String hint;
  final String labelText;
  final IconData icon;
  final IconData? suffixicon;
  final TextInputType keyboardtype;

  const CustemTextfeild(
      {super.key,
      required this.hint,
      required this.icon,
      required this.keyboardtype,
      this.suffixicon,
      required this.labelText,
        //required this.Onclick,
      required this.controller
      });

  @override
  State<CustemTextfeild> createState() => _CustemTextfeildState();
}

class _CustemTextfeildState extends State<CustemTextfeild> {
  String? ErrorMessage(String str) {
    switch (widget.hint) {
      case "Enter Your Name":
        return "Please enter Your Name";
      case "Enter Your Email":
        return "Please enter Your Email";
      case "Enter Your Password":
        return "Please enter Password";
      case "Enter Your Password again":
        return "Please enter Password again";
    }
  }

  @override
  bool passwordVisible = true;

  Widget build(BuildContext context) {
    return TextFormField(
      //onSaved: widget.Onclick!(),
      controller: widget.controller,
      obscureText:
          widget.hint == "Enter Your Password" ? passwordVisible : false,
      cursorColor: kIconColor,
      maxLines: 1,
      keyboardType: widget.keyboardtype,
      decoration: InputDecoration(
        hintText: widget.hint,
        labelText: widget.labelText,
        labelStyle: TextStyle(color: kIconColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon: Icon(
          widget.icon,
          color: kIconColor,
        ),
        suffixIcon: InkWell(
          child: Icon(
            widget.suffixicon,
            color: kIconColor,
          ),
          onTap: () {
            setState(() {
              passwordVisible = !passwordVisible;
            });
          },
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(35),
            borderSide: BorderSide(color: kSecondColor)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(35),
            borderSide: BorderSide(color: kIconColor)),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Colors.white)),
        filled: true,
        fillColor: kMainColor,
        hintStyle: Theme.of(context).textTheme.labelSmall,
        errorStyle: Theme.of(context).textTheme.labelSmall,
      ),
      validator: (val) {
        if (val!.isEmpty) {
          return ErrorMessage("");
        }

        ;
      },
    );
    ;
  }
}
