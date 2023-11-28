import 'package:injectable/injectable.dart';
import 'package:meal_app/feature/category/domain/repositories/category_repository.dart';

import '../../../../core/data/api/api_provider.dart';
import '../../data/models/category_entity.dart';

@injectable
class CategoryUseCase {
  final CategoryRepository _repository;

  CategoryUseCase(this._repository);

  Future<void>? getCategory(ApiSuccessCallback<CategoriesModel>? onSuccess, ApiErrorCallback? onError) => _repository.getCategory(onSuccess , onError);

}
