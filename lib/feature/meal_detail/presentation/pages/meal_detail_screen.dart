import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_app/core/data/model/request_status.dart';
import 'package:meal_app/core/extentions/dimen_ext.dart';
import 'package:meal_app/core/ui/custom_widget.dart';
import 'package:meal_app/core/ui/custom_widget/empty_widget.dart';
import 'package:meal_app/core/ui/custom_widget/error_widget.dart';
import 'package:meal_app/core/ui/custom_widget/horizontal_space.dart';
import 'package:meal_app/core/ui/custom_widget/primary_loading.dart';
import 'package:meal_app/core/ui/custom_widget/vertical_space.dart';
import 'package:meal_app/core/values/strings.dart';
import 'package:meal_app/core/values/theme.dart';
import 'package:meal_app/feature/meal_detail/presentation/bloc/meal_detail_bloc.dart';
import 'package:meal_app/feature/meal_list/presentation/widgets/meal_item_widget.dart';

class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme().backgroundColor,
      appBar: getAppBarWidget(Strings.mealDetail, []),
      body: BlocBuilder<MealDetailBloc, MealDetailState>(
        buildWhen: (previous, current) =>
            previous.requestStatus.responseStatus !=
            current.requestStatus.responseStatus,
        builder: (context, state) {
          if (state.requestStatus.responseStatus == ResponseStatus.loading ||
              state.requestStatus.responseStatus == ResponseStatus.initial) {
            return const PrimaryLoading();
          } else if (state.requestStatus.responseStatus ==
              ResponseStatus.success) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                            image: NetworkImage(
                              state.mealDetail?.strMealThumb ?? '',
                            ),
                            fit: BoxFit.cover)),
                  ),
                  VerticalSpace(12.0.dp),
                  Padding(
                    padding: EdgeInsets.only(left: 12.0.dp, right: 12.0.dp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          state.mealDetail?.strMeal ?? '',
                          style: AppTheme().textPrimary2Bold,
                        ),
                        VerticalSpace(16.0.dp),
                        Row(
                          children: [
                            Text(
                              '${Strings.mealCategory} :',
                              style: AppTheme().textSecondary4Bold,
                            ),
                            HorizontalSpace(4.0.dp),
                            Text(
                              state.mealDetail?.strCategory ?? '',
                              style: AppTheme().textPrimaryColors4Bold,
                            ),
                          ],
                        ),
                        VerticalSpace(12.0.dp),
                        Container(
                          width: double.infinity,
                          height: 1.0.dp,
                          color: AppTheme().divider,
                        ),
                        VerticalSpace(12.0.dp),
                        Text(
                          Strings.description,
                          style: AppTheme().textPrimary4Bold,
                        ),
                        VerticalSpace(4.0.dp),
                        Text(
                          state.mealDetail?.strInstructions ?? '',
                          style: AppTheme().textSecondary4Medium,
                        ),
                        VerticalSpace(12.0.dp),
                      ],
                    ),
                  )
                ],
              ),
            );
          } else if (state.requestStatus.responseStatus ==
              ResponseStatus.empty) {
            return const EmptyWidget();
          } else if (state.requestStatus.responseStatus ==
              ResponseStatus.error) {
            return const CustomErrorWidget();
          } else if (state.requestStatus.responseStatus ==
              ResponseStatus.connectionError) {
            return Container();
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
