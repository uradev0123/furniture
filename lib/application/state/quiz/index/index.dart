import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'index.g.dart';

@riverpod
class IndexNotifier extends _$IndexNotifier {
  @override
  int build() {
    return 0;
  }

  // テストの状態更新
  void updateState(){
    // 変更前のデータ（stateはパッケージが保持する変数。多分notifierが現在監視している値）
    final oldState = state;
    // 変更後のデータ
    final newState = oldState + 1;
    // データを上書き
    state = newState;
  }
}