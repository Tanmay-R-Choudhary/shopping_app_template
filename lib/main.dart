import 'package:flutter/material.dart';
import 'package:net_ninja_tut/pages/home_page.dart';

void main() {
  runApp(const Shoppers());
}

class Shoppers extends StatelessWidget {
  const Shoppers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
