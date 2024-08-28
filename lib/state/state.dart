import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';


class ProviderClass with ChangeNotifier,DiagnosticableTreeMixin{
  double _firstTotal = 0;
  double _secondTotal = 0;
  double _serviceFee = 0;
  double _deliveryFee = 0;
  double _deliverTip = 0;

  void setFirstTotal(String value){
    _firstTotal = double.tryParse(value) ?? 0;
    notifyListeners();
  }
  void setSecondTotal(String value){
    _secondTotal = double.tryParse(value) ?? 0;
    notifyListeners();
  }

  void setServiceFee(String value){
    _serviceFee = double.tryParse(value) ?? 0;
    notifyListeners();
  }
  void setDeliveryFee(String value){
    _deliveryFee = double.tryParse(value) ?? 0;
    notifyListeners();
  }
  void setDeliverTip(String value){
    _deliverTip = double.tryParse(value) ?? 0;
    notifyListeners();
  }

  double getTotal(){
    return _firstTotal + _secondTotal + ((_serviceFee+_deliveryFee+_deliverTip));
  }
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    
    properties.add(DoubleProperty('firstTotal', _firstTotal));
    properties.add(DoubleProperty('secondTotal', _secondTotal));
  }
}