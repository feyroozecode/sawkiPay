import 'package:flutter/material.dart';
import 'package:sawki_pay/const/Const.dart';

class ZamaniPage extends StatefulWidget {

  @override
  State<ZamaniPage> createState() => _MoovPageState();
}

class _MoovPageState extends State<ZamaniPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade600,
      
      body: Container(
        child: Center(child: Text('Zamani page')),
      ) ,
    );
  }
}