import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_app/core/data/model/request_status.dart';
import 'package:meal_app/core/extentions/dimen_ext.dart';
import 'package:meal_app/core/ui/custom_widget.dart';
import 'package:meal_app/core/ui/custom_widget/empty_widget.dart';
import 'package:meal_app/core/ui/custom_widget/error_widget.dart';
import 'package:meal_app/core/ui/custom_widget/primary_loading.dart';
import 'package:meal_app/core/values/strings.dart';
import 'package:meal_app/core/values/theme.dart';
import 'package:meal_app/feature/meal_list/presentation/bloc/meal_list_bloc.dart';
import 'package:meal_app/feature/meal_list/presentation/widgets/meal_item_widget.dart';

class MealListScreen extends StatelessWidget {
  const MealListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme().backgroundColor,
      appBar: getAppBarWidget(Strings.mealDetail, []),
      body: BlocBuilder<MealListBloc, MealListState>(
        buildWhen: (previous, current) => previous.requestStatus.responseStatus!= current.requestStatus.responseStatus,
        builder: (context, state) {
          if(state.requestStatus.responseStatus == ResponseStatus.loading || state.requestStatus.responseStatus == ResponseStatus.initial){
            return const PrimaryLoading() ;
          }else if(state.requestStatus.responseStatus == ResponseStatus.success){
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 150,
                  crossAxisSpacing: 12.0.dp,
                  mainAxisExtent: 190

              ),
              padding: EdgeInsets.all(12.0.dp),
              itemCount: state.meals?.length??0,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    MealItemWidget(meal: state.meals![index]),
                    const SizedBox(height: 20),
                  ],
                );
              },
            );
          }else if(state.requestStatus.responseStatus == ResponseStatus.empty){
            return const EmptyWidget() ;
          }else if(state.requestStatus.responseStatus == ResponseStatus.error){
            return const CustomErrorWidget();
          }else if (state.requestStatus.responseStatus == ResponseStatus.connectionError){
            return Container();
          }else {
            return Container() ;
          }

        },
      ),
    );
  }
}
