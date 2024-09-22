import 'package:money_example/Dollar.dart';
import 'package:money_example/Franc.dart';

abstract class Money {
  final int _amount;
  final String currency;

  Money(this._amount, this.currency);

  @override
  bool operator ==(Object other) {
    Money money = other as Money;
    return _amount == money._amount && runtimeType == other.runtimeType;
  }

  Money times(int multiplier);

  static Money dollar(int amount) {
    return Dollar(amount, 'USD');
  }

  static Money franc(int amount) {
    return Franc(amount, 'CHF');
  }
}
