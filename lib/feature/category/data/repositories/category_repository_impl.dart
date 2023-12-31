import 'package:injectable/injectable.dart';
import 'package:meal_app/core/data/api/api_provider.dart';
import 'package:meal_app/feature/category/data/data_sources/category_remote_data_source.dart';
import 'package:meal_app/feature/category/data/models/category_entity.dart';
import 'package:meal_app/feature/category/domain/repositories/category_repository.dart';

@Injectable(as: CategoryRepository)
class CategoryRepositoryImpl extends CategoryRepository {
  final CategoryRemoteDataSource _remoteDataSource;

  CategoryRepositoryImpl(this._remoteDataSource,);

  @override
  Future<void>? getCategory(ApiSuccessCallback<CategoriesModel>? onSuccess, ApiErrorCallback? onError) async {
    try{
      await _remoteDataSource.getCategory()?.then((response) => {
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
