import 'package:money_example/money_example.dart';
import 'package:test/test.dart';

void main() {
  test('test multiplication', () {
    Dollar five = Dollar(5);
    Dollar product = five.times(2);
    expect(product.amount, 10);
    product = five.times(3);
    expect(product.amount, 15);
  });

  test('test equality', () {
    bool assertTrue = Dollar(5) == Dollar(5);
    expect(assertTrue, true);
    bool assertFalse = Dollar(5) == Dollar(6);
    expect(assertFalse, false);
  });
}
