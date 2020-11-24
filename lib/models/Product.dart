import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product(
      {this.id,
      this.image,
      this.title,
      this.price,
      this.description,
      this.size,
      this.color});
}

const dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";

List<Product> products0 = [
  Product(
    id: 1,
    title: "Office Code",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/bag_1.png",
    color: Color(0xFF3d82FE),
  ),
  Product(
    id: 2,
    title: "Belt Bag",
    price: 234,
    size: 11,
    description: dummyText,
    image: "assets/images/bag_2.png",
    color: Color(0xFFD3A984),
  ),
  Product(
    id: 3,
    title: "Hang Top",
    price: 234,
    size: 13,
    description: dummyText,
    image: "assets/images/bag_3.png",
    color: Color(0xFF989493),
  ),
  Product(
    id: 4,
    title: "Old Fashion",
    price: 234,
    size: 10,
    description: dummyText,
    image: "assets/images/bag_4.png",
    color: Color(0xFFE6B398),
  ),
  Product(
    id: 5,
    title: "Office Code",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/bag_5.png",
    color: Color(0xFFFB7883),
  ),
  Product(
    id: 6,
    title: "Office Code",
    price: 234,
    size: 11,
    description: dummyText,
    image: "assets/images/bag_6.png",
    color: Color(0xFFAEAEAE),
  ),
];

List<Product> products1 = [
  Product(
    id: 4,
    title: "Old Fashion",
    price: 234,
    size: 10,
    description: dummyText,
    image: "assets/images/bag_4.png",
    color: Color(0xFFE6B398),
  ),
  Product(
    id: 5,
    title: "Office Code",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/bag_5.png",
    color: Color(0xFFFB7883),
  ),
  Product(
    id: 6,
    title: "Office Code",
    price: 234,
    size: 11,
    description: dummyText,
    image: "assets/images/bag_6.png",
    color: Color(0xFFAEAEAE),
  ),
  Product(
    id: 1,
    title: "Office Code",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/bag_1.png",
    color: Color(0xFF3d82FE),
  ),
  Product(
    id: 2,
    title: "Belt Bag",
    price: 234,
    size: 11,
    description: dummyText,
    image: "assets/images/bag_2.png",
    color: Color(0xFFD3A984),
  ),
];

List<Product> products2 = [
  Product(
    id: 1,
    title: "Office Code",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/bag_1.png",
    color: Color(0xFF3d82FE),
  ),
  Product(
    id: 5,
    title: "Office Code",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/bag_5.png",
    color: Color(0xFFFB7883),
  ),
  Product(
    id: 6,
    title: "Office Code",
    price: 234,
    size: 11,
    description: dummyText,
    image: "assets/images/bag_6.png",
    color: Color(0xFFAEAEAE),
  ),
  Product(
    id: 2,
    title: "Belt Bag",
    price: 234,
    size: 11,
    description: dummyText,
    image: "assets/images/bag_2.png",
    color: Color(0xFFD3A984),
  ),
];

List<Product> products3 = [
  Product(
    id: 3,
    title: "Hang Top",
    price: 234,
    size: 13,
    description: dummyText,
    image: "assets/images/bag_3.png",
    color: Color(0xFF989493),
  ),
  Product(
    id: 4,
    title: "Old Fashion",
    price: 234,
    size: 10,
    description: dummyText,
    image: "assets/images/bag_4.png",
    color: Color(0xFFE6B398),
  ),
  Product(
    id: 1,
    title: "Office Code",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/bag_1.png",
    color: Color(0xFF3d82FE),
  ),
];

List<List<Product>> products_arr = [products0, products1, products2, products3];
