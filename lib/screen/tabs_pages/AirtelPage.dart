
import 'package:flutter/material.dart';
import 'package:sawki_pay/const/Const.dart';

class AirtelPage extends StatefulWidget {

  @override
  State<AirtelPage> createState() => _AirtelPageState();
}

class _AirtelPageState extends State<AirtelPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        child: Center(child: Text('Airtel page')),
      ) ,
    );
  }
}