import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductItem extends StatelessWidget {
  final String title;
  final String id;
  final String image;
  final String light;
  ProductItem(this.id, this.image, this.light, this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      height: 800,
      // height: MediaQuery.of(context).size.height * 0.20,
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              child: SvgPicture.asset(title, width: 50, height: 50),
            ),
            SizedBox(height: 10),
            Text(
              image,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              light,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Colors.yellowAccent,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
