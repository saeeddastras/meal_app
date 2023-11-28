part of 'meal_detail_bloc.dart';

@immutable
class MealDetailState {
  RequestStatus requestStatus;
  int? mealId ;
  MealDetailModel? mealDetail;

  MealDetailState({required this.requestStatus, this.mealId, this.mealDetail});

  MealDetailState copyWith({
    RequestStatus? requestStatus,
    int? mealId,
    MealDetailModel? mealDetail,
  }) {
    return MealDetailState(
      requestStatus: requestStatus ?? this.requestStatus,
      mealId: mealId ?? this.mealId,
      mealDetail: mealDetail ?? this.mealDetail,
    );
  }
}
