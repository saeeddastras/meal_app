import 'package:injectable/injectable.dart';
import 'package:meal_app/feature/meal_detail/data/models/meal_detail_entity.dart';
import 'package:meal_app/feature/meal_detail/domain/repositories/meal_detail_repository.dart';
import 'package:meal_app/feature/meal_list/data/models/meal_list_entity.dart';
import 'package:meal_app/feature/meal_list/domain/repositories/meal_list_repository.dart';

import '../../../../core/data/api/api_provider.dart';

@injectable
class MealDetailUseCase {
  final MealDetailRepository _repository;

  MealDetailUseCase(this._repository);

  Future<void>? getMealDetail(
          int mealId, ApiSuccessCallback<MealDetailResponse>? onSuccess, ApiErrorCallback? onError) =>
      _repository.getMealDetail(mealId, onSuccess, onError);
}
