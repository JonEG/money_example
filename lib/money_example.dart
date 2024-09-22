class Dollar {
  final int _amount;

  //int get amount => _amount;

  Dollar(this._amount);

  Dollar times(int multiplier) {
    return Dollar(_amount * multiplier);
  }

  @override
  bool operator ==(Object other) {
    Dollar dollar = other as Dollar;
    return _amount == dollar._amount;
  }
}
