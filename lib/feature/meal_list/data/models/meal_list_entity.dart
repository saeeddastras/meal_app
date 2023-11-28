
import 'package:json_annotation/json_annotation.dart';
part 'meal_list_entity.g.dart';


@JsonSerializable()
class MealResponse {
  List<MealModel>? meals;



  MealResponse({this.meals});

  factory MealResponse.fromJson(Map<String, dynamic> json) => _$MealResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MealResponseToJson(this);
}

@JsonSerializable()
class MealModel {
  String? strMeal;
  String? strMealThumb;
  String? idMeal;


  MealModel({this.strMeal, this.strMealThumb, this.idMeal,});

  factory MealModel.fromJson(Map<String, dynamic> json) => _$MealModelFromJson(json);

  Map<String, dynamic> toJson() => _$MealModelToJson(this);
}
