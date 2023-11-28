

import 'package:meal_app/core/data/api/api_provider.dart';
import 'package:meal_app/feature/category/data/models/category_entity.dart';
import 'package:meal_app/feature/meal_list/data/models/meal_list_entity.dart';

abstract class MealListRepository {
  Future<void>? getMealList(String categoryName , ApiSuccessCallback<MealResponse>? onSuccess, ApiErrorCallback? onError);
}
