
import 'package:flutter/material.dart';
import 'package:sawki_pay/const/Const.dart';


class MoovPage extends StatefulWidget {

  @override
  State<MoovPage> createState() => _MoovPageState();
}

class _MoovPageState extends State<MoovPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      
      body: Container(
        child: Center(child: Text('Moov page')),
      ) ,
    );
  }
}