import 'package:aapmania/screens/Detalipage.dart';
import 'package:aapmania/screens/Homepage.dart';
import 'package:aapmania/screens/cartpage.dart';
import 'package:aapmania/screens/favouritepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Homepage(),
        'DetailPage': (context) => const DetailPage(),
        'cartpage': (context) => const cartpage(),
        'favouritepage': (context) => const favouritepage(),
      },
    ),
  );
}
