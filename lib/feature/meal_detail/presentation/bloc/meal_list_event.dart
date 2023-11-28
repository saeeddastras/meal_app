part of 'meal_list_bloc.dart';

@immutable
abstract class MealListEvent {}

class OnGetMealsEvent extends MealListEvent {
  String categoryName ;

  OnGetMealsEvent(this.categoryName);
}