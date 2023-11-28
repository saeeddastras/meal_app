

import 'package:meal_app/core/data/api/api_provider.dart';
import 'package:meal_app/feature/category/data/models/category_entity.dart';

abstract class CategoryRepository {
  Future<void>? getCategory(ApiSuccessCallback<CategoriesModel>? onSuccess, ApiErrorCallback? onError);
}
