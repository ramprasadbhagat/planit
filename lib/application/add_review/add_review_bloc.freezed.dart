// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_review_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddReviewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Order order) selectOrder,
    required TResult Function(OrderItem orderItem) selectOrderItem,
    required TResult Function(double rating) onRatingChange,
    required TResult Function(String message) onMessageChange,
    required TResult Function() submitProductReview,
    required TResult Function() submitOrderReview,
    required TResult Function() clearOnCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Order order)? selectOrder,
    TResult? Function(OrderItem orderItem)? selectOrderItem,
    TResult? Function(double rating)? onRatingChange,
    TResult? Function(String message)? onMessageChange,
    TResult? Function()? submitProductReview,
    TResult? Function()? submitOrderReview,
    TResult? Function()? clearOnCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Order order)? selectOrder,
    TResult Function(OrderItem orderItem)? selectOrderItem,
    TResult Function(double rating)? onRatingChange,
    TResult Function(String message)? onMessageChange,
    TResult Function()? submitProductReview,
    TResult Function()? submitOrderReview,
    TResult Function()? clearOnCancel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectOrder value) selectOrder,
    required TResult Function(_SelectOrderItem value) selectOrderItem,
    required TResult Function(_OnRatingChange value) onRatingChange,
    required TResult Function(_OnMessageChange value) onMessageChange,
    required TResult Function(_SubmitProductReview value) submitProductReview,
    required TResult Function(_SubmitOrderReview value) submitOrderReview,
    required TResult Function(_ClearOnCancel value) clearOnCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectOrder value)? selectOrder,
    TResult? Function(_SelectOrderItem value)? selectOrderItem,
    TResult? Function(_OnRatingChange value)? onRatingChange,
    TResult? Function(_OnMessageChange value)? onMessageChange,
    TResult? Function(_SubmitProductReview value)? submitProductReview,
    TResult? Function(_SubmitOrderReview value)? submitOrderReview,
    TResult? Function(_ClearOnCancel value)? clearOnCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectOrder value)? selectOrder,
    TResult Function(_SelectOrderItem value)? selectOrderItem,
    TResult Function(_OnRatingChange value)? onRatingChange,
    TResult Function(_OnMessageChange value)? onMessageChange,
    TResult Function(_SubmitProductReview value)? submitProductReview,
    TResult Function(_SubmitOrderReview value)? submitOrderReview,
    TResult Function(_ClearOnCancel value)? clearOnCancel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddReviewEventCopyWith<$Res> {
  factory $AddReviewEventCopyWith(
          AddReviewEvent value, $Res Function(AddReviewEvent) then) =
      _$AddReviewEventCopyWithImpl<$Res, AddReviewEvent>;
}

/// @nodoc
class _$AddReviewEventCopyWithImpl<$Res, $Val extends AddReviewEvent>
    implements $AddReviewEventCopyWith<$Res> {
  _$AddReviewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SelectOrderImplCopyWith<$Res> {
  factory _$$SelectOrderImplCopyWith(
          _$SelectOrderImpl value, $Res Function(_$SelectOrderImpl) then) =
      __$$SelectOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Order order});

  $OrderCopyWith<$Res> get order;
}

/// @nodoc
class __$$SelectOrderImplCopyWithImpl<$Res>
    extends _$AddReviewEventCopyWithImpl<$Res, _$SelectOrderImpl>
    implements _$$SelectOrderImplCopyWith<$Res> {
  __$$SelectOrderImplCopyWithImpl(
      _$SelectOrderImpl _value, $Res Function(_$SelectOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
  }) {
    return _then(_$SelectOrderImpl(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderCopyWith<$Res> get order {
    return $OrderCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value));
    });
  }
}

/// @nodoc

class _$SelectOrderImpl implements _SelectOrder {
  const _$SelectOrderImpl({required this.order});

  @override
  final Order order;

