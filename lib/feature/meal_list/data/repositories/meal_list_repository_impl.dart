import 'package:injectable/injectable.dart';
import 'package:meal_app/core/data/api/api_provider.dart';
import 'package:meal_app/feature/category/data/data_sources/category_remote_data_source.dart';
import 'package:meal_app/feature/category/data/models/category_entity.dart';
import 'package:meal_app/feature/category/domain/repositories/category_repository.dart';
import 'package:meal_app/feature/meal_list/data/data_sources/meal_list_remote_data_source.dart';
import 'package:meal_app/feature/meal_list/data/models/meal_list_entity.dart';
import 'package:meal_app/feature/meal_list/domain/repositories/meal_list_repository.dart';

@Injectable(as: MealListRepository)
class MealListRepositoryImpl extends MealListRepository {
  final MailListRemoteDataSource _remoteDataSource;
  MealListRepositoryImpl(this._remoteDataSource,);

  @override
  Future<void>? getMealList(String categoryName , ApiSuccessCallback<MealResponse>? onSuccess, ApiErrorCallback? onError) async {
    try{
      await _remoteDataSource.getMealList(categoryName)?.then((response) => {
        if (response!= null ){
          onSuccess?.call(response)
        }else {
          onError?.call(-1 , 'fail')
        }
      }).onError((error, stackTrace) {
        onError!.call(
          -2,
          error?.toString()??'',
        );
        return Future.error(error!) ;
      });
    }
    catch (e){
      onError!.call(
        2,
        e.toString(),
      );
    }



  }


}
