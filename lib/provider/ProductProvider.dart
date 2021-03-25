import 'package:flutter/material.dart';
import 'package:interna/style/svgicons.dart';

import '../models/product.dart';

class ProductProvider with ChangeNotifier {
  final List<Product> loadedProducts = [
    Product(
      id: "p1",
      title: "Bed room",
      light: "4 Lights",
      image: bed,
    ),
    Product(
      id: " p2",
      title: "Living room",
      light: "2 Lights",
      image: room,
    ),
    Product(
      id: "p3",
      title: "Kitchen",
      light: "5 Lights",
      image: kitchen,
    ),
    Product(
      id: "p4",
      title: "Bathroom",
      light: "1 Lights",
      image: bathtube,
    ),
    Product(
      id: "p5",
      title: "Outdoor",
      light: "4 Lights",
      image: house,
    ),
    Product(
      id: "p6",
      title: "Bed room",
      light: "4 Lights",
      image: balcony,
    ),
  ];
}

List<Product> get loadedProducts {
  return [...loadedProducts];
}
