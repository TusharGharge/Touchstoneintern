import 'package:flutter/foundation.dart';

class Product with ChangeNotifier {
  final String id;
  final String title;
  final String light;
  final String image;

  Product({
    @required this.title,
    @required this.id,
    @required this.image,
    @required this.light,
  });
}
