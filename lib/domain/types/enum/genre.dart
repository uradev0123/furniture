enum GENRE {
  all('全て'),
  designer('デザイナー'),
  brand('ブランド'),
  culture('文化');

  final String displayName;
  const GENRE(this.displayName);

  @override
  String toString() => displayName;
}