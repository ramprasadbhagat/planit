part of 'sub_category_bloc.dart';

@freezed
class SubCategoryEvent with _$SubCategoryEvent {
  const factory SubCategoryEvent.initialized() = _Initialized;
  const factory SubCategoryEvent.select(SubCategory subCategory) = _Select;
  const factory SubCategoryEvent.fetchProduct() = _FetchProduct;
  const factory SubCategoryEvent.loadMoreProduct() = _LoadMoreProduct;
}
