class Pair {
  final String _from;
  final String _to;

  Pair(this._from, this._to);

  @override
  bool operator ==(Object other) {
    Pair pair = other as Pair;
    return _from == pair._from && _to == pair._to;
  }

  @override
  int get hashCode {
    return _from.hashCode ^ _to.hashCode;
  }
}
