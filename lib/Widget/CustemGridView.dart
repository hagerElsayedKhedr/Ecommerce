
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screen/ItemDatails.dart';
import 'Constants.dart';

class CustemGridView extends StatelessWidget {
  const CustemGridView({
    super.key,
    required this.items,

  });
  final List items;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 0.2
      ),
      itemCount: items.length,
      itemBuilder: (context, i) {
        return InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => itemDetails(data: items[i])));
          },
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Container(
                  width: width*0.6,
                  height: height*0.13,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: kMainColor
                  ),
                  child: Image(
                    image: AssetImage(
                      items[i]["image"],
                    ),
                    height: 70,
                    fit: BoxFit.fill,
                  ),
                ),
                ListTile(
                  title: Text(
                    items[i]["titlt"],
                    maxLines: 1,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  subtitle: Text(
                    items[i]["subtitle"],
                    maxLines: 2,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  items[i]["text"],
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
