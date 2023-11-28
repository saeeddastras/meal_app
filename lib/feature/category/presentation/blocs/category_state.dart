part of 'category_bloc.dart';

@immutable
class CategoryState {
  RequestStatus requestStatus;

  CategoriesModel? categoryModel;

  CategoryState({
    required this.requestStatus,
    this.categoryModel,
  });

  CategoryState copyWith({
    RequestStatus? requestStatus,
    CategoriesModel? categoryModel,
  }) {
    return CategoryState(
      requestStatus: requestStatus ?? this.requestStatus,
      categoryModel: categoryModel ?? this.categoryModel,
    );
  }
}