  @override
  String toString() {
    return 'AddReviewEvent.selectOrder(order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectOrderImpl &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectOrderImplCopyWith<_$SelectOrderImpl> get copyWith =>
      __$$SelectOrderImplCopyWithImpl<_$SelectOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Order order) selectOrder,
    required TResult Function(OrderItem orderItem) selectOrderItem,
    required TResult Function(double rating) onRatingChange,
    required TResult Function(String message) onMessageChange,
    required TResult Function() submitProductReview,
    required TResult Function() submitOrderReview,
    required TResult Function() clearOnCancel,
  }) {
    return selectOrder(order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Order order)? selectOrder,
    TResult? Function(OrderItem orderItem)? selectOrderItem,
    TResult? Function(double rating)? onRatingChange,
    TResult? Function(String message)? onMessageChange,
    TResult? Function()? submitProductReview,
    TResult? Function()? submitOrderReview,
    TResult? Function()? clearOnCancel,
  }) {
    return selectOrder?.call(order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Order order)? selectOrder,
    TResult Function(OrderItem orderItem)? selectOrderItem,
    TResult Function(double rating)? onRatingChange,
    TResult Function(String message)? onMessageChange,
    TResult Function()? submitProductReview,
    TResult Function()? submitOrderReview,
    TResult Function()? clearOnCancel,
    required TResult orElse(),
  }) {
    if (selectOrder != null) {
      return selectOrder(order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectOrder value) selectOrder,
    required TResult Function(_SelectOrderItem value) selectOrderItem,
    required TResult Function(_OnRatingChange value) onRatingChange,
    required TResult Function(_OnMessageChange value) onMessageChange,
    required TResult Function(_SubmitProductReview value) submitProductReview,
    required TResult Function(_SubmitOrderReview value) submitOrderReview,
    required TResult Function(_ClearOnCancel value) clearOnCancel,
  }) {
    return selectOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectOrder value)? selectOrder,
    TResult? Function(_SelectOrderItem value)? selectOrderItem,
    TResult? Function(_OnRatingChange value)? onRatingChange,
    TResult? Function(_OnMessageChange value)? onMessageChange,
    TResult? Function(_SubmitProductReview value)? submitProductReview,
    TResult? Function(_SubmitOrderReview value)? submitOrderReview,
    TResult? Function(_ClearOnCancel value)? clearOnCancel,
  }) {
    return selectOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectOrder value)? selectOrder,
    TResult Function(_SelectOrderItem value)? selectOrderItem,
    TResult Function(_OnRatingChange value)? onRatingChange,
    TResult Function(_OnMessageChange value)? onMessageChange,
    TResult Function(_SubmitProductReview value)? submitProductReview,
    TResult Function(_SubmitOrderReview value)? submitOrderReview,
    TResult Function(_ClearOnCancel value)? clearOnCancel,
    required TResult orElse(),
  }) {
    if (selectOrder != null) {
      return selectOrder(this);
    }
    return orElse();
  }
}

abstract class _SelectOrder implements AddReviewEvent {
  const factory _SelectOrder({required final Order order}) = _$SelectOrderImpl;

  Order get order;
  @JsonKey(ignore: true)
  _$$SelectOrderImplCopyWith<_$SelectOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectOrderItemImplCopyWith<$Res> {
  factory _$$SelectOrderItemImplCopyWith(_$SelectOrderItemImpl value,
          $Res Function(_$SelectOrderItemImpl) then) =
      __$$SelectOrderItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderItem orderItem});

  $OrderItemCopyWith<$Res> get orderItem;
}

