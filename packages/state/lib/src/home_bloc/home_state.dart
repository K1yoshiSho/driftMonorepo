part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial({List<ProductsModel>? products}) = HomeInitialState;
  const factory HomeState.loading() = HomeLoadingState;
}
