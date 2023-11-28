part of 'meal_list_bloc.dart';

@immutable
class MealListState {
  RequestStatus requestStatus;
  String? categoryName ;
  List<MealModel>? meals;

  MealListState({
    required this.requestStatus,
    this.categoryName ,
    this.meals,
  });

  MealListState copyWith({
    RequestStatus? requestStatus,
    String? categoryName,
    List<MealModel>? meals,
  }) {
    return MealListState(
      requestStatus: requestStatus ?? this.requestStatus,
      categoryName: categoryName ?? this.categoryName,
      meals: meals ?? this.meals,
    );
  }
}
