import 'package:flutter/material.dart';
import 'package:flutter_test_app/constants/constants.dart';
import 'package:flutter_test_app/models/Product.dart';

class DescriptionProduct extends StatelessWidget {
  const DescriptionProduct({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Text(
        product.description,
        style: TextStyle(height: 1.5),
      ),
    );
  }
}
