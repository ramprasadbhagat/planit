// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'highlight_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HighlightDto _$HighlightDtoFromJson(Map<String, dynamic> json) {
  return _HighlightDto.fromJson(json);
}

/// @nodoc
mixin _$HighlightDto {
  @JsonKey(name: 'title', defaultValue: '')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'image', defaultValue: '')
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HighlightDtoCopyWith<HighlightDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HighlightDtoCopyWith<$Res> {
  factory $HighlightDtoCopyWith(
          HighlightDto value, $Res Function(HighlightDto) then) =
      _$HighlightDtoCopyWithImpl<$Res, HighlightDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title', defaultValue: '') String title,
      @JsonKey(name: 'image', defaultValue: '') String image});
}

/// @nodoc
class _$HighlightDtoCopyWithImpl<$Res, $Val extends HighlightDto>
    implements $HighlightDtoCopyWith<$Res> {
  _$HighlightDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$HighlightDtoImplCopyWith<$Res>
    implements $HighlightDtoCopyWith<$Res> {
  factory _$$HighlightDtoImplCopyWith(
          _$HighlightDtoImpl value, $Res Function(_$HighlightDtoImpl) then) =
      __$$HighlightDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title', defaultValue: '') String title,
      @JsonKey(name: 'image', defaultValue: '') String image});
}

/// @nodoc
class __$$HighlightDtoImplCopyWithImpl<$Res>
    extends _$HighlightDtoCopyWithImpl<$Res, _$HighlightDtoImpl>
    implements _$$HighlightDtoImplCopyWith<$Res> {
  __$$HighlightDtoImplCopyWithImpl(
      _$HighlightDtoImpl _value, $Res Function(_$HighlightDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? image = null,
  }) {
    return _then(_$HighlightDtoImpl(
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
@JsonSerializable()
class _$HighlightDtoImpl extends _HighlightDto {
  _$HighlightDtoImpl(
      {@JsonKey(name: 'title', defaultValue: '') required this.title,
      @JsonKey(name: 'image', defaultValue: '') required this.image})
      : super._();

  factory _$HighlightDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$HighlightDtoImplFromJson(json);

  @override
  @JsonKey(name: 'title', defaultValue: '')
  final String title;
  @override
  @JsonKey(name: 'image', defaultValue: '')
  final String image;

  @override
  String toString() {
    return 'HighlightDto(title: $title, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HighlightDtoImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HighlightDtoImplCopyWith<_$HighlightDtoImpl> get copyWith =>
      __$$HighlightDtoImplCopyWithImpl<_$HighlightDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HighlightDtoImplToJson(
      this,
    );
  }
}

abstract class _HighlightDto extends HighlightDto {
  factory _HighlightDto(
      {@JsonKey(name: 'title', defaultValue: '') required final String title,
      @JsonKey(name: 'image', defaultValue: '')
      required final String image}) = _$HighlightDtoImpl;
  _HighlightDto._() : super._();

  factory _HighlightDto.fromJson(Map<String, dynamic> json) =
      _$HighlightDtoImpl.fromJson;

  @override
  @JsonKey(name: 'title', defaultValue: '')
  String get title;
  @override
  @JsonKey(name: 'image', defaultValue: '')
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$HighlightDtoImplCopyWith<_$HighlightDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
