// @dart=2.0
import 'package:flutter/material.dart';
import 'package:sawki_pay/screen/tabs_pages/AirtelPage.dart';
import 'package:sawki_pay/screen/tabs_pages/MoovPage.dart';
import 'package:sawki_pay/screen/tabs_pages/ZamaniPage.dart';
import 'package:sawki_pay/widgets/TabCircularIndicator.dart';

class DashboardPage extends StatefulWidget {

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> with SingleTickerProviderStateMixin {

 final List<Tab> tabs = [
    Tab(
              child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5.0),
                            topRight: Radius.circular(5.0),
                            bottomLeft: Radius.circular(5.0), 
                            bottomRight: Radius.circular(5.0), 
                          ),
                    border: Border.all(color: Colors.red, width: 1)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Text("Airtel Niger",),
                      )
                    ),
                  ),
                  ),
                  Tab(
                    child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5.0),
                            topRight: Radius.circular(5.0),
                            bottomLeft: Radius.circular(5.0), 
                            bottomRight: Radius.circular(5.0), 
                          ),
                    border: Border.all(color: Colors.green, width: 1)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Text("Moov Africa"),
                      )
                    ),
                  ),
                ), 
                  Tab(
                    child: Container(
                     decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5.0),
                            topRight: Radius.circular(5.0),
                            bottomLeft: Radius.circular(5.0), 
                            bottomRight: Radius.circular(5.0), 
                          ),
                    border: Border.all(color: Colors.yellowAccent, width: 1)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(padding: EdgeInsets.all(2.0), 
                      child: Text("Zamani Telecom"),)
                    ),
                  ),
                  ) 
 ];

  TabController _tabController ;
  int _currentIndex = 0;

  static  List<Widget> _pages = <Widget>[
    AirtelPage(), 
    MoovPage(),
    ZamaniPage(), 
  ];


  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: tabs.length, vsync: this);
    _tabController.animation
    ..addListener(() {
      setState(() {
        _currentIndex =(_tabController.animation.value).round();
        print('_tabController.animation.value: ${_tabController.animation.value}');
        print('_currentIndex: $_currentIndex');
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {

    Key tabControllerKey;

    return DefaultTabController(
      key: tabControllerKey,
      animationDuration: Duration(seconds: 1),
      length: 3, 
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 87, 105, 87),
          elevation: 2.0,
          bottomOpacity: 2.0,
        
          title: Text('sawkiPay', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),),
          bottom: TabBar(
              physics: BouncingScrollPhysics(),
              isScrollable: false, 
              controller: _tabController,
              indicator: TabCircularIndicator(color: Color.fromARGB(255, 39, 129, 42), radius: 4.0 ),
              indicatorSize: TabBarIndicatorSize.tab,
              padding: EdgeInsets.all(1.0),
              unselectedLabelColor: Color.fromARGB(255, 176, 176, 176),
              unselectedLabelStyle: TextStyle(
                backgroundColor: Color.fromRGBO(0, 0, 0, 0), 
                fontSize: 11.0
              ),
              labelStyle: TextStyle(               
                fontWeight: FontWeight.w700, 
                fontSize: 14.0
              ),
              automaticIndicatorColorAdjustment: true,
              indicatorPadding: EdgeInsets.all(2.0),
              tabs: tabs, 
          ),
        ),
        
      body: TabBarView(
        children: _pages )
      ) 
    );
  }


  changeTabBg(int index){
    if(index ==0 ){
        print(index);
        return Colors.red;
        
    } else if(index == 1){
              print(index);

       return Color.fromARGB(57, 76, 175, 79);
    } else{
              print(index);

       return Colors.yellowAccent;
    }
    }

}