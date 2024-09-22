import 'package:money_example/Dollar.dart';
import 'package:money_example/Franc.dart';

class Money {
  final int _amount;
  final String _currency;

  String get currency => _currency;

  Money(this._amount, this._currency);

  @override
  bool operator ==(Object other) {
    Money money = other as Money;
    return _amount == money._amount && _currency == other._currency;
  }

  @override
  Money times(int multiplier) {
    return Money(_amount * multiplier, _currency);
  }

  static Money dollar(int amount) {
    return Dollar(amount, 'USD');
  }

  static Money franc(int amount) {
    return Franc(amount, 'CHF');
  }

  @override
  String toString() {
    return "$_amount $_currency";
  }
}
