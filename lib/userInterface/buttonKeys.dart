import 'package:flutter/material.dart';

import 'key-symbol.dart';

abstract class Keys {

  static KeySymbol clear = const KeySymbol('C');
  static KeySymbol sign = const KeySymbol('±');
  static KeySymbol percent = const KeySymbol('%');
  static KeySymbol divide = const KeySymbol('÷');
  static KeySymbol multiply = const KeySymbol('x');
  static KeySymbol minus = const KeySymbol('-');
  static KeySymbol plus = const KeySymbol('+');
  static KeySymbol equals = const KeySymbol('=');
  static KeySymbol decimal = const KeySymbol('.');

  static KeySymbol zero = const KeySymbol('0');
  static KeySymbol one = const KeySymbol('1');
  static KeySymbol two = const KeySymbol('2');
  static KeySymbol three = const KeySymbol('3');
  static KeySymbol four = const KeySymbol('4');
  static KeySymbol five = const KeySymbol('5');
  static KeySymbol six = const KeySymbol('6');
  static KeySymbol seven = const KeySymbol('7');
  static KeySymbol eight = const KeySymbol('8');
  static KeySymbol nine = const KeySymbol('9');
}

class CalculatorKey extends StatelessWidget {

  CalculatorKey({ this.symbol });

  final KeySymbol symbol;

  Color get color {

    switch (symbol.type) {

      case KeyType.FUNCTION:
        return Colors.black54;

      case KeyType.OPERATOR:
        return Colors.black45;

      case KeyType.INTEGER:
      default:
        return Colors.black12;
    }
  }

  //static dynamic _fire(CalculatorKey key) => KeyController.fire(KeyEvent(key));

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            width: double.infinity,
            child:FlatButton(
                shape: RoundedRectangleBorder(side: BorderSide(
                    width: 0.0,
                    style: BorderStyle.none
                ), borderRadius: BorderRadius.only(
                  topLeft: Radius.zero,
                  topRight: Radius.zero,
                  bottomLeft: Radius.zero,
                  bottomRight: Radius.zero,
                )),
                color: color,
                textColor: Colors.black,
                onPressed: (){},
                child: Text(symbol.value)
            ))
    );
  }
}

Widget buildButton({String letter}) {
  return Expanded(
      child: Container(
          width: double.infinity,
          child:FlatButton(
              color: Colors.black12,
              textColor: Colors.black,
              onPressed: (){},
              child: Text("$letter")
          ))
  );
}