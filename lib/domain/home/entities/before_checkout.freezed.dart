// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'before_checkout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BeforeCheckout {
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  bool get editable => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BeforeCheckoutCopyWith<BeforeCheckout> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeforeCheckoutCopyWith<$Res> {
  factory $BeforeCheckoutCopyWith(
          BeforeCheckout value, $Res Function(BeforeCheckout) then) =
      _$BeforeCheckoutCopyWithImpl<$Res, BeforeCheckout>;
  @useResult
  $Res call({String title, String image, bool editable});
}

/// @nodoc
class _$BeforeCheckoutCopyWithImpl<$Res, $Val extends BeforeCheckout>
    implements $BeforeCheckoutCopyWith<$Res> {
  _$BeforeCheckoutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? image = null,
    Object? editable = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      editable: null == editable
          ? _value.editable
          : editable // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BeforeCheckoutImplCopyWith<$Res>
    implements $BeforeCheckoutCopyWith<$Res> {
  factory _$$BeforeCheckoutImplCopyWith(_$BeforeCheckoutImpl value,
          $Res Function(_$BeforeCheckoutImpl) then) =
      __$$BeforeCheckoutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String image, bool editable});
}

/// @nodoc
class __$$BeforeCheckoutImplCopyWithImpl<$Res>
    extends _$BeforeCheckoutCopyWithImpl<$Res, _$BeforeCheckoutImpl>
    implements _$$BeforeCheckoutImplCopyWith<$Res> {
  __$$BeforeCheckoutImplCopyWithImpl(
      _$BeforeCheckoutImpl _value, $Res Function(_$BeforeCheckoutImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? image = null,
    Object? editable = null,
  }) {
    return _then(_$BeforeCheckoutImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      editable: null == editable
          ? _value.editable
          : editable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BeforeCheckoutImpl implements _BeforeCheckout {
  _$BeforeCheckoutImpl(
      {required this.title, required this.image, required this.editable});

  @override
  final String title;
  @override
  final String image;
  @override
  final bool editable;

  @override
  String toString() {
    return 'BeforeCheckout(title: $title, image: $image, editable: $editable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeforeCheckoutImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.editable, editable) ||
                other.editable == editable));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, image, editable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BeforeCheckoutImplCopyWith<_$BeforeCheckoutImpl> get copyWith =>
      __$$BeforeCheckoutImplCopyWithImpl<_$BeforeCheckoutImpl>(
          this, _$identity);
}

abstract class _BeforeCheckout implements BeforeCheckout {
  factory _BeforeCheckout(
      {required final String title,
      required final String image,
      required final bool editable}) = _$BeforeCheckoutImpl;

  @override
  String get title;
  @override
  String get image;
  @override
  bool get editable;
  @override
  @JsonKey(ignore: true)
  _$$BeforeCheckoutImplCopyWith<_$BeforeCheckoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