/// @nodoc
class __$$SelectOrderItemImplCopyWithImpl<$Res>
    extends _$AddReviewEventCopyWithImpl<$Res, _$SelectOrderItemImpl>
    implements _$$SelectOrderItemImplCopyWith<$Res> {
  __$$SelectOrderItemImplCopyWithImpl(
      _$SelectOrderItemImpl _value, $Res Function(_$SelectOrderItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderItem = null,
  }) {
    return _then(_$SelectOrderItemImpl(
      orderItem: null == orderItem
          ? _value.orderItem
          : orderItem // ignore: cast_nullable_to_non_nullable
              as OrderItem,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderItemCopyWith<$Res> get orderItem {
    return $OrderItemCopyWith<$Res>(_value.orderItem, (value) {
      return _then(_value.copyWith(orderItem: value));
    });
  }
}

/// @nodoc

class _$SelectOrderItemImpl implements _SelectOrderItem {
  const _$SelectOrderItemImpl({required this.orderItem});

  @override
  final OrderItem orderItem;

  @override
  String toString() {
    return 'AddReviewEvent.selectOrderItem(orderItem: $orderItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectOrderItemImpl &&
            (identical(other.orderItem, orderItem) ||
                other.orderItem == orderItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectOrderItemImplCopyWith<_$SelectOrderItemImpl> get copyWith =>
      __$$SelectOrderItemImplCopyWithImpl<_$SelectOrderItemImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Order order) selectOrder,
    required TResult Function(OrderItem orderItem) selectOrderItem,
    required TResult Function(double rating) onRatingChange,
    required TResult Function(String message) onMessageChange,
    required TResult Function() submitProductReview,
    required TResult Function() submitOrderReview,
    required TResult Function() clearOnCancel,
  }) {
    return selectOrderItem(orderItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Order order)? selectOrder,
    TResult? Function(OrderItem orderItem)? selectOrderItem,
    TResult? Function(double rating)? onRatingChange,
    TResult? Function(String message)? onMessageChange,
    TResult? Function()? submitProductReview,
    TResult? Function()? submitOrderReview,
    TResult? Function()? clearOnCancel,
  }) {
    return selectOrderItem?.call(orderItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Order order)? selectOrder,
    TResult Function(OrderItem orderItem)? selectOrderItem,
    TResult Function(double rating)? onRatingChange,
    TResult Function(String message)? onMessageChange,
    TResult Function()? submitProductReview,
    TResult Function()? submitOrderReview,
    TResult Function()? clearOnCancel,
    required TResult orElse(),
  }) {
    if (selectOrderItem != null) {
      return selectOrderItem(orderItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectOrder value) selectOrder,
    required TResult Function(_SelectOrderItem value) selectOrderItem,
    required TResult Function(_OnRatingChange value) onRatingChange,
    required TResult Function(_OnMessageChange value) onMessageChange,
    required TResult Function(_SubmitProductReview value) submitProductReview,
    required TResult Function(_SubmitOrderReview value) submitOrderReview,
    required TResult Function(_ClearOnCancel value) clearOnCancel,
  }) {
    return selectOrderItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectOrder value)? selectOrder,
    TResult? Function(_SelectOrderItem value)? selectOrderItem,
    TResult? Function(_OnRatingChange value)? onRatingChange,
    TResult? Function(_OnMessageChange value)? onMessageChange,
    TResult? Function(_SubmitProductReview value)? submitProductReview,
    TResult? Function(_SubmitOrderReview value)? submitOrderReview,
    TResult? Function(_ClearOnCancel value)? clearOnCancel,
  }) {
    return selectOrderItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectOrder value)? selectOrder,
    TResult Function(_SelectOrderItem value)? selectOrderItem,
    TResult Function(_OnRatingChange value)? onRatingChange,
    TResult Function(_OnMessageChange value)? onMessageChange,
    TResult Function(_SubmitProductReview value)? submitProductReview,
    TResult Function(_SubmitOrderReview value)? submitOrderReview,
    TResult Function(_ClearOnCancel value)? clearOnCancel,
    required TResult orElse(),
  }) {
    if (selectOrderItem != null) {
      return selectOrderItem(this);
    }
    return orElse();
  }
}

abstract class _SelectOrderItem implements AddReviewEvent {
  const factory _SelectOrderItem({required final OrderItem orderItem}) =
      _$SelectOrderItemImpl;

  OrderItem get orderItem;
  @JsonKey(ignore: true)
  _$$SelectOrderItemImplCopyWith<_$SelectOrderItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnRatingChangeImplCopyWith<$Res> {
  factory _$$OnRatingChangeImplCopyWith(_$OnRatingChangeImpl value,
          $Res Function(_$OnRatingChangeImpl) then) =
      __$$OnRatingChangeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double rating});
}

