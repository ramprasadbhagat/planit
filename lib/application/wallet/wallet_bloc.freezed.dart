// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WalletEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchBalance,
    required TResult Function() fetchTransactionHistory,
    required TResult Function() fetchMoreTransactionEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchBalance,
    TResult? Function()? fetchTransactionHistory,
    TResult? Function()? fetchMoreTransactionEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBalance,
    TResult Function()? fetchTransactionHistory,
    TResult Function()? fetchMoreTransactionEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchBalance value) fetchBalance,
    required TResult Function(_FetchTransactionHistory value)
        fetchTransactionHistory,
    required TResult Function(_FetchMoreEvent value) fetchMoreTransactionEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchBalance value)? fetchBalance,
    TResult? Function(_FetchTransactionHistory value)? fetchTransactionHistory,
    TResult? Function(_FetchMoreEvent value)? fetchMoreTransactionEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchBalance value)? fetchBalance,
    TResult Function(_FetchTransactionHistory value)? fetchTransactionHistory,
    TResult Function(_FetchMoreEvent value)? fetchMoreTransactionEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletEventCopyWith<$Res> {
  factory $WalletEventCopyWith(
          WalletEvent value, $Res Function(WalletEvent) then) =
      _$WalletEventCopyWithImpl<$Res, WalletEvent>;
}

/// @nodoc
class _$WalletEventCopyWithImpl<$Res, $Val extends WalletEvent>
    implements $WalletEventCopyWith<$Res> {
  _$WalletEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchBalanceImplCopyWith<$Res> {
  factory _$$FetchBalanceImplCopyWith(
          _$FetchBalanceImpl value, $Res Function(_$FetchBalanceImpl) then) =
      __$$FetchBalanceImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchBalanceImplCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$FetchBalanceImpl>
    implements _$$FetchBalanceImplCopyWith<$Res> {
  __$$FetchBalanceImplCopyWithImpl(
      _$FetchBalanceImpl _value, $Res Function(_$FetchBalanceImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchBalanceImpl implements _FetchBalance {
  const _$FetchBalanceImpl();

  @override
  String toString() {
    return 'WalletEvent.fetchBalance()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchBalanceImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchBalance,
    required TResult Function() fetchTransactionHistory,
    required TResult Function() fetchMoreTransactionEvent,
  }) {
    return fetchBalance();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchBalance,
    TResult? Function()? fetchTransactionHistory,
    TResult? Function()? fetchMoreTransactionEvent,
  }) {
    return fetchBalance?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBalance,
    TResult Function()? fetchTransactionHistory,
    TResult Function()? fetchMoreTransactionEvent,
    required TResult orElse(),
  }) {
    if (fetchBalance != null) {
      return fetchBalance();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchBalance value) fetchBalance,
    required TResult Function(_FetchTransactionHistory value)
        fetchTransactionHistory,
    required TResult Function(_FetchMoreEvent value) fetchMoreTransactionEvent,
  }) {
    return fetchBalance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchBalance value)? fetchBalance,
    TResult? Function(_FetchTransactionHistory value)? fetchTransactionHistory,
    TResult? Function(_FetchMoreEvent value)? fetchMoreTransactionEvent,
  }) {
    return fetchBalance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchBalance value)? fetchBalance,
    TResult Function(_FetchTransactionHistory value)? fetchTransactionHistory,
    TResult Function(_FetchMoreEvent value)? fetchMoreTransactionEvent,
    required TResult orElse(),
  }) {
    if (fetchBalance != null) {
      return fetchBalance(this);
    }
    return orElse();
  }
}

abstract class _FetchBalance implements WalletEvent {
  const factory _FetchBalance() = _$FetchBalanceImpl;
}

