import 'package:flutter/material.dart';
import 'package:flutter_test_app/constants/constants.dart';

class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int countItems = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlineButton(
            icon: Icons.remove,
            press: () {
              if (countItems > 1) {
                setState(() {
                  countItems--;
                });
              }
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(countItems.toString().padLeft(2, "0"),
              style: Theme.of(context).textTheme.headline6),
        ),
        buildOutlineButton(
            icon: Icons.add,
            press: () {
              setState(() {
                countItems++;
              });
            }),
      ],
    );
  }

  SizedBox buildOutlineButton({IconData icon, Function press}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlineButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}
