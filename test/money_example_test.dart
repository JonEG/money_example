import 'package:money_example/Dollar.dart';
import 'package:money_example/Franc.dart';
import 'package:test/test.dart';

void main() {
  test('test multiplication', () {
    Dollar fiveDollars = Dollar(5);
    Franc fiveFrancs = Franc(5);

    expect(fiveDollars.times(2), Dollar(10));
    expect(fiveDollars.times(3), Dollar(15));
    expect(fiveFrancs.times(2), Franc(10));
    expect(fiveFrancs.times(3), Franc(15));
  });

  test('test equality', () {
    expect(Dollar(5) == Dollar(5), true);
    expect(Dollar(5) == Dollar(6), false);
    expect(Dollar(5) == Franc(5), false);
  });

  test('test Franc multiplication', () {
    Franc five = Franc(5);

    expect(five.times(2), Franc(10));
    expect(five.times(3), Franc(15));
  });
}
