import 'package:injectable/injectable.dart';
import 'package:meal_app/core/data/api/api_provider.dart';
import 'package:meal_app/feature/category/data/data_sources/category_remote_data_source.dart';
import 'package:meal_app/feature/category/data/models/category_entity.dart';
import 'package:meal_app/feature/category/domain/repositories/category_repository.dart';
import 'package:meal_app/feature/meal_detail/data/data_sources/meal_list_remote_data_source.dart';
import 'package:meal_app/feature/meal_detail/data/models/meal_detail_entity.dart';
import 'package:meal_app/feature/meal_detail/domain/repositories/meal_detail_repository.dart';
import 'package:meal_app/feature/meal_list/data/data_sources/meal_list_remote_data_source.dart';
import 'package:meal_app/feature/meal_list/data/models/meal_list_entity.dart';
import 'package:meal_app/feature/meal_list/domain/repositories/meal_list_repository.dart';

@Injectable(as: MealDetailRepository)
class MealDetailRepositoryImpl extends MealDetailRepository {
  final MailDetailRemoteDataSource _remoteDataSource;
  MealDetailRepositoryImpl(this._remoteDataSource,);

  @override
  Future<void>? getMealDetail(int mealId , ApiSuccessCallback<MealDetailResponse>? onSuccess, ApiErrorCallback? onError) async {
    try{
      await _remoteDataSource.getMealDetail(mealId)?.then((response) => {
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
