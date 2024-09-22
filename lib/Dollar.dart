import 'package:money_example/Money.dart';

class Dollar extends Money {
  final int _amount;
  Dollar(this._amount) : super(_amount);

  @override
  Money times(int multiplier) {
    return Dollar(_amount * multiplier);
  }
}
