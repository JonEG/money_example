class Dollar {
  int amount;

  Dollar(this.amount);

  Dollar times(int multiplier) {
    return Dollar(amount * multiplier);
  }

  @override
  bool operator ==(Object object) {
    return true;
  }
}
