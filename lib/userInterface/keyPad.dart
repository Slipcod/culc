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
                ButtonsKey(symbol: Keys.seven),
                ButtonsKey(symbol: Keys.four),
                ButtonsKey(symbol: Keys.one),
                ButtonsKey(symbol: Keys.decimal),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: <Widget>[
                ButtonsKey(symbol: Keys.eight),
                ButtonsKey(symbol: Keys.five),
                ButtonsKey(symbol: Keys.two),
                ButtonsKey(symbol: Keys.zero),
              ],
            ),

          ),
          Expanded(
            flex: 3,
            child: Column(
              children: <Widget>[
                ButtonsKey(symbol: Keys.nine),
                ButtonsKey(symbol: Keys.six),
                ButtonsKey(symbol: Keys.three),
                ButtonsKey(symbol: Keys.equals),
              ],
            ),

          ),
          Expanded(
            flex: 3,
            child: Column(
              children: <Widget>[
                ButtonsKey(symbol: Keys.clear),
                ButtonsKey(symbol: Keys.divide),
                ButtonsKey(symbol: Keys.multiply),
                ButtonsKey(symbol: Keys.minus ),
                ButtonsKey(symbol: Keys.plus),
              ],
            ),
          ),
        ],
      ),
    );
  }


}