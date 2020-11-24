import 'package:flutter/material.dart';
import 'package:flutter_test_app/constants/constants.dart';
import 'package:flutter_test_app/models/Product.dart';
import 'package:flutter_test_app/screens/details/details_screen.dart';
import 'package:flutter_test_app/screens/home/components/categorries.dart';

import 'item_card.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int selectedCategoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(
              "Women",
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(fontWeight: FontWeight.bold),
            )),
        Categories(press: (index) {
          setState(() {
            selectedCategoryIndex = index;
          });
        }),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: GridView.builder(
              itemCount: products_arr[selectedCategoryIndex].length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  mainAxisSpacing: kDefaultPadding,
                  crossAxisSpacing: kDefaultPadding),
              itemBuilder: (context, index) => ItemCard(
                    product: products_arr[selectedCategoryIndex][index],
                    press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                                  product: products_arr[selectedCategoryIndex]
                                      [index],
                                ))),
                  )),
        ))
      ],
    );
  }
}
