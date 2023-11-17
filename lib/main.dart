
import 'package:ecommercew/HomePage.dart';
import 'package:ecommercew/Widget/Constants.dart';
import 'package:ecommercew/screen/Register.dart';
import 'package:ecommercew/screen/login.dart';
import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final savedThemeMode = await AdaptiveTheme.getThemeMode();

  runApp(MyApp(savedThemeMode: savedThemeMode));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, this.savedThemeMode});

  final AdaptiveThemeMode? savedThemeMode;


   @override
  Widget build(BuildContext context) {

    return AdaptiveTheme(
      builder: (theme, darkTheme) => MaterialApp(
        darkTheme: darkTheme,
        theme: ThemeData(
            appBarTheme: const AppBarTheme(
              backgroundColor: kSecondColor,
              foregroundColor: Colors.black,
              shape:  RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(35),
                ),
              ),
              titleTextStyle: TextStyle(color:kMainColor,fontSize: 20),
            ),
            textTheme: TextTheme(
              headlineLarge: TextStyle(
                  color: kSecondColor,
                  fontSize: 25,
                  fontFamily: "BlackOpsOne",
                  fontWeight: FontWeight.bold),
              headlineMedium:  TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  fontFamily: "FjallaOne",
                  color:kSecondColor),
              headlineSmall:  TextStyle(
                fontSize: 10,),
              labelSmall: TextStyle(
                  fontSize: 12,
                  fontFamily: "FjallaOne",
                  color: Colors.blueGrey
              ),
            )
        ),
        debugShowCheckedModeBanner: false,
        home:  Login(),
      ),
      light: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorSchemeSeed: Colors.blue,
      ),
      dark: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorSchemeSeed: Colors.blue,
      ),
      initial: savedThemeMode ?? AdaptiveThemeMode.light,
    );

  }
}




