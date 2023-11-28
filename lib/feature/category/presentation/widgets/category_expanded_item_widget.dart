import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_app/core/di/di.dart';
import 'package:meal_app/core/extentions/dimen_ext.dart';
import 'package:meal_app/core/ui/custom_widget/custom_card.dart';
import 'package:meal_app/core/ui/custom_widget/horizontal_space.dart';
import 'package:meal_app/core/values/theme.dart';
import 'package:meal_app/feature/category/data/models/category_entity.dart';
import 'package:meal_app/feature/meal_list/presentation/bloc/meal_list_bloc.dart';
import 'package:meal_app/feature/meal_detail/presentation/bloc/meal_detail_bloc.dart';
import 'package:meal_app/feature/meal_detail/presentation/pages/meal_detail_screen.dart';
import 'package:meal_app/feature/meal_list/presentation/pages/meal_list_screen.dart';
import 'package:readmore/readmore.dart';

import '../../../../core/utils.dart';

class CategoryExpandedItemWidget extends StatelessWidget {
  const CategoryExpandedItemWidget({Key? key, required this.category}) : super(key: key);
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
      child: CustomCard(
        onTap: () {
          Utils.route(
            context,
            BlocProvider(
              create: (context) => getIt<MealListBloc>()
                ..add(
                  OnGetMealsEvent(category.strCategory ?? ''),
                ),
              child: const MealListScreen(),
            ),
          );
        },
        child: Padding(
          padding: EdgeInsets.all(10.0.dp),
          child: Column(
            children: [
              Row(
                children: [
                  Image.network(
                    category.strCategoryThumb ?? '',
                    fit: BoxFit.fill,
                    width: 60.0.dp,
                    height: 60.0.dp,
                  ),
                  HorizontalSpace(10.0.dp),
                  Text(
                    category.strCategory ?? '',
                    style: AppTheme().textPrimary5Bold,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ReadMoreText(
                  category.strCategoryDescription ?? '',
                  trimLines: 2,
                  textScaleFactor: 1,
                  colorClickableText: Colors.red,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Show more',
                  trimExpandedText: 'Show less',
                  style: AppTheme().textSecondary5Medium,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
