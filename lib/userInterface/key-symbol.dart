import 'buttonKeys.dart';

enum KeyType { FUNCTION, OPERATOR, INTEGER }

class KeySymbol {

  const KeySymbol(this.value);
  final String value;

  static List<KeySymbol> _functions = [Keys.clear, Keys.decimal];
  static List<KeySymbol> _operators = [ Keys.equals, Keys.plus, Keys.minus, Keys.divide,  Keys.multiply];

  @override
  String toString() => value;

  bool get isOperator => _operators.contains(this);
  bool get isFunction => _functions.contains(this);
  bool get isInteger => !isOperator && !isFunction;

  KeyType get type => isFunction ? KeyType.FUNCTION : (isOperator ? KeyType.OPERATOR : KeyType.INTEGER);
}