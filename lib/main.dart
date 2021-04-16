import 'package:coherence_app/presentation/screens/homepage/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() => runApp(CoherenceApp());

class CoherenceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Health Savings Rewards",
      home: HomePage(),
    );
  }
}
