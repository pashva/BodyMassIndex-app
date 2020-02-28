import 'dart:math';

import 'package:flutter/material.dart';


class brain{
    brain({this.hheight,this.wweight});
    final int hheight;
    final int wweight;
    double _bmi;
    String calculateBMI(){
      _bmi=wweight/pow(hheight/100, 2);
      return _bmi.toStringAsFixed(1);
    }
    String answer(){
      if(_bmi>25){
        return 'OVERWEIGHT (AKA JAADIYA)';
      }
      else if(_bmi>18.5){
        return 'NORMAL (AKA EKDUM SARAS)';
      }
      else{
        return 'UNDERWEIGHT (AKA KHAA LE THODA)';
      }
    }

}