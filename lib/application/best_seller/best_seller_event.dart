part of 'best_seller_bloc.dart';

@freezed
class BestSellerEvent with _$BestSellerEvent {
  const factory BestSellerEvent.fetchProducts() = _FetchProducts;
}
