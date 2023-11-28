import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meal_app/core/data/model/request_status.dart';
import 'package:meal_app/feature/meal_detail/domain/use_cases/meal_detail_use_case.dart';
import 'package:meal_app/feature/meal_list/data/models/meal_list_entity.dart';
import 'package:meal_app/feature/meal_list/domain/use_cases/meal_list_use_case.dart';
import 'package:meta/meta.dart';

part 'meal_list_event.dart';

part 'meal_list_state.dart';

@injectable
class MealListBloc extends Bloc<MealListEvent, MealListState> {
  final MealListUseCase _useCase;

  MealListBloc(this._useCase)
      : super(
          MealListState(
            requestStatus: RequestStatus(
              responseStatus: ResponseStatus.initial,
            ),
          ),
        ) {
    on<OnGetMealsEvent>((event, emit) async {
      await _onGetMeals(event, emit);
    });
  }

  Future<void> _onGetMeals(OnGetMealsEvent event, Emitter<MealListState> emit) async {
    emit(
      state.copyWith(
        requestStatus: RequestStatus(
          responseStatus: ResponseStatus.initial,
        ),
      ),
    );

    await _useCase.getMealList(event.categoryName, (response) {
      if ((response.meals ?? []).isNotEmpty) {
        emit(
          state.copyWith(
            requestStatus: RequestStatus(
              responseStatus: ResponseStatus.success,
            ),
            meals: response.meals
          ),
        );
      }else{
        emit(
          state.copyWith(
            requestStatus: RequestStatus(
              responseStatus: ResponseStatus.empty,
            ),
          ),
        );
      }
    }, (code, message) {
      emit(
        state.copyWith(
          requestStatus: RequestStatus(
            responseStatus: ResponseStatus.error,
          ),
        ),
      );
    });
  }
}
