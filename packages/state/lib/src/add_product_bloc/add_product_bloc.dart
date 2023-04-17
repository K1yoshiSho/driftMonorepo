import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:models/models.dart';
import 'package:repositories/repositories.dart';

part 'add_product_bloc.freezed.dart';
part 'add_product_event.dart';
part 'add_product_state.dart';

@injectable
class AddProductBloc extends Bloc<AddProductEvent, AddProductState> {
  final ProductsRepository _productsRepository;

  AddProductBloc(this._productsRepository) : super(AddProductState.loading()) {
    on<AddItemProductEvent>(_addProduct);
  }

  FutureOr<void> _addProduct(
    AddItemProductEvent event,
    Emitter<AddProductState> emit,
  ) async {
    final result = await _productsRepository.getAllProducts();
    await _productsRepository.insertProduct(
      ProductsModel(
        id: result.isEmpty ? "0" : "${int.parse(result.last.id)})}",
        name: event.name,
        description: event.description,
        productImage: event.productImage,
        catalog: event.category,
        cost: event.cost,
      ),
    );
    emit(AddProductState.addedProduct());
  }
}
