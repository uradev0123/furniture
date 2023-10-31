import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture/application/state/quiz/state.dart';
import 'package:furniture/domain/types/furniture/furniture.dart';

class UpdateQuestionUsecase {
  UpdateQuestionUsecase({
    required this.ref,
  });

  WidgetRef ref;

  void updateQuestion(Furniture currentFurniture) {
    final dNoti = ref.read(detailsNotifierProvider.notifier);
    final iNoti = ref.read(imageNotifierProvider.notifier);
    final iqNoti = ref.read(isQuestionNotifierProvider.notifier);

    dNoti.updateState(currentFurniture);
    iNoti.updateState(currentFurniture.imageUrl);
    iqNoti.updateState(true);
  }
}