import 'package:money_example/money_example.dart';
import 'package:test/test.dart';

void main() {
  test('test multiplication', () {
    Dollar five = Dollar(5);
    five.times(2);
    expect(10, five.amount);
  });
}
