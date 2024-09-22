import 'package:money_example/money.dart';

abstract class Expression {
  Money reduce(String to);
}
