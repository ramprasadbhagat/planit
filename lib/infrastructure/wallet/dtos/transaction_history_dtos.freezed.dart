// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_history_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransactionHistoryDto _$TransactionHistoryDtoFromJson(
    Map<String, dynamic> json) {
  return _TransactionHistoryDto.fromJson(json);
}

/// @nodoc
mixin _$TransactionHistoryDto {
  @JsonKey(name: '_id', defaultValue: '')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_id', defaultValue: '')
  String get transactionId => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0, readValue: amountReadValue)
  double get amount => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: TransactionType.CR)
  TransactionType get status => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get date => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionHistoryDtoCopyWith<TransactionHistoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionHistoryDtoCopyWith<$Res> {
  factory $TransactionHistoryDtoCopyWith(TransactionHistoryDto value,
          $Res Function(TransactionHistoryDto) then) =
      _$TransactionHistoryDtoCopyWithImpl<$Res, TransactionHistoryDto>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id', defaultValue: '') String id,
      @JsonKey(name: 'transaction_id', defaultValue: '') String transactionId,
      @JsonKey(defaultValue: 0, readValue: amountReadValue) double amount,
      @JsonKey(defaultValue: TransactionType.CR) TransactionType status,
      @JsonKey(defaultValue: '') String date,
      @JsonKey(defaultValue: '') String description});
}

/// @nodoc
class _$TransactionHistoryDtoCopyWithImpl<$Res,
        $Val extends TransactionHistoryDto>
    implements $TransactionHistoryDtoCopyWith<$Res> {
  _$TransactionHistoryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? transactionId = null,
    Object? amount = null,
    Object? status = null,
    Object? date = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TransactionType,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionHistoryDtoImplCopyWith<$Res>
    implements $TransactionHistoryDtoCopyWith<$Res> {
  factory _$$TransactionHistoryDtoImplCopyWith(
          _$TransactionHistoryDtoImpl value,
          $Res Function(_$TransactionHistoryDtoImpl) then) =
      __$$TransactionHistoryDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id', defaultValue: '') String id,
      @JsonKey(name: 'transaction_id', defaultValue: '') String transactionId,
      @JsonKey(defaultValue: 0, readValue: amountReadValue) double amount,
      @JsonKey(defaultValue: TransactionType.CR) TransactionType status,
      @JsonKey(defaultValue: '') String date,
      @JsonKey(defaultValue: '') String description});
}

/// @nodoc
class __$$TransactionHistoryDtoImplCopyWithImpl<$Res>
    extends _$TransactionHistoryDtoCopyWithImpl<$Res,
        _$TransactionHistoryDtoImpl>
    implements _$$TransactionHistoryDtoImplCopyWith<$Res> {
  __$$TransactionHistoryDtoImplCopyWithImpl(_$TransactionHistoryDtoImpl _value,
      $Res Function(_$TransactionHistoryDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? transactionId = null,
    Object? amount = null,
    Object? status = null,
    Object? date = null,
    Object? description = null,
  }) {
    return _then(_$TransactionHistoryDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TransactionType,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionHistoryDtoImpl extends _TransactionHistoryDto {
  const _$TransactionHistoryDtoImpl(
      {@JsonKey(name: '_id', defaultValue: '') required this.id,
      @JsonKey(name: 'transaction_id', defaultValue: '')
      required this.transactionId,
      @JsonKey(defaultValue: 0, readValue: amountReadValue)
      required this.amount,
      @JsonKey(defaultValue: TransactionType.CR) required this.status,
      @JsonKey(defaultValue: '') required this.date,
      @JsonKey(defaultValue: '') required this.description})
      : super._();

  factory _$TransactionHistoryDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionHistoryDtoImplFromJson(json);

  @override
  @JsonKey(name: '_id', defaultValue: '')
  final String id;
  @override
  @JsonKey(name: 'transaction_id', defaultValue: '')
  final String transactionId;
  @override
  @JsonKey(defaultValue: 0, readValue: amountReadValue)
  final double amount;
  @override
  @JsonKey(defaultValue: TransactionType.CR)
  final TransactionType status;
  @override
  @JsonKey(defaultValue: '')
  final String date;
  @override
  @JsonKey(defaultValue: '')
  final String description;

  @override
  String toString() {
    return 'TransactionHistoryDto(id: $id, transactionId: $transactionId, amount: $amount, status: $status, date: $date, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionHistoryDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, transactionId, amount, status, date, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionHistoryDtoImplCopyWith<_$TransactionHistoryDtoImpl>
      get copyWith => __$$TransactionHistoryDtoImplCopyWithImpl<
          _$TransactionHistoryDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionHistoryDtoImplToJson(
      this,
    );
  }
}

abstract class _TransactionHistoryDto extends TransactionHistoryDto {
  const factory _TransactionHistoryDto(
          {@JsonKey(name: '_id', defaultValue: '') required final String id,
          @JsonKey(name: 'transaction_id', defaultValue: '')
          required final String transactionId,
          @JsonKey(defaultValue: 0, readValue: amountReadValue)
          required final double amount,
          @JsonKey(defaultValue: TransactionType.CR)
          required final TransactionType status,
          @JsonKey(defaultValue: '') required final String date,
          @JsonKey(defaultValue: '') required final String description}) =
      _$TransactionHistoryDtoImpl;
  const _TransactionHistoryDto._() : super._();

  factory _TransactionHistoryDto.fromJson(Map<String, dynamic> json) =
      _$TransactionHistoryDtoImpl.fromJson;

  @override
  @JsonKey(name: '_id', defaultValue: '')
  String get id;
  @override
  @JsonKey(name: 'transaction_id', defaultValue: '')
  String get transactionId;
  @override
  @JsonKey(defaultValue: 0, readValue: amountReadValue)
  double get amount;
  @override
  @JsonKey(defaultValue: TransactionType.CR)
  TransactionType get status;
  @override
  @JsonKey(defaultValue: '')
  String get date;
  @override
  @JsonKey(defaultValue: '')
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$TransactionHistoryDtoImplCopyWith<_$TransactionHistoryDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
