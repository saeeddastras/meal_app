import 'package:flutter/material.dart';
import 'package:meal_app/core/extentions/dimen_ext.dart';
import 'package:meal_app/core/ui/custom_widget/custom_card.dart';
import 'package:meal_app/core/values/theme.dart';
import 'package:meal_app/feature/category/data/models/category_entity.dart';
import 'package:meal_app/feature/meal_list/data/models/meal_list_entity.dart';


class MealItemWidget extends StatelessWidget {
  final MealModel meal;

  const MealItemWidget({Key? key, required this.meal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
height: 170,
      child: CustomCard(
        backgroundColor: AppTheme().cardBackground,
        onTap: (){},
        child: Padding(
          padding: EdgeInsets.symmetric(vertical:
          10.0.dp),
          child: Column(
            children: [
              Image.network(
                meal.strMealThumb ?? '',
                fit: BoxFit.fill,
                width: 90.0.dp,
                height: 75.0.dp,

              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  meal.strMeal ?? '',
                  maxLines: 2,
                  style: AppTheme().textPrimary5Bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}