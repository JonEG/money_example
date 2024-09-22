import 'package:money_example/Money.dart';

class Dollar extends Money {
  final int _amount;
  final String _currency;
  Dollar(this._amount, this._currency) : super(_amount, _currency);
}
