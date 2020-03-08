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
                buildButton(letter: "Numbers"),
                buildButton(letter: "Numbers"),
                buildButton(letter: "Numbers"),
                buildButton(letter: "Numbers"),
              ],
            ),

          ),
          Expanded(
            flex: 3,
            child: Column(
              children: <Widget>[
                buildButton(letter: "Numbers"),
                buildButton(letter: "Numbers"),
                buildButton(letter: "Numbers"),
                buildButton(letter: "Numbers"),
              ],
            ),

          ),
          Expanded(
            flex: 3,
            child: Column(
              children: <Widget>[
                buildButton(letter: "Numbers"),
                buildButton(letter: "Numbers"),
                buildButton(letter: "Numbers"),
                buildButton(letter: "Numbers"),
              ],
            ),

          ),
          Expanded(
            flex: 3,
            child: Column(
              children: <Widget>[
                buildButton(letter: "signs"),
                buildButton(letter: "signs"),
                buildButton(letter: "signs"),
                buildButton(letter: "signs"),
              ],
            ),
          ),
        ],
      ),
    );
  }


}