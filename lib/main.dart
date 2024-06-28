import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:language_flutter_getx/home.dart';
import 'package:language_flutter_getx/locale/locale.dart';
import 'package:language_flutter_getx/locale/locale_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    MyLocaleController controller = Get.put(MyLocaleController());

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: controller.initialLang,
      translations: MyLocale(),
      getPages: [
        GetPage(
          name: "/",
          page: () => home(),
        ),
      ],
    );
  }
}
