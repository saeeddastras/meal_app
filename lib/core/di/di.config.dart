// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../feature/category/data/data_sources/category_api.dart' as _i3;
import '../../feature/category/data/data_sources/category_remote_data_source.dart'
    as _i4;
import '../../feature/category/data/repositories/category_repository_impl.dart'
    as _i6;
import '../../feature/category/domain/repositories/category_repository.dart'
    as _i5;
import '../../feature/category/domain/use_cases/category_use_case.dart' as _i7;
import '../../feature/category/presentation/blocs/category_bloc.dart' as _i18;
import '../../feature/meal_detail/data/data_sources/meal_detail_api.dart'
    as _i8;
import '../../feature/meal_detail/data/data_sources/meal_list_remote_data_source.dart'
    as _i9;
import '../../feature/meal_detail/data/repositories/meal_detail_repository_impl.dart'
    as _i13;
import '../../feature/meal_detail/domain/repositories/meal_detail_repository.dart'
    as _i12;
import '../../feature/meal_detail/domain/use_cases/meal_detail_use_case.dart'
    as _i14;
import '../../feature/meal_detail/presentation/bloc/meal_detail_bloc.dart'
    as _i19;
import '../../feature/meal_list/data/data_sources/meal_list_api.dart' as _i10;
import '../../feature/meal_list/data/data_sources/meal_list_remote_data_source.dart'
    as _i11;
import '../../feature/meal_list/data/repositories/meal_list_repository_impl.dart'
    as _i16;
import '../../feature/meal_list/domain/repositories/meal_list_repository.dart'
    as _i15;
import '../../feature/meal_list/domain/use_cases/meal_list_use_case.dart'
    as _i17;
import '../../feature/meal_list/presentation/bloc/meal_list_bloc.dart' as _i20;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.CategoryApi>(() => _i3.CategoryApi());
  gh.factory<_i4.CategoryRemoteDataSource>(
      () => _i4.CategoryRemoteDataSource(gh<_i3.CategoryApi>()));
  gh.factory<_i5.CategoryRepository>(
      () => _i6.CategoryRepositoryImpl(gh<_i4.CategoryRemoteDataSource>()));
  gh.factory<_i7.CategoryUseCase>(
      () => _i7.CategoryUseCase(gh<_i5.CategoryRepository>()));
  gh.factory<_i8.MailDetailApi>(() => _i8.MailDetailApi());
  gh.factory<_i9.MailDetailRemoteDataSource>(
      () => _i9.MailDetailRemoteDataSource(gh<_i8.MailDetailApi>()));
  gh.factory<_i10.MailListApi>(() => _i10.MailListApi());
  gh.factory<_i11.MailListRemoteDataSource>(
      () => _i11.MailListRemoteDataSource(gh<_i10.MailListApi>()));
  gh.factory<_i12.MealDetailRepository>(() =>
      _i13.MealDetailRepositoryImpl(gh<_i9.MailDetailRemoteDataSource>()));
  gh.factory<_i14.MealDetailUseCase>(
      () => _i14.MealDetailUseCase(gh<_i12.MealDetailRepository>()));
  gh.factory<_i15.MealListRepository>(
      () => _i16.MealListRepositoryImpl(gh<_i11.MailListRemoteDataSource>()));
  gh.factory<_i17.MealListUseCase>(
      () => _i17.MealListUseCase(gh<_i15.MealListRepository>()));
  gh.factory<_i18.CategoryBloc>(
      () => _i18.CategoryBloc(gh<_i7.CategoryUseCase>()));
  gh.factory<_i19.MealDetailBloc>(
      () => _i19.MealDetailBloc(gh<_i14.MealDetailUseCase>()));
  gh.factory<_i20.MealListBloc>(
      () => _i20.MealListBloc(gh<_i17.MealListUseCase>()));
  return getIt;
}
