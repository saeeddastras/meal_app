import 'package:injectable/injectable.dart';
import 'package:meal_app/core/data/api/api_provider.dart';
import 'package:meal_app/feature/category/data/data_sources/category_remote_data_source.dart';
import 'package:meal_app/feature/category/data/models/category_entity.dart';
import 'package:meal_app/feature/category/domain/repositories/category_repository.dart';

@Injectable(as: CategoryRepository)
class CategoryRepositoryImpl extends CategoryRepository {
  final CategoryRemoteDataSource _remoteDataSource;

  CategoryRepositoryImpl(
    this._remoteDataSource,
  );

  @override
  Future<void>? getCategory(ApiSuccessCallback<CategoriesModel>? onSuccess, ApiErrorCallback? onError) => _remoteDataSource.getCategory();


}
