import 'package:furniture/domain/types/types.dart';
import 'package:furniture/infrastructure/firebase/firestore_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'list.g.dart';


@riverpod
class ListNotifier extends _$ListNotifier {
  @override
  Future<List<Furniture>> build() async {
    final service = FirestoreService();
    final list = await service.readFurnitureList();
    return list;
  }
}