

import 'package:meal_app/core/data/api/api_provider.dart';
import 'package:meal_app/feature/category/data/models/category_entity.dart';
import 'package:meal_app/feature/meal_detail/data/models/meal_detail_entity.dart';
import 'package:meal_app/feature/meal_list/data/models/meal_list_entity.dart';

abstract class MealDetailRepository {
  Future<void>? getMealDetail(int mealId , ApiSuccessCallback<MealDetailResponse>? onSuccess, ApiErrorCallback? onError);
}
