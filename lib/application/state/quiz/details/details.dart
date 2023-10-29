import 'package:furniture/domain/types/types.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'details.g.dart';

@riverpod
class DetailsNotifier extends _$DetailsNotifier {
  @override
  String build() {
    return 'start';
  }

  void updateState(Furniture f) {
    state = f.details;
  }
}