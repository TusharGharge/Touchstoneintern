import 'package:flutter/material.dart';
import 'package:interna/Screen/ProductGrid.dart';
import 'package:interna/Screen/last.dart';
import 'package:interna/Screen/productScreen.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:interna/Screen/productScreen.dart';
import 'package:interna/provider/ProductProvider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => ProductProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Last(),
        // routes: {
        //   ProductScreen.idScreen: (ctx) => ProductScreen(),
        //   ProductGrid.idScreen: (ctx) => ProductGrid(),
        // },
        debugShowCheckedModeBanner: false,
      ),
    );
    
  }
}
