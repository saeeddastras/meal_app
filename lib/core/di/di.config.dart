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
import '../../feature/category/presentation/blocs/category_bloc.dart' as _i8;

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
  gh.factory<_i8.CategoryBloc>(
      () => _i8.CategoryBloc(gh<_i7.CategoryUseCase>()));
  return getIt;
}
