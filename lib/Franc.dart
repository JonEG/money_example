import 'package:money_example/Money.dart';

class Franc extends Money {
  final int _amount;
  Franc(this._amount) : super(_amount);

  Money times(int multiplier) {
    return Franc(_amount * multiplier);
  }
}
