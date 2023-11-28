
import 'package:injectable/injectable.dart';
import 'package:meal_app/feature/meal_detail/data/data_sources/meal_detail_api.dart';
import 'package:meal_app/feature/meal_detail/data/models/meal_detail_entity.dart';
import 'package:meal_app/feature/meal_list/data/data_sources/meal_list_api.dart';
import 'package:meal_app/feature/meal_list/data/models/meal_list_entity.dart';

@injectable
class MailDetailRemoteDataSource{
  MailDetailApi api ;

  MailDetailRemoteDataSource(this.api);

  Future<MealDetailResponse?>? getMealDetail(int mealId) => api.getMealDetail(mealId);
}
