import 'package:money_example/Money.dart';

class Franc extends Money {
  final int _amount;
  final String _currency;
  Franc(this._amount, this._currency) : super(_amount, _currency);

  Money times(int multiplier) {
    return Money.franc(_amount * multiplier);
  }
}
