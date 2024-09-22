class Franc {
  final int _amount;

  //int get amount => _amount;

  Franc(this._amount);

  Franc times(int multiplier) {
    return Franc(_amount * multiplier);
  }

  @override
  bool operator ==(Object other) {
    Franc franc = other as Franc;
    return _amount == franc._amount;
  }
}
