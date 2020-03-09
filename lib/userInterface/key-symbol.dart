import 'buttonKeys.dart';

enum KeyType { FUNCTION, OPERATOR, INTEGER }

class KeySymbol {

  const KeySymbol(this.value);
  final String value;

  static List<KeySymbol> _functions = [];
  static List<KeySymbol> _operators = [ Keys.clear, Keys.divide, Keys.minus, Keys.plus,Keys.multiply];

  @override
  String toString() => value;

  bool get isOperator => _operators.contains(this);
  bool get isFunction => _functions.contains(this);
  bool get isInteger => !isOperator && !isFunction;

  KeyType get type => isFunction ? KeyType.FUNCTION : (isOperator ? KeyType.OPERATOR : KeyType.INTEGER);
}