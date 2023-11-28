import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_app/core/data/model/request_status.dart';
import 'package:meal_app/core/di/di.dart';
import 'package:meal_app/core/extentions/dimen_ext.dart';
import 'package:meal_app/core/ui/custom_widget.dart';
import 'package:meal_app/core/ui/custom_widget/empty_widget.dart';
import 'package:meal_app/core/ui/custom_widget/error_widget.dart';
import 'package:meal_app/core/ui/custom_widget/primary_loading.dart';
import 'package:meal_app/core/values/strings.dart';
import 'package:meal_app/core/values/theme.dart';
import 'package:meal_app/feature/category/presentation/blocs/category_bloc.dart';
import 'package:meal_app/feature/category/presentation/widgets/category_expanded_item_widget.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      getIt<CategoryBloc>()
        ..add(OnGetCategoryEvent()),
      child: Scaffold(
        backgroundColor: AppTheme().backgroundColor,
        appBar: getAppBarWidget(Strings.mealCategory, [],showBackButton: false),
        body: BlocBuilder<CategoryBloc, CategoryState>(
          buildWhen: (previous, current) => previous.requestStatus.responseStatus!= current.requestStatus.responseStatus,
          builder: (context, state) {
            if(state.requestStatus.responseStatus == ResponseStatus.loading || state.requestStatus.responseStatus == ResponseStatus.initial){
              return const PrimaryLoading() ;
            }else if(state.requestStatus.responseStatus == ResponseStatus.success){
              return ListView.builder(
                padding: EdgeInsets.all(12.0.dp),
                itemCount: state.categoryModel?.categories?.length??0,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CategoryExpandedItemWidget(category: state.categoryModel!.categories![index]),
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
      ),
    );
  }
}