/// @nodoc
abstract class _$$FetchTransactionHistoryImplCopyWith<$Res> {
  factory _$$FetchTransactionHistoryImplCopyWith(
          _$FetchTransactionHistoryImpl value,
          $Res Function(_$FetchTransactionHistoryImpl) then) =
      __$$FetchTransactionHistoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchTransactionHistoryImplCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$FetchTransactionHistoryImpl>
    implements _$$FetchTransactionHistoryImplCopyWith<$Res> {
  __$$FetchTransactionHistoryImplCopyWithImpl(
      _$FetchTransactionHistoryImpl _value,
      $Res Function(_$FetchTransactionHistoryImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchTransactionHistoryImpl implements _FetchTransactionHistory {
  const _$FetchTransactionHistoryImpl();

  @override
  String toString() {
    return 'WalletEvent.fetchTransactionHistory()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchTransactionHistoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchBalance,
    required TResult Function() fetchTransactionHistory,
    required TResult Function() fetchMoreTransactionEvent,
  }) {
    return fetchTransactionHistory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchBalance,
    TResult? Function()? fetchTransactionHistory,
    TResult? Function()? fetchMoreTransactionEvent,
  }) {
    return fetchTransactionHistory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBalance,
    TResult Function()? fetchTransactionHistory,
    TResult Function()? fetchMoreTransactionEvent,
    required TResult orElse(),
  }) {
    if (fetchTransactionHistory != null) {
      return fetchTransactionHistory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchBalance value) fetchBalance,
    required TResult Function(_FetchTransactionHistory value)
        fetchTransactionHistory,
    required TResult Function(_FetchMoreEvent value) fetchMoreTransactionEvent,
  }) {
    return fetchTransactionHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchBalance value)? fetchBalance,
    TResult? Function(_FetchTransactionHistory value)? fetchTransactionHistory,
    TResult? Function(_FetchMoreEvent value)? fetchMoreTransactionEvent,
  }) {
    return fetchTransactionHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchBalance value)? fetchBalance,
    TResult Function(_FetchTransactionHistory value)? fetchTransactionHistory,
    TResult Function(_FetchMoreEvent value)? fetchMoreTransactionEvent,
    required TResult orElse(),
  }) {
    if (fetchTransactionHistory != null) {
      return fetchTransactionHistory(this);
    }
    return orElse();
  }
}

abstract class _FetchTransactionHistory implements WalletEvent {
  const factory _FetchTransactionHistory() = _$FetchTransactionHistoryImpl;
}

/// @nodoc
abstract class _$$FetchMoreEventImplCopyWith<$Res> {
  factory _$$FetchMoreEventImplCopyWith(_$FetchMoreEventImpl value,
          $Res Function(_$FetchMoreEventImpl) then) =
      __$$FetchMoreEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchMoreEventImplCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$FetchMoreEventImpl>
    implements _$$FetchMoreEventImplCopyWith<$Res> {
  __$$FetchMoreEventImplCopyWithImpl(
      _$FetchMoreEventImpl _value, $Res Function(_$FetchMoreEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchMoreEventImpl implements _FetchMoreEvent {
  const _$FetchMoreEventImpl();

  @override
  String toString() {
    return 'WalletEvent.fetchMoreTransactionEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchMoreEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchBalance,
    required TResult Function() fetchTransactionHistory,
    required TResult Function() fetchMoreTransactionEvent,
  }) {
    return fetchMoreTransactionEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchBalance,
    TResult? Function()? fetchTransactionHistory,
    TResult? Function()? fetchMoreTransactionEvent,
  }) {
    return fetchMoreTransactionEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBalance,
    TResult Function()? fetchTransactionHistory,
    TResult Function()? fetchMoreTransactionEvent,
    required TResult orElse(),
  }) {
    if (fetchMoreTransactionEvent != null) {
      return fetchMoreTransactionEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchBalance value) fetchBalance,
    required TResult Function(_FetchTransactionHistory value)
        fetchTransactionHistory,
    required TResult Function(_FetchMoreEvent value) fetchMoreTransactionEvent,
  }) {
    return fetchMoreTransactionEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchBalance value)? fetchBalance,
    TResult? Function(_FetchTransactionHistory value)? fetchTransactionHistory,
    TResult? Function(_FetchMoreEvent value)? fetchMoreTransactionEvent,
  }) {
    return fetchMoreTransactionEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchBalance value)? fetchBalance,
    TResult Function(_FetchTransactionHistory value)? fetchTransactionHistory,
    TResult Function(_FetchMoreEvent value)? fetchMoreTransactionEvent,
    required TResult orElse(),
  }) {
    if (fetchMoreTransactionEvent != null) {
      return fetchMoreTransactionEvent(this);
    }
    return orElse();
  }
}

abstract class _FetchMoreEvent implements WalletEvent {
  const factory _FetchMoreEvent() = _$FetchMoreEventImpl;
}

