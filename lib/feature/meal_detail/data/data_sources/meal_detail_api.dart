import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:meal_app/core/data/api/api_provider.dart';
import 'package:meal_app/feature/category/data/models/category_entity.dart';
import 'package:meal_app/feature/meal_list/data/models/meal_list_entity.dart';
import 'package:retrofit/retrofit.dart';


part 'meal_detail_api.g.dart';

@injectable
@RestApi()
abstract class MailDetailApi {
  @factoryMethod
  factory MailDetailApi() => _MailDetailApi(ApiProvider.dio!);

  @GET('//lookup.php')
  Future<MealResponse?>? getMealList(@Query('c') String categoryName);
}
