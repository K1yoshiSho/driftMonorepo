part of 'add_product_bloc.dart';

@freezed
class AddProductEvent with _$AddProductEvent {
  const factory AddProductEvent.addItemProduct(
    String name,
    String description,
    String productImage,
    String category,
    String cost,
  ) = AddItemProductEvent;
}
