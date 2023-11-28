
import 'package:injectable/injectable.dart';
import 'package:meal_app/feature/category/data/data_sources/category_api.dart';
import 'package:meal_app/feature/category/data/models/category_entity.dart';

@injectable
class CategoryRemoteDataSource{
  CategoryApi api ;

  CategoryRemoteDataSource(this.api);

  Future<CategoriesModel> getCategory() => api.getCategory();
}
