import 'package:flutter/material.dart';
import 'package:flutter_test_app/constants/constants.dart';

// We need statefull widget for our cotegories

class Categories extends StatefulWidget {
  final press;

  const Categories({Key key, this.press}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState(press);
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["hand bag", "Jewellery", "Footwear", "Dresses"];

  int selectedIndex = 0;

  _CategoriesState(press);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
        widget.press(index);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: selectedIndex == index ? kTextColor : kTextLightColor),
            ),
            Container(
              margin: EdgeInsets.only(top: kDefaultPadding / 4),
              height: 2,
              width: 30,
              color: selectedIndex == index ? Colors.black : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
