import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class Product {
  final String image, title, description, category;
  final int price, discount, size, id;
  final Color color;

  Product(this.image, this.title, this.description, this.category, this.price,
      this.discount, this.size, this.id, this.color);
}

List<Product> product = [
  Product('assets/product/img1.png', 'Rice', 'Description', 'Food', 120, 20, 3, 1,
      Colors.blue),
   Product('assets/product/img2.png', 'Vegitable', 'Description', 'Food', 120, 20, 3, 1,
      Colors.purple),
   Product('assets/product/img3.png', 'Meat', 'Description', 'Food', 120, 20, 3, 1,
      Colors.teal),
   Product('assets/product/img4.png', 'Polaw', 'Description', 'Food', 120, 20, 3, 1,
      Colors.deepOrange),
   Product('assets/product/img5.png', 'Biriani', 'Description', 'Food', 120, 20, 3, 1,
      Colors.pink),
   Product('assets/product/img6.png', 'Tehari', 'Description', 'Food', 120, 20, 3, 1,
      Colors.orange),
   Product('assets/product/img7.png', 'Corma', 'Description', 'Food', 120, 20, 3, 1,
      Colors.green),
   Product('assets/product/img8.png', 'Kala Vuna', 'Description', 'Food', 120, 20, 3, 1,
      Colors.black),
   Product('assets/product/img9.png', 'Fish', 'Description', 'Food', 120, 20, 3, 1,
      Colors.red)
];
