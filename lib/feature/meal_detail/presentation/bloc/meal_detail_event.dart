part of 'meal_detail_bloc.dart';

@immutable
abstract class MealDetailEvent {}

class OnGetMealDetailEvent extends MealDetailEvent {
  int mealId ;

  OnGetMealDetailEvent(this.mealId);
}
