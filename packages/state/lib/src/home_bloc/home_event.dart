part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.initialData() = InitialDataHomeEvent;
  const factory HomeEvent.deleteProduct(String id) = HomeDeleteProductIDEvent;
}
