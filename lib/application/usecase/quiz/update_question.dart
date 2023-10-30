import 'package:furniture/application/state/quiz/state.dart';
import 'package:furniture/domain/types/furniture/furniture.dart';

class UpdateQuestionUsecase {
  UpdateQuestionUsecase({
    required this.detailsNotifier,
    required this.imageNotifier,
    required this.isQuestionNotifier,
  });

  DetailsNotifier detailsNotifier;
  ImageNotifier imageNotifier;
  IsQuestionNotifier isQuestionNotifier;

  void updateQuestion(Furniture currentFurniture) {
    // 詳細テキストを変更
    detailsNotifier.updateState(currentFurniture);
    // 画像を変更
    imageNotifier.updateState(currentFurniture.imageUrl);
    // 画面状態を問題中に変更
    isQuestionNotifier.updateState(true);
  }
}