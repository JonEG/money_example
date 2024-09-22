import 'package:money_example/expression.dart';
import 'package:money_example/money.dart';

class Bank {
  Money reduce(Expression source, String to) {
    return source.reduce(to);
  }
}
