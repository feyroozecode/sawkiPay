

import 'package:flutter/widgets.dart';

class OperatorModal {
  // OPERATOR SIM INFOS
  late String id; 
  late String carriereName;
  late String isoCountryCode;
  //String mobileCountryCode; ONE DEFAULT CODE FOR ONE COUNTRY 
  late String mobileNetworkCode;

  // 
  late String currentName;
  late Color principalColor;
  late Color secondColor;
  
  // MobileMoney
  late String mMoneySystemName ;
  late String mMoneyBASE_CODE;

  
  OperatorModal(String id, String carriereName, String isoCountryCode, String mobileNetworkCode, 
    String currentName, Color principalColor, Color secondColor, String mMoneySystemName, 
    String mMoneyBASE_CODE
    ){
    this.id = id;
    this.carriereName = carriereName;
    this.isoCountryCode = isoCountryCode;
    this.mobileNetworkCode = mobileNetworkCode;
    this.currentName = currentName;
    this.principalColor = principalColor;
    this.secondColor = secondColor;
    this.mMoneySystemName = mMoneySystemName;
    this.mMoneyBASE_CODE = mMoneyBASE_CODE;

    
  }
}