/// @nodoc
class __$$OnRatingChangeImplCopyWithImpl<$Res>
    extends _$AddReviewEventCopyWithImpl<$Res, _$OnRatingChangeImpl>
    implements _$$OnRatingChangeImplCopyWith<$Res> {
  __$$OnRatingChangeImplCopyWithImpl(
      _$OnRatingChangeImpl _value, $Res Function(_$OnRatingChangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = null,
  }) {
    return _then(_$OnRatingChangeImpl(
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$OnRatingChangeImpl implements _OnRatingChange {
  const _$OnRatingChangeImpl({required this.rating});

  @override
  final double rating;

  @override
  String toString() {
    return 'AddReviewEvent.onRatingChange(rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnRatingChangeImpl &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnRatingChangeImplCopyWith<_$OnRatingChangeImpl> get copyWith =>
      __$$OnRatingChangeImplCopyWithImpl<_$OnRatingChangeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Order order) selectOrder,
    required TResult Function(OrderItem orderItem) selectOrderItem,
    required TResult Function(double rating) onRatingChange,
    required TResult Function(String message) onMessageChange,
    required TResult Function() submitProductReview,
    required TResult Function() submitOrderReview,
    required TResult Function() clearOnCancel,
  }) {
    return onRatingChange(rating);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Order order)? selectOrder,
    TResult? Function(OrderItem orderItem)? selectOrderItem,
    TResult? Function(double rating)? onRatingChange,
    TResult? Function(String message)? onMessageChange,
    TResult? Function()? submitProductReview,
    TResult? Function()? submitOrderReview,
    TResult? Function()? clearOnCancel,
  }) {
    return onRatingChange?.call(rating);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Order order)? selectOrder,
    TResult Function(OrderItem orderItem)? selectOrderItem,
    TResult Function(double rating)? onRatingChange,
    TResult Function(String message)? onMessageChange,
    TResult Function()? submitProductReview,
    TResult Function()? submitOrderReview,
    TResult Function()? clearOnCancel,
    required TResult orElse(),
  }) {
    if (onRatingChange != null) {
      return onRatingChange(rating);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectOrder value) selectOrder,
    required TResult Function(_SelectOrderItem value) selectOrderItem,
    required TResult Function(_OnRatingChange value) onRatingChange,
    required TResult Function(_OnMessageChange value) onMessageChange,
    required TResult Function(_SubmitProductReview value) submitProductReview,
    required TResult Function(_SubmitOrderReview value) submitOrderReview,
    required TResult Function(_ClearOnCancel value) clearOnCancel,
  }) {
    return onRatingChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectOrder value)? selectOrder,
    TResult? Function(_SelectOrderItem value)? selectOrderItem,
    TResult? Function(_OnRatingChange value)? onRatingChange,
    TResult? Function(_OnMessageChange value)? onMessageChange,
    TResult? Function(_SubmitProductReview value)? submitProductReview,
    TResult? Function(_SubmitOrderReview value)? submitOrderReview,
    TResult? Function(_ClearOnCancel value)? clearOnCancel,
  }) {
    return onRatingChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectOrder value)? selectOrder,
    TResult Function(_SelectOrderItem value)? selectOrderItem,
    TResult Function(_OnRatingChange value)? onRatingChange,
    TResult Function(_OnMessageChange value)? onMessageChange,
    TResult Function(_SubmitProductReview value)? submitProductReview,
    TResult Function(_SubmitOrderReview value)? submitOrderReview,
    TResult Function(_ClearOnCancel value)? clearOnCancel,
    required TResult orElse(),
  }) {
    if (onRatingChange != null) {
      return onRatingChange(this);
    }
    return orElse();
  }
}

abstract class _OnRatingChange implements AddReviewEvent {
  const factory _OnRatingChange({required final double rating}) =
      _$OnRatingChangeImpl;

  double get rating;
  @JsonKey(ignore: true)
  _$$OnRatingChangeImplCopyWith<_$OnRatingChangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnMessageChangeImplCopyWith<$Res> {
  factory _$$OnMessageChangeImplCopyWith(_$OnMessageChangeImpl value,
          $Res Function(_$OnMessageChangeImpl) then) =
      __$$OnMessageChangeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$OnMessageChangeImplCopyWithImpl<$Res>
    extends _$AddReviewEventCopyWithImpl<$Res, _$OnMessageChangeImpl>
    implements _$$OnMessageChangeImplCopyWith<$Res> {
  __$$OnMessageChangeImplCopyWithImpl(
      _$OnMessageChangeImpl _value, $Res Function(_$OnMessageChangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$OnMessageChangeImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnMessageChangeImpl implements _OnMessageChange {
  const _$OnMessageChangeImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AddReviewEvent.onMessageChange(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnMessageChangeImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnMessageChangeImplCopyWith<_$OnMessageChangeImpl> get copyWith =>
      __$$OnMessageChangeImplCopyWithImpl<_$OnMessageChangeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Order order) selectOrder,
    required TResult Function(OrderItem orderItem) selectOrderItem,
    required TResult Function(double rating) onRatingChange,
    required TResult Function(String message) onMessageChange,
    required TResult Function() submitProductReview,
    required TResult Function() submitOrderReview,
    required TResult Function() clearOnCancel,
  }) {
    return onMessageChange(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Order order)? selectOrder,
    TResult? Function(OrderItem orderItem)? selectOrderItem,
    TResult? Function(double rating)? onRatingChange,
    TResult? Function(String message)? onMessageChange,
    TResult? Function()? submitProductReview,
    TResult? Function()? submitOrderReview,
    TResult? Function()? clearOnCancel,
  }) {
    return onMessageChange?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Order order)? selectOrder,
    TResult Function(OrderItem orderItem)? selectOrderItem,
    TResult Function(double rating)? onRatingChange,
    TResult Function(String message)? onMessageChange,
    TResult Function()? submitProductReview,
    TResult Function()? submitOrderReview,
    TResult Function()? clearOnCancel,
    required TResult orElse(),
  }) {
    if (onMessageChange != null) {
      return onMessageChange(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectOrder value) selectOrder,
    required TResult Function(_SelectOrderItem value) selectOrderItem,
    required TResult Function(_OnRatingChange value) onRatingChange,
    required TResult Function(_OnMessageChange value) onMessageChange,
    required TResult Function(_SubmitProductReview value) submitProductReview,
    required TResult Function(_SubmitOrderReview value) submitOrderReview,
    required TResult Function(_ClearOnCancel value) clearOnCancel,
  }) {
    return onMessageChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectOrder value)? selectOrder,
    TResult? Function(_SelectOrderItem value)? selectOrderItem,
    TResult? Function(_OnRatingChange value)? onRatingChange,
    TResult? Function(_OnMessageChange value)? onMessageChange,
    TResult? Function(_SubmitProductReview value)? submitProductReview,
    TResult? Function(_SubmitOrderReview value)? submitOrderReview,
    TResult? Function(_ClearOnCancel value)? clearOnCancel,
  }) {
    return onMessageChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectOrder value)? selectOrder,
    TResult Function(_SelectOrderItem value)? selectOrderItem,
    TResult Function(_OnRatingChange value)? onRatingChange,
    TResult Function(_OnMessageChange value)? onMessageChange,
    TResult Function(_SubmitProductReview value)? submitProductReview,
    TResult Function(_SubmitOrderReview value)? submitOrderReview,
    TResult Function(_ClearOnCancel value)? clearOnCancel,
    required TResult orElse(),
  }) {
    if (onMessageChange != null) {
      return onMessageChange(this);
    }
    return orElse();
  }
}

