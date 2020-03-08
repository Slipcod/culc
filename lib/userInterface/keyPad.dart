import 'package:flutter/material.dart';

import 'buttonKeys.dart';

class KeyPad extends StatelessWidget{
  KeyPad({ Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child:Row(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Column(
              children: <Widget>[
                CalculatorKey(symbol: Keys.seven),
                CalculatorKey(symbol: Keys.four),
                CalculatorKey(symbol: Keys.one),
                CalculatorKey(symbol: Keys.decimal),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: <Widget>[
                CalculatorKey(symbol: Keys.eight),
                CalculatorKey(symbol: Keys.five),
                CalculatorKey(symbol: Keys.two),
                CalculatorKey(symbol: Keys.zero),
              ],
            ),

          ),
          Expanded(
            flex: 3,
            child: Column(
              children: <Widget>[
                CalculatorKey(symbol: Keys.nine),
                CalculatorKey(symbol: Keys.six),
                CalculatorKey(symbol: Keys.three),
                CalculatorKey(symbol: Keys.equals),
              ],
            ),

          ),
          Expanded(
            flex: 3,
            child: Column(
              children: <Widget>[
                CalculatorKey(symbol: Keys.clear),
                CalculatorKey(symbol: Keys.decimal),
                CalculatorKey(symbol: Keys.multiply),
                CalculatorKey(symbol: Keys.minus ),
                CalculatorKey(symbol: Keys.plus),
              ],
            ),
          ),
        ],
      ),
    );
  }


}