/// @nodoc
mixin _$WalletState {
  int get balance => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isTransactionLoading => throw _privateConstructorUsedError;
  List<TransactionHistory> get transactions =>
      throw _privateConstructorUsedError;
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  int get transactionPageNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WalletStateCopyWith<WalletState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletStateCopyWith<$Res> {
  factory $WalletStateCopyWith(
          WalletState value, $Res Function(WalletState) then) =
      _$WalletStateCopyWithImpl<$Res, WalletState>;
  @useResult
  $Res call(
      {int balance,
      bool isLoading,
      bool isTransactionLoading,
      List<TransactionHistory> transactions,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
      bool hasMore,
      int transactionPageNumber});
}

/// @nodoc
class _$WalletStateCopyWithImpl<$Res, $Val extends WalletState>
    implements $WalletStateCopyWith<$Res> {
  _$WalletStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
    Object? isLoading = null,
    Object? isTransactionLoading = null,
    Object? transactions = null,
    Object? apiFailureOrSuccessOption = null,
    Object? hasMore = null,
    Object? transactionPageNumber = null,
  }) {
    return _then(_value.copyWith(
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isTransactionLoading: null == isTransactionLoading
          ? _value.isTransactionLoading
          : isTransactionLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionHistory>,
      apiFailureOrSuccessOption: null == apiFailureOrSuccessOption
          ? _value.apiFailureOrSuccessOption
          : apiFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      transactionPageNumber: null == transactionPageNumber
          ? _value.transactionPageNumber
          : transactionPageNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletStateImplCopyWith<$Res>
    implements $WalletStateCopyWith<$Res> {
  factory _$$WalletStateImplCopyWith(
          _$WalletStateImpl value, $Res Function(_$WalletStateImpl) then) =
      __$$WalletStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int balance,
      bool isLoading,
      bool isTransactionLoading,
      List<TransactionHistory> transactions,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
      bool hasMore,
      int transactionPageNumber});
}

/// @nodoc
class __$$WalletStateImplCopyWithImpl<$Res>
    extends _$WalletStateCopyWithImpl<$Res, _$WalletStateImpl>
    implements _$$WalletStateImplCopyWith<$Res> {
  __$$WalletStateImplCopyWithImpl(
      _$WalletStateImpl _value, $Res Function(_$WalletStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
    Object? isLoading = null,
    Object? isTransactionLoading = null,
    Object? transactions = null,
    Object? apiFailureOrSuccessOption = null,
    Object? hasMore = null,
    Object? transactionPageNumber = null,
  }) {
    return _then(_$WalletStateImpl(
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isTransactionLoading: null == isTransactionLoading
          ? _value.isTransactionLoading
          : isTransactionLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionHistory>,
      apiFailureOrSuccessOption: null == apiFailureOrSuccessOption
          ? _value.apiFailureOrSuccessOption
          : apiFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      transactionPageNumber: null == transactionPageNumber
          ? _value.transactionPageNumber
          : transactionPageNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$WalletStateImpl implements _WalletState {
  const _$WalletStateImpl(
      {required this.balance,
      required this.isLoading,
      required this.isTransactionLoading,
      required final List<TransactionHistory> transactions,
      required this.apiFailureOrSuccessOption,
      required this.hasMore,
      required this.transactionPageNumber})
      : _transactions = transactions;

  @override
  final int balance;
  @override
  final bool isLoading;
  @override
  final bool isTransactionLoading;
  final List<TransactionHistory> _transactions;
  @override
  List<TransactionHistory> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  final Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption;
  @override
  final bool hasMore;
  @override
  final int transactionPageNumber;

  @override
  String toString() {
    return 'WalletState(balance: $balance, isLoading: $isLoading, isTransactionLoading: $isTransactionLoading, transactions: $transactions, apiFailureOrSuccessOption: $apiFailureOrSuccessOption, hasMore: $hasMore, transactionPageNumber: $transactionPageNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletStateImpl &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isTransactionLoading, isTransactionLoading) ||
                other.isTransactionLoading == isTransactionLoading) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
            (identical(other.apiFailureOrSuccessOption,
                    apiFailureOrSuccessOption) ||
                other.apiFailureOrSuccessOption == apiFailureOrSuccessOption) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.transactionPageNumber, transactionPageNumber) ||
                other.transactionPageNumber == transactionPageNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      balance,
      isLoading,
      isTransactionLoading,
      const DeepCollectionEquality().hash(_transactions),
      apiFailureOrSuccessOption,
      hasMore,
      transactionPageNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletStateImplCopyWith<_$WalletStateImpl> get copyWith =>
      __$$WalletStateImplCopyWithImpl<_$WalletStateImpl>(this, _$identity);
}

abstract class _WalletState implements WalletState {
  const factory _WalletState(
      {required final int balance,
      required final bool isLoading,
      required final bool isTransactionLoading,
      required final List<TransactionHistory> transactions,
      required final Option<Either<ApiFailure, dynamic>>
          apiFailureOrSuccessOption,
      required final bool hasMore,
      required final int transactionPageNumber}) = _$WalletStateImpl;

  @override
  int get balance;
  @override
  bool get isLoading;
  @override
  bool get isTransactionLoading;
  @override
  List<TransactionHistory> get transactions;
  @override
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption;
  @override
  bool get hasMore;
  @override
  int get transactionPageNumber;
  @override
  @JsonKey(ignore: true)
  _$$WalletStateImplCopyWith<_$WalletStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