abstract class _OnMessageChange implements AddReviewEvent {
  const factory _OnMessageChange({required final String message}) =
      _$OnMessageChangeImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$OnMessageChangeImplCopyWith<_$OnMessageChangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitProductReviewImplCopyWith<$Res> {
  factory _$$SubmitProductReviewImplCopyWith(_$SubmitProductReviewImpl value,
          $Res Function(_$SubmitProductReviewImpl) then) =
      __$$SubmitProductReviewImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitProductReviewImplCopyWithImpl<$Res>
    extends _$AddReviewEventCopyWithImpl<$Res, _$SubmitProductReviewImpl>
    implements _$$SubmitProductReviewImplCopyWith<$Res> {
  __$$SubmitProductReviewImplCopyWithImpl(_$SubmitProductReviewImpl _value,
      $Res Function(_$SubmitProductReviewImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SubmitProductReviewImpl implements _SubmitProductReview {
  const _$SubmitProductReviewImpl();

  @override
  String toString() {
    return 'AddReviewEvent.submitProductReview()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitProductReviewImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Order order) selectOrder,
    required TResult Function(OrderItem orderItem) selectOrderItem,
    required TResult Function(double rating) onRatingChange,
    required TResult Function(String message) onMessageChange,
    required TResult Function() submitProductReview,
    required TResult Function() submitOrderReview,
    required TResult Function() clearOnCancel,
  }) {
    return submitProductReview();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Order order)? selectOrder,
    TResult? Function(OrderItem orderItem)? selectOrderItem,
    TResult? Function(double rating)? onRatingChange,
    TResult? Function(String message)? onMessageChange,
    TResult? Function()? submitProductReview,
    TResult? Function()? submitOrderReview,
    TResult? Function()? clearOnCancel,
  }) {
    return submitProductReview?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Order order)? selectOrder,
    TResult Function(OrderItem orderItem)? selectOrderItem,
    TResult Function(double rating)? onRatingChange,
    TResult Function(String message)? onMessageChange,
    TResult Function()? submitProductReview,
    TResult Function()? submitOrderReview,
    TResult Function()? clearOnCancel,
    required TResult orElse(),
  }) {
    if (submitProductReview != null) {
      return submitProductReview();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectOrder value) selectOrder,
    required TResult Function(_SelectOrderItem value) selectOrderItem,
    required TResult Function(_OnRatingChange value) onRatingChange,
    required TResult Function(_OnMessageChange value) onMessageChange,
    required TResult Function(_SubmitProductReview value) submitProductReview,
    required TResult Function(_SubmitOrderReview value) submitOrderReview,
    required TResult Function(_ClearOnCancel value) clearOnCancel,
  }) {
    return submitProductReview(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectOrder value)? selectOrder,
    TResult? Function(_SelectOrderItem value)? selectOrderItem,
    TResult? Function(_OnRatingChange value)? onRatingChange,
    TResult? Function(_OnMessageChange value)? onMessageChange,
    TResult? Function(_SubmitProductReview value)? submitProductReview,
    TResult? Function(_SubmitOrderReview value)? submitOrderReview,
    TResult? Function(_ClearOnCancel value)? clearOnCancel,
  }) {
    return submitProductReview?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectOrder value)? selectOrder,
    TResult Function(_SelectOrderItem value)? selectOrderItem,
    TResult Function(_OnRatingChange value)? onRatingChange,
    TResult Function(_OnMessageChange value)? onMessageChange,
    TResult Function(_SubmitProductReview value)? submitProductReview,
    TResult Function(_SubmitOrderReview value)? submitOrderReview,
    TResult Function(_ClearOnCancel value)? clearOnCancel,
    required TResult orElse(),
  }) {
    if (submitProductReview != null) {
      return submitProductReview(this);
    }
    return orElse();
  }
}

