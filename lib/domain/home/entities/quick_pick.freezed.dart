// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quick_pick.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuickPick {
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuickPickCopyWith<QuickPick> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuickPickCopyWith<$Res> {
  factory $QuickPickCopyWith(QuickPick value, $Res Function(QuickPick) then) =
      _$QuickPickCopyWithImpl<$Res, QuickPick>;
  @useResult
  $Res call({String title, String image});
}

/// @nodoc
class _$QuickPickCopyWithImpl<$Res, $Val extends QuickPick>
    implements $QuickPickCopyWith<$Res> {
  _$QuickPickCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? image = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuickPickImplCopyWith<$Res>
    implements $QuickPickCopyWith<$Res> {
  factory _$$QuickPickImplCopyWith(
          _$QuickPickImpl value, $Res Function(_$QuickPickImpl) then) =
      __$$QuickPickImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String image});
}

/// @nodoc
class __$$QuickPickImplCopyWithImpl<$Res>
    extends _$QuickPickCopyWithImpl<$Res, _$QuickPickImpl>
    implements _$$QuickPickImplCopyWith<$Res> {
  __$$QuickPickImplCopyWithImpl(
      _$QuickPickImpl _value, $Res Function(_$QuickPickImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? image = null,
  }) {
    return _then(_$QuickPickImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$QuickPickImpl implements _QuickPick {
  _$QuickPickImpl({required this.title, required this.image});

  @override
  final String title;
  @override
  final String image;

  @override
  String toString() {
    return 'QuickPick(title: $title, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuickPickImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuickPickImplCopyWith<_$QuickPickImpl> get copyWith =>
      __$$QuickPickImplCopyWithImpl<_$QuickPickImpl>(this, _$identity);
}

abstract class _QuickPick implements QuickPick {
  factory _QuickPick(
      {required final String title,
      required final String image}) = _$QuickPickImpl;

  @override
  String get title;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$QuickPickImplCopyWith<_$QuickPickImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
