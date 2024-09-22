import 'package:money_example/Dollar.dart';
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
    expect(Money.franc(5) == Money.franc(5), true);
    expect(Money.franc(5) == Money.franc(6), false);
    expect(Money.dollar(5) == Money.franc(5), false);
  });

  test('test Franc multiplication', () {
    Money five = Money.franc(5);

    expect(five.times(2), Money.franc(10));
    expect(five.times(3), Money.franc(15));
  });

  test('test currency', () {
    expect(Money.dollar(1).currency, 'USD');
    expect(Money.franc(1).currency, 'CHF');
  });

  test('test different class equality', () {
    expect(Money(1, 'USD') == Dollar(1, 'USD'), true);
  });
}
