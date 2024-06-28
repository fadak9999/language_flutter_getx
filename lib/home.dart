import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:language_flutter_getx/locale/locale_controller.dart';
import 'package:language_flutter_getx/pages/page1.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    //
    MyLocaleController controllerllang = Get.find();
    //
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 143, 143, 143),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 202, 203, 182),
        child: Container(
          margin: EdgeInsets.only(right: 150, top: 100),
          child: Column(
            children: [
              Center(
                child: Text("titleDrawer".tr),
              ),
              SizedBox(
                height: 20,
              ),
              //
              TextButton(
                  onPressed: () {
                    controllerllang.changeLang("en");
                  },
                  child: Text("2".tr)),
              //
              TextButton(
                  onPressed: () {
                    controllerllang.changeLang("ar");
                  },
                  child: Text("3".tr)),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("1".tr),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 80,
            width: 150,
            child: ElevatedButton(
              onPressed: () {
                Get.to(page1());
              },
              child: Text(
                "goto".tr,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            ),
          )
        ],
      )),
    );
  }
}
