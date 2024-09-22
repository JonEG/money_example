import 'package:money_example/expression.dart';
import 'package:money_example/sum.dart';

class Money implements Expression {
  final int _amount;
  final String _currency;

  String get currency => _currency;
  int get amount => _amount;

  Money(this._amount, this._currency);

  @override
  bool operator ==(Object other) {
    Money money = other as Money;
    return _amount == money._amount && _currency == other._currency;
  }

  Money times(int multiplier) {
    return Money(_amount * multiplier, _currency);
  }

  Expression plus(Money addend) {
    return Sum(this, addend);
  }

  @override
  Money reduce(String to) {
    return this;
  }

  static Money dollar(int amount) {
    return Money(amount, 'USD');
  }

  static Money franc(int amount) {
    return Money(amount, 'CHF');
  }

  @override
  String toString() {
    return "$_amount $_currency";
  }
}
