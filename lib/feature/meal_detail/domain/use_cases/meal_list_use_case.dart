import 'package:injectable/injectable.dart';
import 'package:meal_app/feature/meal_list/data/models/meal_list_entity.dart';
import 'package:meal_app/feature/meal_list/domain/repositories/meal_list_repository.dart';

import '../../../../core/data/api/api_provider.dart';

@injectable
class MealListUseCase {
  final MealListRepository _repository;

  MealListUseCase(this._repository);

  Future<void>? getMealList(
          String categoryName, ApiSuccessCallback<MealResponse>? onSuccess, ApiErrorCallback? onError) =>
      _repository.getMealList(categoryName, onSuccess, onError);
}
