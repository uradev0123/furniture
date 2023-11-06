enum CULTURE {
  scandinavian('北欧'),
  bauhouse('バウハウス'),
  midcentury('ミッドセンチュリー'),
  other('その他');

  const CULTURE(this.displayName);
  final String displayName;

  @override
  String toString() => displayName;
}