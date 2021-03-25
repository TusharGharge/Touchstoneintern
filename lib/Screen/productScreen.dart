import 'package:flutter/material.dart';
import 'package:interna/Screen/ProductGrid.dart';
import 'package:interna/provider/ProductProvider.dart';
import '../widgets/mainContainer.dart';
// import '../Screen/tabScreen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../style/svgicons.dart';

class ProductScreen extends StatelessWidget {
  static const String idScreen = 'productScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30.0, left: 10.0),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    "Control\n Panel",
                    style: TextStyle(
                      fontSize: 35.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'asset/user.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
              height: MediaQuery.of(context).size.height * 0.8,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 25,
                          ),
                          child: Text(
                            'All Rooms',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                              color: Colors.blue,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    
                    // Card(
                    //   child: Padding(
                    //     padding: const EdgeInsets.all(20),
                    //     child: Column(
                    //         crossAxisAlignment: CrossAxisAlignment.start,
                    //         children: [
                    //           Container(
                    //             child: SvgPicture.asset('asset/bed.svg',
                    //                 width: 50, height: 50),
                    //           ),
                    //           SizedBox(height: 10),
                    //           Text(
                    //             "Bath room",
                    //             style: TextStyle(fontSize: 10),
                    //           )
                    //         ]),
                    //   ),
                    // ),
                    // ProductProvider(),
                    // GridView.builder(
                    //     gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    //       maxCrossAxisExtent: 200,
                    //       childAspectRatio: 3 / 2,
                    //       mainAxisSpacing: 20,
                    //       crossAxisSpacing: 20,
                    //     ),
                    //     itemBuilder: null),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
