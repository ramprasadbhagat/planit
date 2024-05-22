// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BannerDto _$BannerDtoFromJson(Map<String, dynamic> json) {
  return _BannerDto.fromJson(json);
}

/// @nodoc
mixin _$BannerDto {
  @JsonKey(name: 'id', defaultValue: '')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'option', defaultValue: '')
  String get option => throw _privateConstructorUsedError;
  @JsonKey(name: 'startingDate', defaultValue: '')
  String get startingDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'endingDate', defaultValue: '')
  String get endingDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'banner_images', defaultValue: [])
  List<String> get bannerImages => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at', defaultValue: '')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at', defaultValue: '')
  String get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active', defaultValue: false)
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_deleted', defaultValue: false)
  bool get isDeleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannerDtoCopyWith<BannerDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerDtoCopyWith<$Res> {
  factory $BannerDtoCopyWith(BannerDto value, $Res Function(BannerDto) then) =
      _$BannerDtoCopyWithImpl<$Res, BannerDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: '') String id,
      @JsonKey(name: 'option', defaultValue: '') String option,
      @JsonKey(name: 'startingDate', defaultValue: '') String startingDate,
      @JsonKey(name: 'endingDate', defaultValue: '') String endingDate,
      @JsonKey(name: 'banner_images', defaultValue: [])
      List<String> bannerImages,
      @JsonKey(name: 'created_at', defaultValue: '') String createdAt,
      @JsonKey(name: 'updated_at', defaultValue: '') String updatedAt,
      @JsonKey(name: 'is_active', defaultValue: false) bool isActive,
      @JsonKey(name: 'is_deleted', defaultValue: false) bool isDeleted});
}

/// @nodoc
class _$BannerDtoCopyWithImpl<$Res, $Val extends BannerDto>
    implements $BannerDtoCopyWith<$Res> {
  _$BannerDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? option = null,
    Object? startingDate = null,
    Object? endingDate = null,
    Object? bannerImages = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? isActive = null,
    Object? isDeleted = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      option: null == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as String,
      startingDate: null == startingDate
          ? _value.startingDate
          : startingDate // ignore: cast_nullable_to_non_nullable
              as String,
      endingDate: null == endingDate
          ? _value.endingDate
          : endingDate // ignore: cast_nullable_to_non_nullable
              as String,
      bannerImages: null == bannerImages
          ? _value.bannerImages
          : bannerImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BannerDtoImplCopyWith<$Res>
    implements $BannerDtoCopyWith<$Res> {
  factory _$$BannerDtoImplCopyWith(
          _$BannerDtoImpl value, $Res Function(_$BannerDtoImpl) then) =
      __$$BannerDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: '') String id,
      @JsonKey(name: 'option', defaultValue: '') String option,
      @JsonKey(name: 'startingDate', defaultValue: '') String startingDate,
      @JsonKey(name: 'endingDate', defaultValue: '') String endingDate,
      @JsonKey(name: 'banner_images', defaultValue: [])
      List<String> bannerImages,
      @JsonKey(name: 'created_at', defaultValue: '') String createdAt,
      @JsonKey(name: 'updated_at', defaultValue: '') String updatedAt,
      @JsonKey(name: 'is_active', defaultValue: false) bool isActive,
      @JsonKey(name: 'is_deleted', defaultValue: false) bool isDeleted});
}

