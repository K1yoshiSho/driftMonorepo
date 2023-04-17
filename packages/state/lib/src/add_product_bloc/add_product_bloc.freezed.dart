// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddProductEvent {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get productImage => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get cost => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String description,
            String productImage, String category, String cost)
        addItemProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String description, String productImage,
            String category, String cost)?
        addItemProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String description, String productImage,
            String category, String cost)?
        addItemProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddItemProductEvent value) addItemProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddItemProductEvent value)? addItemProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddItemProductEvent value)? addItemProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddProductEventCopyWith<AddProductEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddProductEventCopyWith<$Res> {
  factory $AddProductEventCopyWith(
          AddProductEvent value, $Res Function(AddProductEvent) then) =
      _$AddProductEventCopyWithImpl<$Res, AddProductEvent>;
  @useResult
  $Res call(
      {String name,
      String description,
      String productImage,
      String category,
      String cost});
}

/// @nodoc
class _$AddProductEventCopyWithImpl<$Res, $Val extends AddProductEvent>
    implements $AddProductEventCopyWith<$Res> {
  _$AddProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? productImage = null,
    Object? category = null,
    Object? cost = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      productImage: null == productImage
          ? _value.productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddItemProductEventCopyWith<$Res>
    implements $AddProductEventCopyWith<$Res> {
  factory _$$AddItemProductEventCopyWith(_$AddItemProductEvent value,
          $Res Function(_$AddItemProductEvent) then) =
      __$$AddItemProductEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      String productImage,
      String category,
      String cost});
}

/// @nodoc
class __$$AddItemProductEventCopyWithImpl<$Res>
    extends _$AddProductEventCopyWithImpl<$Res, _$AddItemProductEvent>
    implements _$$AddItemProductEventCopyWith<$Res> {
  __$$AddItemProductEventCopyWithImpl(
      _$AddItemProductEvent _value, $Res Function(_$AddItemProductEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? productImage = null,
    Object? category = null,
    Object? cost = null,
  }) {
    return _then(_$AddItemProductEvent(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      null == productImage
          ? _value.productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as String,
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddItemProductEvent implements AddItemProductEvent {
  const _$AddItemProductEvent(
      this.name, this.description, this.productImage, this.category, this.cost);

  @override
  final String name;
  @override
  final String description;
  @override
  final String productImage;
  @override
  final String category;
  @override
  final String cost;

  @override
  String toString() {
    return 'AddProductEvent.addItemProduct(name: $name, description: $description, productImage: $productImage, category: $category, cost: $cost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddItemProductEvent &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.productImage, productImage) ||
                other.productImage == productImage) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.cost, cost) || other.cost == cost));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, description, productImage, category, cost);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddItemProductEventCopyWith<_$AddItemProductEvent> get copyWith =>
      __$$AddItemProductEventCopyWithImpl<_$AddItemProductEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String description,
            String productImage, String category, String cost)
        addItemProduct,
  }) {
    return addItemProduct(name, description, productImage, category, cost);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String description, String productImage,
            String category, String cost)?
        addItemProduct,
  }) {
    return addItemProduct?.call(
        name, description, productImage, category, cost);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String description, String productImage,
            String category, String cost)?
        addItemProduct,
    required TResult orElse(),
  }) {
    if (addItemProduct != null) {
      return addItemProduct(name, description, productImage, category, cost);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddItemProductEvent value) addItemProduct,
  }) {
    return addItemProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddItemProductEvent value)? addItemProduct,
  }) {
    return addItemProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddItemProductEvent value)? addItemProduct,
    required TResult orElse(),
  }) {
    if (addItemProduct != null) {
      return addItemProduct(this);
    }
    return orElse();
  }
}

abstract class AddItemProductEvent implements AddProductEvent {
  const factory AddItemProductEvent(
      final String name,
      final String description,
      final String productImage,
      final String category,
      final String cost) = _$AddItemProductEvent;

  @override
  String get name;
  @override
  String get description;
  @override
  String get productImage;
  @override
  String get category;
  @override
  String get cost;
  @override
  @JsonKey(ignore: true)
  _$$AddItemProductEventCopyWith<_$AddItemProductEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addedProduct,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addedProduct,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addedProduct,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddedProductState value) addedProduct,
    required TResult Function(AddProductLoadingState value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddedProductState value)? addedProduct,
    TResult? Function(AddProductLoadingState value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddedProductState value)? addedProduct,
    TResult Function(AddProductLoadingState value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddProductStateCopyWith<$Res> {
  factory $AddProductStateCopyWith(
          AddProductState value, $Res Function(AddProductState) then) =
      _$AddProductStateCopyWithImpl<$Res, AddProductState>;
}

/// @nodoc
class _$AddProductStateCopyWithImpl<$Res, $Val extends AddProductState>
    implements $AddProductStateCopyWith<$Res> {
  _$AddProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddedProductStateCopyWith<$Res> {
  factory _$$AddedProductStateCopyWith(
          _$AddedProductState value, $Res Function(_$AddedProductState) then) =
      __$$AddedProductStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddedProductStateCopyWithImpl<$Res>
    extends _$AddProductStateCopyWithImpl<$Res, _$AddedProductState>
    implements _$$AddedProductStateCopyWith<$Res> {
  __$$AddedProductStateCopyWithImpl(
      _$AddedProductState _value, $Res Function(_$AddedProductState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddedProductState implements AddedProductState {
  const _$AddedProductState();

  @override
  String toString() {
    return 'AddProductState.addedProduct()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddedProductState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addedProduct,
    required TResult Function() loading,
  }) {
    return addedProduct();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addedProduct,
    TResult? Function()? loading,
  }) {
    return addedProduct?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addedProduct,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (addedProduct != null) {
      return addedProduct();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddedProductState value) addedProduct,
    required TResult Function(AddProductLoadingState value) loading,
  }) {
    return addedProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddedProductState value)? addedProduct,
    TResult? Function(AddProductLoadingState value)? loading,
  }) {
    return addedProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddedProductState value)? addedProduct,
    TResult Function(AddProductLoadingState value)? loading,
    required TResult orElse(),
  }) {
    if (addedProduct != null) {
      return addedProduct(this);
    }
    return orElse();
  }
}

abstract class AddedProductState implements AddProductState {
  const factory AddedProductState() = _$AddedProductState;
}

/// @nodoc
abstract class _$$AddProductLoadingStateCopyWith<$Res> {
  factory _$$AddProductLoadingStateCopyWith(_$AddProductLoadingState value,
          $Res Function(_$AddProductLoadingState) then) =
      __$$AddProductLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddProductLoadingStateCopyWithImpl<$Res>
    extends _$AddProductStateCopyWithImpl<$Res, _$AddProductLoadingState>
    implements _$$AddProductLoadingStateCopyWith<$Res> {
  __$$AddProductLoadingStateCopyWithImpl(_$AddProductLoadingState _value,
      $Res Function(_$AddProductLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddProductLoadingState implements AddProductLoadingState {
  const _$AddProductLoadingState();

  @override
  String toString() {
    return 'AddProductState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddProductLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addedProduct,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addedProduct,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addedProduct,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddedProductState value) addedProduct,
    required TResult Function(AddProductLoadingState value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddedProductState value)? addedProduct,
    TResult? Function(AddProductLoadingState value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddedProductState value)? addedProduct,
    TResult Function(AddProductLoadingState value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AddProductLoadingState implements AddProductState {
  const factory AddProductLoadingState() = _$AddProductLoadingState;
}
