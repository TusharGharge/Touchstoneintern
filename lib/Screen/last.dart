import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:interna/Screen/ProductGrid.dart';

class Last extends StatefulWidget {
  @override
  _LastState createState() => _LastState();
}

class _LastState extends State<Last> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    top: 20,
                    left: 15,
                    right: 15,
                    bottom: 15,
                  ),
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
          SizedBox(height: 8),
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
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 25,
                          top: 25,
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
                  SingleChildScrollView(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.80,
                      decoration: BoxDecoration(
                        // color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: GridDashboard(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Container(
              width: 30,
              height: 30,
              child: SvgPicture.asset(
                "asset/bulb.svg",
              ),
            ),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 30,
              height: 30,
              child: SvgPicture.asset(
                "asset/bottomhome.svg",
              ),
            ),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 30,
              height: 30,
              child: SvgPicture.asset(
                "asset/bottomsetting.svg",
              ),
            ),
            title: Text('Home'),
          ),
        ],
        // currentIndex: _selectedIndex,
        // onTap: _onItemTapped,
      ),
    );
  }
}

//           Container(
//               height: MediaQuery.of(context).size.height * 0.8,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(50),
//                   topRight: Radius.circular(50),
//                 ),
//               ),
//               child: SingleChildScrollView(
//                 child: Column(
//                   children: [
//                     SizedBox(
//                       height: 30,
//                     ),
//                     Row(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.only(
//                             left: 25,
//                           ),
//                           child: Text(
//                             'All Rooms',
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 28,
//                               color: Colors.blue,
//                             ),
//                             textAlign: TextAlign.start,
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                   ],),
//               ),
//           );
//             // Container(
//             //   height: MediaQuery.of(context).size.height * 0.80,
//             //   decoration: BoxDecoration(
//             //     color: Colors.white,
//             //     borderRadius: BorderRadius.only(
//             //       topLeft: Radius.circular(50),
//             //       topRight: Radius.circular(50),
//             //     ),
//             //   ),
//             //   child: GridDashboard(),
//             // ),
//           ],
//         ));
//   }
// }
