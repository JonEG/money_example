class Money {
  final int _amount;

  Money(this._amount);

  @override
  bool operator ==(Object other) {
    Money money = other as Money;
    return _amount == money._amount && runtimeType == other.runtimeType;
  }
}