abstract class _SubmitProductReview implements AddReviewEvent {
  const factory _SubmitProductReview() = _$SubmitProductReviewImpl;
}

/// @nodoc
abstract class _$$SubmitOrderReviewImplCopyWith<$Res> {
  factory _$$SubmitOrderReviewImplCopyWith(_$SubmitOrderReviewImpl value,
          $Res Function(_$SubmitOrderReviewImpl) then) =
      __$$SubmitOrderReviewImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitOrderReviewImplCopyWithImpl<$Res>
    extends _$AddReviewEventCopyWithImpl<$Res, _$SubmitOrderReviewImpl>
    implements _$$SubmitOrderReviewImplCopyWith<$Res> {
  __$$SubmitOrderReviewImplCopyWithImpl(_$SubmitOrderReviewImpl _value,
      $Res Function(_$SubmitOrderReviewImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SubmitOrderReviewImpl implements _SubmitOrderReview {
  const _$SubmitOrderReviewImpl();

  @override
  String toString() {
    return 'AddReviewEvent.submitOrderReview()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmitOrderReviewImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Order order) selectOrder,
    required TResult Function(OrderItem orderItem) selectOrderItem,
    required TResult Function(double rating) onRatingChange,
    required TResult Function(String message) onMessageChange,
    required TResult Function() submitProductReview,
    required TResult Function() submitOrderReview,
    required TResult Function() clearOnCancel,
  }) {
    return submitOrderReview();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Order order)? selectOrder,
    TResult? Function(OrderItem orderItem)? selectOrderItem,
    TResult? Function(double rating)? onRatingChange,
    TResult? Function(String message)? onMessageChange,
    TResult? Function()? submitProductReview,
    TResult? Function()? submitOrderReview,
    TResult? Function()? clearOnCancel,
  }) {
    return submitOrderReview?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Order order)? selectOrder,
    TResult Function(OrderItem orderItem)? selectOrderItem,
    TResult Function(double rating)? onRatingChange,
    TResult Function(String message)? onMessageChange,
    TResult Function()? submitProductReview,
    TResult Function()? submitOrderReview,
    TResult Function()? clearOnCancel,
    required TResult orElse(),
  }) {
    if (submitOrderReview != null) {
      return submitOrderReview();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectOrder value) selectOrder,
    required TResult Function(_SelectOrderItem value) selectOrderItem,
    required TResult Function(_OnRatingChange value) onRatingChange,
    required TResult Function(_OnMessageChange value) onMessageChange,
    required TResult Function(_SubmitProductReview value) submitProductReview,
    required TResult Function(_SubmitOrderReview value) submitOrderReview,
    required TResult Function(_ClearOnCancel value) clearOnCancel,
  }) {
    return submitOrderReview(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectOrder value)? selectOrder,
    TResult? Function(_SelectOrderItem value)? selectOrderItem,
    TResult? Function(_OnRatingChange value)? onRatingChange,
    TResult? Function(_OnMessageChange value)? onMessageChange,
    TResult? Function(_SubmitProductReview value)? submitProductReview,
    TResult? Function(_SubmitOrderReview value)? submitOrderReview,
    TResult? Function(_ClearOnCancel value)? clearOnCancel,
  }) {
    return submitOrderReview?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectOrder value)? selectOrder,
    TResult Function(_SelectOrderItem value)? selectOrderItem,
    TResult Function(_OnRatingChange value)? onRatingChange,
    TResult Function(_OnMessageChange value)? onMessageChange,
    TResult Function(_SubmitProductReview value)? submitProductReview,
    TResult Function(_SubmitOrderReview value)? submitOrderReview,
    TResult Function(_ClearOnCancel value)? clearOnCancel,
    required TResult orElse(),
  }) {
    if (submitOrderReview != null) {
      return submitOrderReview(this);
    }
    return orElse();
  }
}

