import 'package:money_example/Dollar.dart';
import 'package:money_example/Franc.dart';
import 'package:money_example/Money.dart';
import 'package:test/test.dart';

void main() {
  test('test multiplication', () {
    Money fiveDollars = Money.dollar(5);

    expect(fiveDollars.times(2), Money.dollar(10));
    expect(fiveDollars.times(3), Money.dollar(15));
  });

  test('test equality', () {
    expect(Money.dollar(5) == Money.dollar(5), true);
    expect(Money.dollar(5) == Money.dollar(6), false);
    expect(Franc(5) == Franc(5), true);
    expect(Franc(5) == Franc(6), false);
    expect(Money.dollar(5) == Franc(5), false);
  });

  test('test Franc multiplication', () {
    Franc five = Franc(5);

    expect(five.times(2), Franc(10));
    expect(five.times(3), Franc(15));
  });
}
