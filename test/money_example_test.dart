import 'package:money_example/money_example.dart';
import 'package:test/test.dart';

void main() {
  test('test multiplication', () {
    Dollar five = Dollar(5);

    expect(five.times(2), Dollar(10));
    expect(five.times(3), Dollar(15));
  });

  test('test equality', () {
    bool assertTrue = Dollar(5) == Dollar(5);
    expect(assertTrue, true);
    bool assertFalse = Dollar(5) == Dollar(6);
    expect(assertFalse, false);
  });
}
