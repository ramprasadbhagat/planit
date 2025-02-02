// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'occasion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Occasion {
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OccasionCopyWith<Occasion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OccasionCopyWith<$Res> {
  factory $OccasionCopyWith(Occasion value, $Res Function(Occasion) then) =
      _$OccasionCopyWithImpl<$Res, Occasion>;
  @useResult
  $Res call({String title, String image});
}

/// @nodoc
class _$OccasionCopyWithImpl<$Res, $Val extends Occasion>
    implements $OccasionCopyWith<$Res> {
  _$OccasionCopyWithImpl(this._value, this._then);

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
abstract class _$$OccasionImplCopyWith<$Res>
    implements $OccasionCopyWith<$Res> {
  factory _$$OccasionImplCopyWith(
          _$OccasionImpl value, $Res Function(_$OccasionImpl) then) =
      __$$OccasionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String image});
}

/// @nodoc
class __$$OccasionImplCopyWithImpl<$Res>
    extends _$OccasionCopyWithImpl<$Res, _$OccasionImpl>
    implements _$$OccasionImplCopyWith<$Res> {
  __$$OccasionImplCopyWithImpl(
      _$OccasionImpl _value, $Res Function(_$OccasionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? image = null,
  }) {
    return _then(_$OccasionImpl(
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

class _$OccasionImpl implements _Occasion {
  _$OccasionImpl({required this.title, required this.image});

  @override
  final String title;
  @override
  final String image;

  @override
  String toString() {
    return 'Occasion(title: $title, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OccasionImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OccasionImplCopyWith<_$OccasionImpl> get copyWith =>
      __$$OccasionImplCopyWithImpl<_$OccasionImpl>(this, _$identity);
}

abstract class _Occasion implements Occasion {
  factory _Occasion(
      {required final String title,
      required final String image}) = _$OccasionImpl;

  @override
  String get title;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$OccasionImplCopyWith<_$OccasionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
