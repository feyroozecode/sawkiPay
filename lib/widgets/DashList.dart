
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sawki_pay/screen/TestUssd.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[dashBg, content],
      ),
    );
  }

  get dashBg => Column(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.green,),
              flex: 2,
          ),
          Expanded(
            child: Container(
              color: Colors.transparent,),
              flex: 5,
          )
        ],
      );

  get content {
    return Column(
      children: <Widget>[
        header,
        grid,
      ],
    );
  }

  get header => ListTile(
        contentPadding: EdgeInsets.only(left: 10, right: 20, top: 25),
        title: Text(
        'sawkiPay',
        style: TextStyle(color: Colors.white),
        
      ),
      onTap: ()=> Get.to(TestUssd()),
      subtitle: Text('Payer vos facture simplement', style: TextStyle(color: Colors.white),),
    trailing: CircleAvatar(
      backgroundColor: Colors.white10,
    ),
  );


  get grid => Expanded(
     child: Container(
       padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
       child: GridView.count(
         crossAxisCount: 2,
         crossAxisSpacing: 16,
         mainAxisSpacing: 16,
         childAspectRatio: .90,
         children: List.generate(6, (index) {
          return InkWell(
            onTap: ()=> {},
            child: Card(
              elevation: 3.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
              ),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const FlutterLogo(),
                    Text('Data $index')
                  ],
                ),
              ),
            ),
          );
         }
         ),
       ),
     ),
  );

}