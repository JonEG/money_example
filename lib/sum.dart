import 'package:money_example/bank.dart';
import 'package:money_example/expression.dart';
import 'package:money_example/money.dart';

class Sum implements Expression {
  Sum(this.augend, this.addend);

  Expression augend;
  Expression addend;

  @override
  Money reduce(Bank bank, String to) {
    Money reducedAugend = bank.reduce(augend, to);
    Money reducedAddend = bank.reduce(addend, to);
    int amount = reducedAugend.amount + reducedAddend.amount;
    return Money(amount, to);
  }

  @override
  Expression times(int multiplier) {
    return Sum(augend.times(multiplier), addend.times(multiplier));
  }

  @override
  Expression plus(Expression addend) {
    return Sum(this, addend);
  }
}
