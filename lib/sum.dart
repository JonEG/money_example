import 'package:money_example/expression.dart';
import 'package:money_example/money.dart';

class Sum implements Expression {
  Sum(this.augend, this.addend);

  Money augend;
  Money addend;

  @override
  Money reduce(String to) {
    int amount = augend.amount + addend.amount;
    return Money(amount, to);
  }
}
