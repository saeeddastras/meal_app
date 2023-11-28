import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meal_app/core/data/model/request_status.dart';
import 'package:meal_app/feature/category/data/models/category_entity.dart';
import 'package:meal_app/feature/category/domain/use_cases/category_use_case.dart';
import 'package:meta/meta.dart';

part 'category_event.dart';
part 'category_state.dart';

@injectable
class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final CategoryUseCase _useCase ;
  CategoryBloc(this._useCase) : super(CategoryState(requestStatus: RequestStatus(responseStatus: ResponseStatus.initial))) {
    on<OnGetCategoryEvent>((event, emit) {

    });
  }

  Future<void> _onGetCategory(OnGetCategoryEvent event , Emitter<CategoryState> emit)async {
    emit(state.copyWith(requestStatus: RequestStatus(responseStatus: ResponseStatus.loading,),),);




  }
}
