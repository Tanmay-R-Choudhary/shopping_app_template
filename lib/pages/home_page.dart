import 'package:flutter/material.dart';
import 'package:net_ninja_tut/constants/style_constants.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appMainColor,
      appBar: AppBar(
        backgroundColor: appMainColor,
        elevation: 0.0,
        title: const Text("Search Product", style: TextStyle(color: Colors.black),),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            width: 60,
            decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          )
        ],
      ),
      body: const Body(),
    );
  }
}


class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20,),
        Row(
          children: [
            const Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: TextField(
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    enabledBorder: textFieldBorderDecoration,
                    focusedBorder: textFieldBorderDecoration,
                    prefixIcon: Icon(Icons.search, color: Colors.blueGrey,),
                    hintText: 'Search',
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                height: 60,
                width: 60,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                ),
                child: const Icon(Icons.assessment_outlined, size: 40,),
              ),
            ),
          ],
        )
      ],
    );
  }
}
