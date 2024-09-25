import 'package:money_example/bank.dart';
import 'package:money_example/expression.dart';
import 'package:money_example/money.dart';
import 'package:money_example/sum.dart';
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

  test('test simple addition', () {
    Money five = Money.dollar(5);
    Expression sum = five.plus(five);
    Bank bank = Bank();
    Money reduced = bank.reduce(sum, 'USD');
    expect(reduced, Money.dollar(10));
  });

  test('test plus returns Sum', () {
    Money five = Money.dollar(5);
    Expression result = five.plus(five);
    Sum sum = result as Sum;
    expect(five, sum.augend);
    expect(five, sum.addend);
  });

  test('test reduce sum', () {
    Expression sum = Sum(Money.dollar(3), Money.dollar(4));
    Bank bank = Bank();
    Money result = bank.reduce(sum, 'USD');
    expect(result, Money.dollar(7));
  });

  test('test reduce money', () {
    Bank bank = Bank();
    Money result = bank.reduce(Money.dollar(1), 'USD');
    expect(result, Money.dollar(1));
  });

  test('test reduce money different currency', () {
    Bank bank = Bank();
    bank.addRate("CHF", "USD", 2);
    Money result = bank.reduce(Money.franc(4), "USD");
    expect(result, Money.dollar(2));
  });

  test('test identity rate', () {
    Bank bank = Bank();
    expect(bank.rate("USD", "USD"), 1.0);
  });

  test('test mixed addition', () {
    Expression fiveBucks = Money.dollar(5);
    Expression tenFrancs = Money.franc(10);
    Bank bank = Bank();
    bank.addRate("CHF", "USD", 2);
    Money result = bank.reduce(fiveBucks.plus(tenFrancs), "USD");
    expect(result, Money.dollar(10));
  });

  test('test sum plus money', () {
    Expression fiveBucks = Money.dollar(5);
    Expression tenFrancs = Money.franc(10);
    Bank bank = Bank();
    bank.addRate("CHF", "USD", 2);
    Expression sum = Sum(fiveBucks, tenFrancs).plus(fiveBucks);
    Money result = bank.reduce(sum, "USD");
    expect(result, Money.dollar(15));
  });
  test('test sum times', () {
    Expression fiveBucks = Money.dollar(5);
    Expression tenFrancs = Money.franc(10);
    Bank bank = Bank();
    bank.addRate("CHF", "USD", 2);
    Expression sum = Sum(fiveBucks, tenFrancs).times(2);
    Money result = bank.reduce(sum, "USD");
    expect(result, Money.dollar(20));
  });
}