abstract class _SubmitOrderReview implements AddReviewEvent {
  const factory _SubmitOrderReview() = _$SubmitOrderReviewImpl;
}

/// @nodoc
abstract class _$$ClearOnCancelImplCopyWith<$Res> {
  factory _$$ClearOnCancelImplCopyWith(
          _$ClearOnCancelImpl value, $Res Function(_$ClearOnCancelImpl) then) =
      __$$ClearOnCancelImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearOnCancelImplCopyWithImpl<$Res>
    extends _$AddReviewEventCopyWithImpl<$Res, _$ClearOnCancelImpl>
    implements _$$ClearOnCancelImplCopyWith<$Res> {
  __$$ClearOnCancelImplCopyWithImpl(
      _$ClearOnCancelImpl _value, $Res Function(_$ClearOnCancelImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearOnCancelImpl implements _ClearOnCancel {
  const _$ClearOnCancelImpl();

  @override
  String toString() {
    return 'AddReviewEvent.clearOnCancel()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearOnCancelImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Order order) selectOrder,
    required TResult Function(OrderItem orderItem) selectOrderItem,
    required TResult Function(double rating) onRatingChange,
    required TResult Function(String message) onMessageChange,
    required TResult Function() submitProductReview,
    required TResult Function() submitOrderReview,
    required TResult Function() clearOnCancel,
  }) {
    return clearOnCancel();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Order order)? selectOrder,
    TResult? Function(OrderItem orderItem)? selectOrderItem,
    TResult? Function(double rating)? onRatingChange,
    TResult? Function(String message)? onMessageChange,
    TResult? Function()? submitProductReview,
    TResult? Function()? submitOrderReview,
    TResult? Function()? clearOnCancel,
  }) {
    return clearOnCancel?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Order order)? selectOrder,
    TResult Function(OrderItem orderItem)? selectOrderItem,
    TResult Function(double rating)? onRatingChange,
    TResult Function(String message)? onMessageChange,
    TResult Function()? submitProductReview,
    TResult Function()? submitOrderReview,
    TResult Function()? clearOnCancel,
    required TResult orElse(),
  }) {
    if (clearOnCancel != null) {
      return clearOnCancel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectOrder value) selectOrder,
    required TResult Function(_SelectOrderItem value) selectOrderItem,
    required TResult Function(_OnRatingChange value) onRatingChange,
    required TResult Function(_OnMessageChange value) onMessageChange,
    required TResult Function(_SubmitProductReview value) submitProductReview,
    required TResult Function(_SubmitOrderReview value) submitOrderReview,
    required TResult Function(_ClearOnCancel value) clearOnCancel,
  }) {
    return clearOnCancel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectOrder value)? selectOrder,
    TResult? Function(_SelectOrderItem value)? selectOrderItem,
    TResult? Function(_OnRatingChange value)? onRatingChange,
    TResult? Function(_OnMessageChange value)? onMessageChange,
    TResult? Function(_SubmitProductReview value)? submitProductReview,
    TResult? Function(_SubmitOrderReview value)? submitOrderReview,
    TResult? Function(_ClearOnCancel value)? clearOnCancel,
  }) {
    return clearOnCancel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectOrder value)? selectOrder,
    TResult Function(_SelectOrderItem value)? selectOrderItem,
    TResult Function(_OnRatingChange value)? onRatingChange,
    TResult Function(_OnMessageChange value)? onMessageChange,
    TResult Function(_SubmitProductReview value)? submitProductReview,
    TResult Function(_SubmitOrderReview value)? submitOrderReview,
    TResult Function(_ClearOnCancel value)? clearOnCancel,
    required TResult orElse(),
  }) {
    if (clearOnCancel != null) {
      return clearOnCancel(this);
    }
    return orElse();
  }
}

abstract class _ClearOnCancel implements AddReviewEvent {
  const factory _ClearOnCancel() = _$ClearOnCancelImpl;
}

