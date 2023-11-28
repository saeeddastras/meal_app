import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meal_app/core/data/model/request_status.dart';
import 'package:meal_app/feature/meal_detail/data/models/meal_detail_entity.dart';
import 'package:meal_app/feature/meal_detail/domain/use_cases/meal_detail_use_case.dart';
import 'package:meal_app/feature/meal_list/data/models/meal_list_entity.dart';
import 'package:meal_app/feature/meal_list/domain/use_cases/meal_list_use_case.dart';
import 'package:meta/meta.dart';

part 'meal_detail_event.dart';

part 'meal_detail_state.dart';

@injectable
class MealDetailBloc extends Bloc<MealDetailEvent, MealDetailState> {
  final MealDetailUseCase _useCase;

  MealDetailBloc(this._useCase)
      : super(
          MealDetailState(
            requestStatus: RequestStatus(
              responseStatus: ResponseStatus.initial,
            ),
          ),
        ) {
    on<OnGetMealDetailEvent>((event, emit) async {
      await _onGetMeals(event, emit);
    });
  }

  Future<void> _onGetMeals(OnGetMealDetailEvent event, Emitter<MealDetailState> emit) async {
    emit(
      state.copyWith(
        requestStatus: RequestStatus(
          responseStatus: ResponseStatus.initial,
        ),
      ),
    );

    await _useCase.getMealDetail(event.mealId, (response) {
      if ((response.mealsDetail ?? []).isNotEmpty) {
        emit(
          state.copyWith(
            requestStatus: RequestStatus(
              responseStatus: ResponseStatus.success,
            ),
            mealDetail: response.mealsDetail![0]
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
