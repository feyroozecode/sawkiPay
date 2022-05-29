
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sawki_pay/const/Const.dart';
import 'package:sawki_pay/screen/Dashbaord.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Color(colorPrimary),         
      ),
      debugShowCheckedModeBanner: false,
      title: 'SawkiPay',
      home:  DashboardPage(),
    );
  }
}
