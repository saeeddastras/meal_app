
import 'package:injectable/injectable.dart';
import 'package:meal_app/feature/meal_list/data/data_sources/meal_list_api.dart';
import 'package:meal_app/feature/meal_list/data/models/meal_list_entity.dart';

@injectable
class MailListRemoteDataSource{
  MailListApi api ;

  MailListRemoteDataSource(this.api);

  Future<MealResponse?>? getMealList(String categoryName) => api.getMealList(categoryName);
}
