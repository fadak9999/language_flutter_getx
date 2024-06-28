import 'package:flutter/material.dart';
import 'package:get/get.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("page1body".tr),
        backgroundColor: Color.fromARGB(255, 7, 205, 227),
      ),
      body: Center(
        child: Text("page1body".tr),
      ),
    );
  }
}
