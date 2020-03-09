import 'package:culc/controllers/keyController.dart';
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

class ButtonsKey extends StatelessWidget {

  ButtonsKey({ this.symbol });

  final KeySymbol symbol;

  Color get color {

    switch (symbol.type) {

      case KeyType.FUNCTION:
        return Colors.deepOrange;

      case KeyType.OPERATOR:
        return Colors.white;

      case KeyType.INTEGER:
      default:
        return Colors.black12;
    }
  }

  static dynamic _fire(ButtonsKey key) => KeyController.fire(KeyEvent(key));

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            width: double.infinity,
            child:FlatButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
                color: color,
                textColor: Colors.black,
                onPressed: () => _fire(this),
                child: Text(symbol.value)
            ))
    );
  }
}
