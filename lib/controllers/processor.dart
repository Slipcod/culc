import 'dart:async';

import 'package:culc/userInterface/buttonKeys.dart';
import 'package:culc/userInterface/key-symbol.dart';
import 'keyController.dart';


abstract class Processor {

  static KeySymbol _operator;
  static String _valA = '0';
  static String _valB = '0';
  static String _result;

  static StreamController _paramsController = StreamController();
  static StreamController _resultController = StreamController();

  static Stream get _paramsStream => _paramsController.stream;
  static Stream get _resultStream => _resultController.stream;

  static StreamSubscription paramsListen(Function handler) => _paramsStream.listen(handler);
  static StreamSubscription resultListen(Function handler) => _resultStream.listen(handler);

  static void _paramsFire(String params) => _paramsController.add(_outputParams);
  static void _resultFire(String result) => _resultController.add(_outputResult);

  static void refresh(){
      _paramsFire(_outputParams);
      _resultFire(_outputResult);
  }



  static String get _outputParams => _equation ;
  static String get _outputResult => _result == null ? '0' : _result;


  //static void refresh() => _fire(_output);

  //static void _fire(String data) => _controller.add(_output);
  //static String get _output => _result == null ? _equation : _result;


  static String get _equation => _valA
      + (_operator != null ? ' ' + _operator.value : '')
      + (_valB != '0' ? ' ' + _valB : '');

  static dispose() => _paramsController.close();

  static process(dynamic event) {

    ButtonsKey key = (event as KeyEvent).key;
    switch(key.symbol.type) {

      case KeyType.FUNCTION:
        return handleFunction(key);

      case KeyType.OPERATOR:
        return handleOperator(key);

      case KeyType.INTEGER:
        return handleInteger(key);
    }
  }

  static void handleFunction(ButtonsKey key) {

    if (_valA == '0') { return; }
    if (_result != null) { _condense(); }

    Map<KeySymbol, dynamic> table = {
      Keys.clear: () => _clear(),
      Keys.sign: () => _sign(),
      Keys.percent: () => _percent(),
      Keys.decimal: () => _decimal(),
    };

    table[key.symbol]();
    refresh();
  }

  static void handleOperator(ButtonsKey key) {

    if (_valA == '0') { return; }
    if (key.symbol == Keys.equals) { return _calculate(); }
    if (_result != null) { _condense(); }

    _operator = key.symbol;
    refresh();
  }

  static void handleInteger(ButtonsKey key) {

    String val = key.symbol.value;
    if (_operator == null) { _valA = (_valA == '0') ? val : _valA + val; }
    else { _valB = (_valB == '0') ? val : _valB + val; }
    refresh();
  }

  static void _clear() {

    _valA = _valB = '0';
    _operator = _result = null;
  }

  static void _sign() {

    if (_valB != '0') { _valB = (_valB.contains('-') ? _valB.substring(1) : '-' + _valB); }
    else if (_valA != '0') { _valA = (_valA.contains('-') ? _valA.substring(1) : '-' + _valA); }
  }

  static String calcPercent(String x) => (double.parse(x) / 100).toString();

  static void _percent() {

    if (_valB != '0' && !_valB.contains('.')) { _valB = calcPercent(_valB); }
    else if (_valA != '0' && !_valA.contains('.')) { _valA = calcPercent(_valA); }
  }

  static void _decimal() {

    if (_valB != '0' && !_valB.contains('.')) { _valB = _valB + '.'; }
    else if (_valA != '0' && !_valA.contains('.')) { _valA = _valA + '.'; }
  }

  static void _calculate() {

    if (_operator == null || _valB == '0') { return; }

    Map<KeySymbol, dynamic> table = {
      Keys.divide: (a, b) => (a / b),
      Keys.multiply: (a, b) => (a * b),
      Keys.minus: (a, b) => (a - b),
      Keys.plus: (a, b) => (a + b)
    };

    double result = table[_operator](double.parse(_valA), double.parse(_valB));
    String str = result.toString();

    while ((str.contains('.') && str.endsWith('0')) || str.endsWith('.')) {
      str = str.substring(0, str.length - 1);
    }

    _result = str;
    refresh();
  }

  static void _condense() {

    _valA = _result;
    _valB = '0';
    _result = _operator = null;
  }
}