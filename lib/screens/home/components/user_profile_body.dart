import 'package:flutter/material.dart';
import 'package:flutter_test_app/constants/constants.dart';

class UserProfileBody extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<UserProfileBody> {
  int selectedCategoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(
              "Profile",
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(fontWeight: FontWeight.bold),
            )),
      ],
    );
  }
}
