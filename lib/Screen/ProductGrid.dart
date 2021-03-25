// import 'package:flutter/material.dart';
// import 'package:interna/provider/ProductProvider.dart';

// import 'package:interna/widgets/productitem.dart';
// import 'package:provider/provider.dart';

// class ProductGrid extends StatelessWidget {
//   static const String idScreen = '/productGrid';
//   // final String title;
//   // final String id;
//   // final String image;
//   // final String light;
//   // ProductGrid(this.id, this.image, this.light, this.title);
//   @override
//   Widget build(BuildContext context) {
//     final productData = Provider.of<ProductProvider>(context);
//     final products = productData.loadedProducts;
//     return Scaffold(
//       body: GridView.builder(
//         itemCount: products.length,
//         itemBuilder: (ctx, i) => ProductItem(
//           products[i].id,
//           products[i].title,
//           products[i].light,
//           products[i].image,
//         ),
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           childAspectRatio: 3 / 2,
//           crossAxisCount: 2,
//           crossAxisSpacing: 20,
//           mainAxisSpacing: 20,
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:interna/style/svgicons.dart';

class GridDashboard extends StatelessWidget {
  Items item1 = new Items(
    title: "Calendar",
    subtitle: "Bedroom",
    light: "4 Lights",
    img: 'asset/bed.svg',
  );

  Items item2 = new Items(
    title: "Groceries",
    subtitle: "Living room",
    light: "2 Lights",
    img: 'asset/room.svg',
  );
  Items item3 = new Items(
    title: "Locations",
    subtitle: "Kitchen",
    light: "5 Lights",
    img: 'asset/kitchen.svg',
  );
  Items item4 = new Items(
    title: "Activity",
    subtitle: "Bathroom",
    light: " 1 Lights",
    img: 'asset/bathtube.svg',
  );
  Items item5 = new Items(
    title: "To do",
    subtitle: "Outdoor",
    light: "4 Lights",
    img: 'asset/house.svg',
  );
  Items item6 = new Items(
    title: "Settings",
    subtitle: "Bed room",
    light: "4 lights",
    img: 'asset/balcony.svg',
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];
    var color = 0xffffffff;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return Container(
              decoration: BoxDecoration(
                  color: Color(color), borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SvgPicture.asset(data.img, width: 42),
                    SizedBox(
                      height: 14,
                    ),
                    // Text(data.title,
                    //     style: TextStyle(
                    //         color: Colors.white,
                    //         fontSize: 16,
                    //         fontWeight: FontWeight.w600)),
                    // SizedBox(
                    //   height: 8,
                    // ),
                    Text(data.subtitle,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      data.light,
                      style: TextStyle(
                          color: Colors.yellow[700],
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            );
          }).toList()),
    );
  }
}

class Items {
  String title;
  String subtitle;
  String light;
  String img;
  Items({this.title, this.subtitle, this.light, this.img});
}
