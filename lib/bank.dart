import 'dart:collection';

import 'package:money_example/expression.dart';
import 'package:money_example/money.dart';
import 'package:money_example/pair.dart';

class Bank {
  HashMap<Pair, int> rates = HashMap();
  Money reduce(Expression source, String to) {
    return source.reduce(this, to);
  }

  void addRate(String from, String to, int rate) {
    rates[Pair(from, to)] = rate;
  }

  int? rate(String from, to) {
    if (from == to) {
      return 1;
    } else {
      return rates[Pair(from, to)];
    }
  }
}
