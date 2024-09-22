import 'package:money_example/Dollar.dart';

abstract class Money {
  final int _amount;

  Money(this._amount);

  @override
  bool operator ==(Object other) {
    Money money = other as Money;
    return _amount == money._amount && runtimeType == other.runtimeType;
  }

  Money times(int multiplier);

  static Dollar dollar(int amount) {
    return Dollar(amount);
  }
}
