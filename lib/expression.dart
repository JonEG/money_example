import 'package:money_example/bank.dart';
import 'package:money_example/money.dart';

abstract class Expression {
  Money reduce(Bank bank, String to);
}
