import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:models/models.dart';
import 'package:repositories/repositories.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final ProductsRepository _productsRepository;

  HomeBloc(this._productsRepository) : super(HomeState.loading()) {
    on<InitialDataHomeEvent>(_initialDataHome);
    on<HomeDeleteProductIDEvent>(_deleteProductId);
  }

  FutureOr<void> _initialDataHome(
    InitialDataHomeEvent event,
    Emitter<HomeState> emit,
  ) async {
    final result = await _productsRepository.getAllProducts();
    emit(HomeState.initial(products: result));
  }

  FutureOr<void> _deleteProductId(
    HomeDeleteProductIDEvent event,
    Emitter<HomeState> emit,
  ) async {
    await _productsRepository.deleteProduct(event.id);
    final result = await _productsRepository.getAllProducts();
    emit(HomeState.initial(products: result));
  }
}
