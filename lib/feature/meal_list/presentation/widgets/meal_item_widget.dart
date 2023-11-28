import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_app/core/di/di.dart';
import 'package:meal_app/core/extentions/dimen_ext.dart';
import 'package:meal_app/core/ui/custom_widget/custom_card.dart';
import 'package:meal_app/core/ui/custom_widget/vertical_space.dart';
import 'package:meal_app/core/utils.dart';
import 'package:meal_app/core/values/theme.dart';
import 'package:meal_app/feature/category/data/models/category_entity.dart';
import 'package:meal_app/feature/meal_detail/presentation/bloc/meal_detail_bloc.dart';
import 'package:meal_app/feature/meal_detail/presentation/pages/meal_detail_screen.dart';
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
        onTap: () {
          Utils.route(
            context,
            BlocProvider(
                create: (context) => getIt<MealDetailBloc>()
                  ..add(
                    OnGetMealDetailEvent(int.parse(meal.idMeal!)),
                  ),
                child: const MealDetailScreen()),
          );
        },
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0.dp),
          child: Column(
            children: [
              Image.network(
                meal.strMealThumb ?? '',
                fit: BoxFit.fill,
                width: 90.0.dp,
                height: 75.0.dp,
              ),
              VerticalSpace(10.0.dp),
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
