part of 'add_product_bloc.dart';

@freezed
class AddProductState with _$AddProductState {
  const factory AddProductState.addedProduct() = AddedProductState;
  const factory AddProductState.loading() = AddProductLoadingState;
}
