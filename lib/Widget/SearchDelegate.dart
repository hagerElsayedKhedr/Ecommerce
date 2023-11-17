
import 'package:flutter/material.dart';
import '../HomePage.dart';
import 'Constants.dart';
import 'CustemGridView.dart';

class custemSearch extends SearchDelegate {
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
      "image": "images/laptob.png",
      "titlt": "laptop",
      "subtitle": "Hp Laptop",
      "text": "280\$"
    },
    {
      "image": "images/car.png",
      "titlt": "Car",
      "subtitle": "car mars",
      "text": "280\$"
    },
  ];
  List? fliterlist;

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.close_sharp)
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Homepage()));
        },
        icon: Icon(Icons.arrow_back_ios,color: kSecondColor,)
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text("query");
  }

  @override
  Widget buildSuggestions(BuildContext context) {

    if (query == "") {
      return CustemGridView(items: items);
    }
    else {
      fliterlist = items.where((element) => element.contains(query)).toList();
      return CustemGridView(items: fliterlist!);
    }
  }
}