/// @nodoc
class __$$BannerDtoImplCopyWithImpl<$Res>
    extends _$BannerDtoCopyWithImpl<$Res, _$BannerDtoImpl>
    implements _$$BannerDtoImplCopyWith<$Res> {
  __$$BannerDtoImplCopyWithImpl(
      _$BannerDtoImpl _value, $Res Function(_$BannerDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? option = null,
    Object? startingDate = null,
    Object? endingDate = null,
    Object? bannerImages = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? isActive = null,
    Object? isDeleted = null,
  }) {
    return _then(_$BannerDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      option: null == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as String,
      startingDate: null == startingDate
          ? _value.startingDate
          : startingDate // ignore: cast_nullable_to_non_nullable
              as String,
      endingDate: null == endingDate
          ? _value.endingDate
          : endingDate // ignore: cast_nullable_to_non_nullable
              as String,
      bannerImages: null == bannerImages
          ? _value._bannerImages
          : bannerImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BannerDtoImpl extends _BannerDto {
  const _$BannerDtoImpl(
      {@JsonKey(name: 'id', defaultValue: '') required this.id,
      @JsonKey(name: 'option', defaultValue: '') required this.option,
      @JsonKey(name: 'startingDate', defaultValue: '')
      required this.startingDate,
      @JsonKey(name: 'endingDate', defaultValue: '') required this.endingDate,
      @JsonKey(name: 'banner_images', defaultValue: [])
      required final List<String> bannerImages,
      @JsonKey(name: 'created_at', defaultValue: '') required this.createdAt,
      @JsonKey(name: 'updated_at', defaultValue: '') required this.updatedAt,
      @JsonKey(name: 'is_active', defaultValue: false) required this.isActive,
      @JsonKey(name: 'is_deleted', defaultValue: false)
      required this.isDeleted})
      : _bannerImages = bannerImages,
        super._();

  factory _$BannerDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannerDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: '')
  final String id;
  @override
  @JsonKey(name: 'option', defaultValue: '')
  final String option;
  @override
  @JsonKey(name: 'startingDate', defaultValue: '')
  final String startingDate;
  @override
  @JsonKey(name: 'endingDate', defaultValue: '')
  final String endingDate;
  final List<String> _bannerImages;
  @override
  @JsonKey(name: 'banner_images', defaultValue: [])
  List<String> get bannerImages {
    if (_bannerImages is EqualUnmodifiableListView) return _bannerImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bannerImages);
  }

  @override
  @JsonKey(name: 'created_at', defaultValue: '')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at', defaultValue: '')
  final String updatedAt;
  @override
  @JsonKey(name: 'is_active', defaultValue: false)
  final bool isActive;
  @override
  @JsonKey(name: 'is_deleted', defaultValue: false)
  final bool isDeleted;

  @override
  String toString() {
    return 'BannerDto(id: $id, option: $option, startingDate: $startingDate, endingDate: $endingDate, bannerImages: $bannerImages, createdAt: $createdAt, updatedAt: $updatedAt, isActive: $isActive, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.option, option) || other.option == option) &&
            (identical(other.startingDate, startingDate) ||
                other.startingDate == startingDate) &&
            (identical(other.endingDate, endingDate) ||
                other.endingDate == endingDate) &&
            const DeepCollectionEquality()
                .equals(other._bannerImages, _bannerImages) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      option,
      startingDate,
      endingDate,
      const DeepCollectionEquality().hash(_bannerImages),
      createdAt,
      updatedAt,
      isActive,
      isDeleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerDtoImplCopyWith<_$BannerDtoImpl> get copyWith =>
      __$$BannerDtoImplCopyWithImpl<_$BannerDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BannerDtoImplToJson(
      this,
    );
  }
}

abstract class _BannerDto extends BannerDto {
  const factory _BannerDto(
      {@JsonKey(name: 'id', defaultValue: '') required final String id,
      @JsonKey(name: 'option', defaultValue: '') required final String option,
      @JsonKey(name: 'startingDate', defaultValue: '')
      required final String startingDate,
      @JsonKey(name: 'endingDate', defaultValue: '')
      required final String endingDate,
      @JsonKey(name: 'banner_images', defaultValue: [])
      required final List<String> bannerImages,
      @JsonKey(name: 'created_at', defaultValue: '')
      required final String createdAt,
      @JsonKey(name: 'updated_at', defaultValue: '')
      required final String updatedAt,
      @JsonKey(name: 'is_active', defaultValue: false)
      required final bool isActive,
      @JsonKey(name: 'is_deleted', defaultValue: false)
      required final bool isDeleted}) = _$BannerDtoImpl;
  const _BannerDto._() : super._();

  factory _BannerDto.fromJson(Map<String, dynamic> json) =
      _$BannerDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id', defaultValue: '')
  String get id;
  @override
  @JsonKey(name: 'option', defaultValue: '')
  String get option;
  @override
  @JsonKey(name: 'startingDate', defaultValue: '')
  String get startingDate;
  @override
  @JsonKey(name: 'endingDate', defaultValue: '')
  String get endingDate;
  @override
  @JsonKey(name: 'banner_images', defaultValue: [])
  List<String> get bannerImages;
  @override
  @JsonKey(name: 'created_at', defaultValue: '')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at', defaultValue: '')
  String get updatedAt;
  @override
  @JsonKey(name: 'is_active', defaultValue: false)
  bool get isActive;
  @override
  @JsonKey(name: 'is_deleted', defaultValue: false)
  bool get isDeleted;
  @override
  @JsonKey(ignore: true)
  _$$BannerDtoImplCopyWith<_$BannerDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
