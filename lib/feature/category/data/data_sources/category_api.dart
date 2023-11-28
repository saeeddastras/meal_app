import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:meal_app/core/data/api/api_provider.dart';
import 'package:meal_app/feature/category/data/models/category_entity.dart';
import 'package:retrofit/retrofit.dart';


part 'category_api.g.dart';

@injectable
@RestApi()
abstract class CategoryApi {
  @factoryMethod
  factory CategoryApi() => _CategoryApi(ApiProvider.dio!);

  @GET('/categories')
  Future<CategoriesModel> getCategory();
}
