// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'track_order_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrackOrderDto _$TrackOrderDtoFromJson(Map<String, dynamic> json) {
  return _TrackOrderDto.fromJson(json);
}

/// @nodoc
mixin _$TrackOrderDto {
  @JsonKey(name: 'items', defaultValue: [])
  List<TrackOrderDetailsDto> get trackOrderItems =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'totalCount', defaultValue: 0)
  int get totalCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrackOrderDtoCopyWith<TrackOrderDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackOrderDtoCopyWith<$Res> {
  factory $TrackOrderDtoCopyWith(
          TrackOrderDto value, $Res Function(TrackOrderDto) then) =
      _$TrackOrderDtoCopyWithImpl<$Res, TrackOrderDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'items', defaultValue: [])
      List<TrackOrderDetailsDto> trackOrderItems,
      @JsonKey(name: 'totalCount', defaultValue: 0) int totalCount});
}

/// @nodoc
class _$TrackOrderDtoCopyWithImpl<$Res, $Val extends TrackOrderDto>
    implements $TrackOrderDtoCopyWith<$Res> {
  _$TrackOrderDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackOrderItems = null,
    Object? totalCount = null,
  }) {
    return _then(_value.copyWith(
      trackOrderItems: null == trackOrderItems
          ? _value.trackOrderItems
          : trackOrderItems // ignore: cast_nullable_to_non_nullable
              as List<TrackOrderDetailsDto>,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrackOrderDtoImplCopyWith<$Res>
    implements $TrackOrderDtoCopyWith<$Res> {
  factory _$$TrackOrderDtoImplCopyWith(
          _$TrackOrderDtoImpl value, $Res Function(_$TrackOrderDtoImpl) then) =
      __$$TrackOrderDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'items', defaultValue: [])
      List<TrackOrderDetailsDto> trackOrderItems,
      @JsonKey(name: 'totalCount', defaultValue: 0) int totalCount});
}

/// @nodoc
class __$$TrackOrderDtoImplCopyWithImpl<$Res>
    extends _$TrackOrderDtoCopyWithImpl<$Res, _$TrackOrderDtoImpl>
    implements _$$TrackOrderDtoImplCopyWith<$Res> {
  __$$TrackOrderDtoImplCopyWithImpl(
      _$TrackOrderDtoImpl _value, $Res Function(_$TrackOrderDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackOrderItems = null,
    Object? totalCount = null,
  }) {
    return _then(_$TrackOrderDtoImpl(
      trackOrderItems: null == trackOrderItems
          ? _value._trackOrderItems
          : trackOrderItems // ignore: cast_nullable_to_non_nullable
              as List<TrackOrderDetailsDto>,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrackOrderDtoImpl extends _TrackOrderDto {
  _$TrackOrderDtoImpl(
      {@JsonKey(name: 'items', defaultValue: [])
      required final List<TrackOrderDetailsDto> trackOrderItems,
      @JsonKey(name: 'totalCount', defaultValue: 0) required this.totalCount})
      : _trackOrderItems = trackOrderItems,
        super._();

  factory _$TrackOrderDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrackOrderDtoImplFromJson(json);

  final List<TrackOrderDetailsDto> _trackOrderItems;
  @override
  @JsonKey(name: 'items', defaultValue: [])
  List<TrackOrderDetailsDto> get trackOrderItems {
    if (_trackOrderItems is EqualUnmodifiableListView) return _trackOrderItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trackOrderItems);
  }

  @override
  @JsonKey(name: 'totalCount', defaultValue: 0)
  final int totalCount;

  @override
  String toString() {
    return 'TrackOrderDto(trackOrderItems: $trackOrderItems, totalCount: $totalCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackOrderDtoImpl &&
            const DeepCollectionEquality()
                .equals(other._trackOrderItems, _trackOrderItems) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_trackOrderItems), totalCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackOrderDtoImplCopyWith<_$TrackOrderDtoImpl> get copyWith =>
      __$$TrackOrderDtoImplCopyWithImpl<_$TrackOrderDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrackOrderDtoImplToJson(
      this,
    );
  }
}

abstract class _TrackOrderDto extends TrackOrderDto {
  factory _TrackOrderDto(
      {@JsonKey(name: 'items', defaultValue: [])
      required final List<TrackOrderDetailsDto> trackOrderItems,
      @JsonKey(name: 'totalCount', defaultValue: 0)
      required final int totalCount}) = _$TrackOrderDtoImpl;
  _TrackOrderDto._() : super._();

  factory _TrackOrderDto.fromJson(Map<String, dynamic> json) =
      _$TrackOrderDtoImpl.fromJson;

  @override
  @JsonKey(name: 'items', defaultValue: [])
  List<TrackOrderDetailsDto> get trackOrderItems;
  @override
  @JsonKey(name: 'totalCount', defaultValue: 0)
  int get totalCount;
  @override
  @JsonKey(ignore: true)
  _$$TrackOrderDtoImplCopyWith<_$TrackOrderDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