/// @nodoc
mixin _$AddReviewState {
  bool get isFetching => throw _privateConstructorUsedError;
  Order get selectedOrder => throw _privateConstructorUsedError;
  OrderItem get selectedOrderItem => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddReviewStateCopyWith<AddReviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddReviewStateCopyWith<$Res> {
  factory $AddReviewStateCopyWith(
          AddReviewState value, $Res Function(AddReviewState) then) =
      _$AddReviewStateCopyWithImpl<$Res, AddReviewState>;
  @useResult
  $Res call(
      {bool isFetching,
      Order selectedOrder,
      OrderItem selectedOrderItem,
      double rating,
      String message,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption});

  $OrderCopyWith<$Res> get selectedOrder;
  $OrderItemCopyWith<$Res> get selectedOrderItem;
}

/// @nodoc
class _$AddReviewStateCopyWithImpl<$Res, $Val extends AddReviewState>
    implements $AddReviewStateCopyWith<$Res> {
  _$AddReviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFetching = null,
    Object? selectedOrder = null,
    Object? selectedOrderItem = null,
    Object? rating = null,
    Object? message = null,
    Object? apiFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedOrder: null == selectedOrder
          ? _value.selectedOrder
          : selectedOrder // ignore: cast_nullable_to_non_nullable
              as Order,
      selectedOrderItem: null == selectedOrderItem
          ? _value.selectedOrderItem
          : selectedOrderItem // ignore: cast_nullable_to_non_nullable
              as OrderItem,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      apiFailureOrSuccessOption: null == apiFailureOrSuccessOption
          ? _value.apiFailureOrSuccessOption
          : apiFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderCopyWith<$Res> get selectedOrder {
    return $OrderCopyWith<$Res>(_value.selectedOrder, (value) {
      return _then(_value.copyWith(selectedOrder: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderItemCopyWith<$Res> get selectedOrderItem {
    return $OrderItemCopyWith<$Res>(_value.selectedOrderItem, (value) {
      return _then(_value.copyWith(selectedOrderItem: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $AddReviewStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isFetching,
      Order selectedOrder,
      OrderItem selectedOrderItem,
      double rating,
      String message,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption});

  @override
  $OrderCopyWith<$Res> get selectedOrder;
  @override
  $OrderItemCopyWith<$Res> get selectedOrderItem;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AddReviewStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFetching = null,
    Object? selectedOrder = null,
    Object? selectedOrderItem = null,
    Object? rating = null,
    Object? message = null,
    Object? apiFailureOrSuccessOption = null,
  }) {
    return _then(_$InitialImpl(
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedOrder: null == selectedOrder
          ? _value.selectedOrder
          : selectedOrder // ignore: cast_nullable_to_non_nullable
              as Order,
      selectedOrderItem: null == selectedOrderItem
          ? _value.selectedOrderItem
          : selectedOrderItem // ignore: cast_nullable_to_non_nullable
              as OrderItem,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      apiFailureOrSuccessOption: null == apiFailureOrSuccessOption
          ? _value.apiFailureOrSuccessOption
          : apiFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isFetching,
      required this.selectedOrder,
      required this.selectedOrderItem,
      required this.rating,
      required this.message,
      required this.apiFailureOrSuccessOption});

  @override
  final bool isFetching;
  @override
  final Order selectedOrder;
  @override
  final OrderItem selectedOrderItem;
  @override
  final double rating;
  @override
  final String message;
  @override
  final Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption;

  @override
  String toString() {
    return 'AddReviewState(isFetching: $isFetching, selectedOrder: $selectedOrder, selectedOrderItem: $selectedOrderItem, rating: $rating, message: $message, apiFailureOrSuccessOption: $apiFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching) &&
            (identical(other.selectedOrder, selectedOrder) ||
                other.selectedOrder == selectedOrder) &&
            (identical(other.selectedOrderItem, selectedOrderItem) ||
                other.selectedOrderItem == selectedOrderItem) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.apiFailureOrSuccessOption,
                    apiFailureOrSuccessOption) ||
                other.apiFailureOrSuccessOption == apiFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isFetching, selectedOrder,
      selectedOrderItem, rating, message, apiFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements AddReviewState {
  const factory _Initial(
      {required final bool isFetching,
      required final Order selectedOrder,
      required final OrderItem selectedOrderItem,
      required final double rating,
      required final String message,
      required final Option<Either<ApiFailure, dynamic>>
          apiFailureOrSuccessOption}) = _$InitialImpl;

  @override
  bool get isFetching;
  @override
  Order get selectedOrder;
  @override
  OrderItem get selectedOrderItem;
  @override
  double get rating;
  @override
  String get message;
  @override
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
