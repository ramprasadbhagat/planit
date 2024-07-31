// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complain_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ComplainEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() fetch,
    required TResult Function(String name, String email, String orderId,
            String complainContent, XFile? file)
        addComplain,
    required TResult Function() selectImage,
    required TResult Function() removeImage,
    required TResult Function(String value) selectOrderId,
    required TResult Function() removeOrderId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(String name, String email, String orderId,
            String complainContent, XFile? file)?
        addComplain,
    TResult? Function()? selectImage,
    TResult? Function()? removeImage,
    TResult? Function(String value)? selectOrderId,
    TResult? Function()? removeOrderId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(String name, String email, String orderId,
            String complainContent, XFile? file)?
        addComplain,
    TResult Function()? selectImage,
    TResult Function()? removeImage,
    TResult Function(String value)? selectOrderId,
    TResult Function()? removeOrderId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_AddComplain value) addComplain,
    required TResult Function(_Select value) selectImage,
    required TResult Function(_Remove value) removeImage,
    required TResult Function(_SelectDropdown value) selectOrderId,
    required TResult Function(_RemoveDropdown value) removeOrderId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_AddComplain value)? addComplain,
    TResult? Function(_Select value)? selectImage,
    TResult? Function(_Remove value)? removeImage,
    TResult? Function(_SelectDropdown value)? selectOrderId,
    TResult? Function(_RemoveDropdown value)? removeOrderId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddComplain value)? addComplain,
    TResult Function(_Select value)? selectImage,
    TResult Function(_Remove value)? removeImage,
    TResult Function(_SelectDropdown value)? selectOrderId,
    TResult Function(_RemoveDropdown value)? removeOrderId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComplainEventCopyWith<$Res> {
  factory $ComplainEventCopyWith(
          ComplainEvent value, $Res Function(ComplainEvent) then) =
      _$ComplainEventCopyWithImpl<$Res, ComplainEvent>;
}

/// @nodoc
class _$ComplainEventCopyWithImpl<$Res, $Val extends ComplainEvent>
    implements $ComplainEventCopyWith<$Res> {
  _$ComplainEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializedImplCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
          _$InitializedImpl value, $Res Function(_$InitializedImpl) then) =
      __$$InitializedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$ComplainEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl();

  @override
  String toString() {
    return 'ComplainEvent.initialized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() fetch,
    required TResult Function(String name, String email, String orderId,
            String complainContent, XFile? file)
        addComplain,
    required TResult Function() selectImage,
    required TResult Function() removeImage,
    required TResult Function(String value) selectOrderId,
    required TResult Function() removeOrderId,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(String name, String email, String orderId,
            String complainContent, XFile? file)?
        addComplain,
    TResult? Function()? selectImage,
    TResult? Function()? removeImage,
    TResult? Function(String value)? selectOrderId,
    TResult? Function()? removeOrderId,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(String name, String email, String orderId,
            String complainContent, XFile? file)?
        addComplain,
    TResult Function()? selectImage,
    TResult Function()? removeImage,
    TResult Function(String value)? selectOrderId,
    TResult Function()? removeOrderId,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_AddComplain value) addComplain,
    required TResult Function(_Select value) selectImage,
    required TResult Function(_Remove value) removeImage,
    required TResult Function(_SelectDropdown value) selectOrderId,
    required TResult Function(_RemoveDropdown value) removeOrderId,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_AddComplain value)? addComplain,
    TResult? Function(_Select value)? selectImage,
    TResult? Function(_Remove value)? removeImage,
    TResult? Function(_SelectDropdown value)? selectOrderId,
    TResult? Function(_RemoveDropdown value)? removeOrderId,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddComplain value)? addComplain,
    TResult Function(_Select value)? selectImage,
    TResult Function(_Remove value)? removeImage,
    TResult Function(_SelectDropdown value)? selectOrderId,
    TResult Function(_RemoveDropdown value)? removeOrderId,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ComplainEvent {
  const factory _Initialized() = _$InitializedImpl;
}

/// @nodoc
abstract class _$$FetchImplCopyWith<$Res> {
  factory _$$FetchImplCopyWith(
          _$FetchImpl value, $Res Function(_$FetchImpl) then) =
      __$$FetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchImplCopyWithImpl<$Res>
    extends _$ComplainEventCopyWithImpl<$Res, _$FetchImpl>
    implements _$$FetchImplCopyWith<$Res> {
  __$$FetchImplCopyWithImpl(
      _$FetchImpl _value, $Res Function(_$FetchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchImpl implements _Fetch {
  const _$FetchImpl();

  @override
  String toString() {
    return 'ComplainEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() fetch,
    required TResult Function(String name, String email, String orderId,
            String complainContent, XFile? file)
        addComplain,
    required TResult Function() selectImage,
    required TResult Function() removeImage,
    required TResult Function(String value) selectOrderId,
    required TResult Function() removeOrderId,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(String name, String email, String orderId,
            String complainContent, XFile? file)?
        addComplain,
    TResult? Function()? selectImage,
    TResult? Function()? removeImage,
    TResult? Function(String value)? selectOrderId,
    TResult? Function()? removeOrderId,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(String name, String email, String orderId,
            String complainContent, XFile? file)?
        addComplain,
    TResult Function()? selectImage,
    TResult Function()? removeImage,
    TResult Function(String value)? selectOrderId,
    TResult Function()? removeOrderId,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_AddComplain value) addComplain,
    required TResult Function(_Select value) selectImage,
    required TResult Function(_Remove value) removeImage,
    required TResult Function(_SelectDropdown value) selectOrderId,
    required TResult Function(_RemoveDropdown value) removeOrderId,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_AddComplain value)? addComplain,
    TResult? Function(_Select value)? selectImage,
    TResult? Function(_Remove value)? removeImage,
    TResult? Function(_SelectDropdown value)? selectOrderId,
    TResult? Function(_RemoveDropdown value)? removeOrderId,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddComplain value)? addComplain,
    TResult Function(_Select value)? selectImage,
    TResult Function(_Remove value)? removeImage,
    TResult Function(_SelectDropdown value)? selectOrderId,
    TResult Function(_RemoveDropdown value)? removeOrderId,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements ComplainEvent {
  const factory _Fetch() = _$FetchImpl;
}

/// @nodoc
abstract class _$$AddComplainImplCopyWith<$Res> {
  factory _$$AddComplainImplCopyWith(
          _$AddComplainImpl value, $Res Function(_$AddComplainImpl) then) =
      __$$AddComplainImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      String email,
      String orderId,
      String complainContent,
      XFile? file});
}

/// @nodoc
class __$$AddComplainImplCopyWithImpl<$Res>
    extends _$ComplainEventCopyWithImpl<$Res, _$AddComplainImpl>
    implements _$$AddComplainImplCopyWith<$Res> {
  __$$AddComplainImplCopyWithImpl(
      _$AddComplainImpl _value, $Res Function(_$AddComplainImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? orderId = null,
    Object? complainContent = null,
    Object? file = freezed,
  }) {
    return _then(_$AddComplainImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      complainContent: null == complainContent
          ? _value.complainContent
          : complainContent // ignore: cast_nullable_to_non_nullable
              as String,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc

class _$AddComplainImpl implements _AddComplain {
  const _$AddComplainImpl(
      {required this.name,
      required this.email,
      required this.orderId,
      required this.complainContent,
      required this.file});

  @override
  final String name;
  @override
  final String email;
  @override
  final String orderId;
  @override
  final String complainContent;
  @override
  final XFile? file;

  @override
  String toString() {
    return 'ComplainEvent.addComplain(name: $name, email: $email, orderId: $orderId, complainContent: $complainContent, file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddComplainImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.complainContent, complainContent) ||
                other.complainContent == complainContent) &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, email, orderId, complainContent, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddComplainImplCopyWith<_$AddComplainImpl> get copyWith =>
      __$$AddComplainImplCopyWithImpl<_$AddComplainImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() fetch,
    required TResult Function(String name, String email, String orderId,
            String complainContent, XFile? file)
        addComplain,
    required TResult Function() selectImage,
    required TResult Function() removeImage,
    required TResult Function(String value) selectOrderId,
    required TResult Function() removeOrderId,
  }) {
    return addComplain(name, email, orderId, complainContent, file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(String name, String email, String orderId,
            String complainContent, XFile? file)?
        addComplain,
    TResult? Function()? selectImage,
    TResult? Function()? removeImage,
    TResult? Function(String value)? selectOrderId,
    TResult? Function()? removeOrderId,
  }) {
    return addComplain?.call(name, email, orderId, complainContent, file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(String name, String email, String orderId,
            String complainContent, XFile? file)?
        addComplain,
    TResult Function()? selectImage,
    TResult Function()? removeImage,
    TResult Function(String value)? selectOrderId,
    TResult Function()? removeOrderId,
    required TResult orElse(),
  }) {
    if (addComplain != null) {
      return addComplain(name, email, orderId, complainContent, file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_AddComplain value) addComplain,
    required TResult Function(_Select value) selectImage,
    required TResult Function(_Remove value) removeImage,
    required TResult Function(_SelectDropdown value) selectOrderId,
    required TResult Function(_RemoveDropdown value) removeOrderId,
  }) {
    return addComplain(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_AddComplain value)? addComplain,
    TResult? Function(_Select value)? selectImage,
    TResult? Function(_Remove value)? removeImage,
    TResult? Function(_SelectDropdown value)? selectOrderId,
    TResult? Function(_RemoveDropdown value)? removeOrderId,
  }) {
    return addComplain?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddComplain value)? addComplain,
    TResult Function(_Select value)? selectImage,
    TResult Function(_Remove value)? removeImage,
    TResult Function(_SelectDropdown value)? selectOrderId,
    TResult Function(_RemoveDropdown value)? removeOrderId,
    required TResult orElse(),
  }) {
    if (addComplain != null) {
      return addComplain(this);
    }
    return orElse();
  }
}

abstract class _AddComplain implements ComplainEvent {
  const factory _AddComplain(
      {required final String name,
      required final String email,
      required final String orderId,
      required final String complainContent,
      required final XFile? file}) = _$AddComplainImpl;

  String get name;
  String get email;
  String get orderId;
  String get complainContent;
  XFile? get file;
  @JsonKey(ignore: true)
  _$$AddComplainImplCopyWith<_$AddComplainImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectImplCopyWith<$Res> {
  factory _$$SelectImplCopyWith(
          _$SelectImpl value, $Res Function(_$SelectImpl) then) =
      __$$SelectImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SelectImplCopyWithImpl<$Res>
    extends _$ComplainEventCopyWithImpl<$Res, _$SelectImpl>
    implements _$$SelectImplCopyWith<$Res> {
  __$$SelectImplCopyWithImpl(
      _$SelectImpl _value, $Res Function(_$SelectImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SelectImpl implements _Select {
  const _$SelectImpl();

  @override
  String toString() {
    return 'ComplainEvent.selectImage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SelectImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() fetch,
    required TResult Function(String name, String email, String orderId,
            String complainContent, XFile? file)
        addComplain,
    required TResult Function() selectImage,
    required TResult Function() removeImage,
    required TResult Function(String value) selectOrderId,
    required TResult Function() removeOrderId,
  }) {
    return selectImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(String name, String email, String orderId,
            String complainContent, XFile? file)?
        addComplain,
    TResult? Function()? selectImage,
    TResult? Function()? removeImage,
    TResult? Function(String value)? selectOrderId,
    TResult? Function()? removeOrderId,
  }) {
    return selectImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(String name, String email, String orderId,
            String complainContent, XFile? file)?
        addComplain,
    TResult Function()? selectImage,
    TResult Function()? removeImage,
    TResult Function(String value)? selectOrderId,
    TResult Function()? removeOrderId,
    required TResult orElse(),
  }) {
    if (selectImage != null) {
      return selectImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_AddComplain value) addComplain,
    required TResult Function(_Select value) selectImage,
    required TResult Function(_Remove value) removeImage,
    required TResult Function(_SelectDropdown value) selectOrderId,
    required TResult Function(_RemoveDropdown value) removeOrderId,
  }) {
    return selectImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_AddComplain value)? addComplain,
    TResult? Function(_Select value)? selectImage,
    TResult? Function(_Remove value)? removeImage,
    TResult? Function(_SelectDropdown value)? selectOrderId,
    TResult? Function(_RemoveDropdown value)? removeOrderId,
  }) {
    return selectImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddComplain value)? addComplain,
    TResult Function(_Select value)? selectImage,
    TResult Function(_Remove value)? removeImage,
    TResult Function(_SelectDropdown value)? selectOrderId,
    TResult Function(_RemoveDropdown value)? removeOrderId,
    required TResult orElse(),
  }) {
    if (selectImage != null) {
      return selectImage(this);
    }
    return orElse();
  }
}

abstract class _Select implements ComplainEvent {
  const factory _Select() = _$SelectImpl;
}

/// @nodoc
abstract class _$$RemoveImplCopyWith<$Res> {
  factory _$$RemoveImplCopyWith(
          _$RemoveImpl value, $Res Function(_$RemoveImpl) then) =
      __$$RemoveImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveImplCopyWithImpl<$Res>
    extends _$ComplainEventCopyWithImpl<$Res, _$RemoveImpl>
    implements _$$RemoveImplCopyWith<$Res> {
  __$$RemoveImplCopyWithImpl(
      _$RemoveImpl _value, $Res Function(_$RemoveImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RemoveImpl implements _Remove {
  const _$RemoveImpl();

  @override
  String toString() {
    return 'ComplainEvent.removeImage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RemoveImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() fetch,
    required TResult Function(String name, String email, String orderId,
            String complainContent, XFile? file)
        addComplain,
    required TResult Function() selectImage,
    required TResult Function() removeImage,
    required TResult Function(String value) selectOrderId,
    required TResult Function() removeOrderId,
  }) {
    return removeImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(String name, String email, String orderId,
            String complainContent, XFile? file)?
        addComplain,
    TResult? Function()? selectImage,
    TResult? Function()? removeImage,
    TResult? Function(String value)? selectOrderId,
    TResult? Function()? removeOrderId,
  }) {
    return removeImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(String name, String email, String orderId,
            String complainContent, XFile? file)?
        addComplain,
    TResult Function()? selectImage,
    TResult Function()? removeImage,
    TResult Function(String value)? selectOrderId,
    TResult Function()? removeOrderId,
    required TResult orElse(),
  }) {
    if (removeImage != null) {
      return removeImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_AddComplain value) addComplain,
    required TResult Function(_Select value) selectImage,
    required TResult Function(_Remove value) removeImage,
    required TResult Function(_SelectDropdown value) selectOrderId,
    required TResult Function(_RemoveDropdown value) removeOrderId,
  }) {
    return removeImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_AddComplain value)? addComplain,
    TResult? Function(_Select value)? selectImage,
    TResult? Function(_Remove value)? removeImage,
    TResult? Function(_SelectDropdown value)? selectOrderId,
    TResult? Function(_RemoveDropdown value)? removeOrderId,
  }) {
    return removeImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddComplain value)? addComplain,
    TResult Function(_Select value)? selectImage,
    TResult Function(_Remove value)? removeImage,
    TResult Function(_SelectDropdown value)? selectOrderId,
    TResult Function(_RemoveDropdown value)? removeOrderId,
    required TResult orElse(),
  }) {
    if (removeImage != null) {
      return removeImage(this);
    }
    return orElse();
  }
}

abstract class _Remove implements ComplainEvent {
  const factory _Remove() = _$RemoveImpl;
}

/// @nodoc
abstract class _$$SelectDropdownImplCopyWith<$Res> {
  factory _$$SelectDropdownImplCopyWith(_$SelectDropdownImpl value,
          $Res Function(_$SelectDropdownImpl) then) =
      __$$SelectDropdownImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$SelectDropdownImplCopyWithImpl<$Res>
    extends _$ComplainEventCopyWithImpl<$Res, _$SelectDropdownImpl>
    implements _$$SelectDropdownImplCopyWith<$Res> {
  __$$SelectDropdownImplCopyWithImpl(
      _$SelectDropdownImpl _value, $Res Function(_$SelectDropdownImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$SelectDropdownImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectDropdownImpl implements _SelectDropdown {
  const _$SelectDropdownImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'ComplainEvent.selectOrderId(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectDropdownImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectDropdownImplCopyWith<_$SelectDropdownImpl> get copyWith =>
      __$$SelectDropdownImplCopyWithImpl<_$SelectDropdownImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() fetch,
    required TResult Function(String name, String email, String orderId,
            String complainContent, XFile? file)
        addComplain,
    required TResult Function() selectImage,
    required TResult Function() removeImage,
    required TResult Function(String value) selectOrderId,
    required TResult Function() removeOrderId,
  }) {
    return selectOrderId(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(String name, String email, String orderId,
            String complainContent, XFile? file)?
        addComplain,
    TResult? Function()? selectImage,
    TResult? Function()? removeImage,
    TResult? Function(String value)? selectOrderId,
    TResult? Function()? removeOrderId,
  }) {
    return selectOrderId?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(String name, String email, String orderId,
            String complainContent, XFile? file)?
        addComplain,
    TResult Function()? selectImage,
    TResult Function()? removeImage,
    TResult Function(String value)? selectOrderId,
    TResult Function()? removeOrderId,
    required TResult orElse(),
  }) {
    if (selectOrderId != null) {
      return selectOrderId(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_AddComplain value) addComplain,
    required TResult Function(_Select value) selectImage,
    required TResult Function(_Remove value) removeImage,
    required TResult Function(_SelectDropdown value) selectOrderId,
    required TResult Function(_RemoveDropdown value) removeOrderId,
  }) {
    return selectOrderId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_AddComplain value)? addComplain,
    TResult? Function(_Select value)? selectImage,
    TResult? Function(_Remove value)? removeImage,
    TResult? Function(_SelectDropdown value)? selectOrderId,
    TResult? Function(_RemoveDropdown value)? removeOrderId,
  }) {
    return selectOrderId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddComplain value)? addComplain,
    TResult Function(_Select value)? selectImage,
    TResult Function(_Remove value)? removeImage,
    TResult Function(_SelectDropdown value)? selectOrderId,
    TResult Function(_RemoveDropdown value)? removeOrderId,
    required TResult orElse(),
  }) {
    if (selectOrderId != null) {
      return selectOrderId(this);
    }
    return orElse();
  }
}

abstract class _SelectDropdown implements ComplainEvent {
  const factory _SelectDropdown({required final String value}) =
      _$SelectDropdownImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$SelectDropdownImplCopyWith<_$SelectDropdownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveDropdownImplCopyWith<$Res> {
  factory _$$RemoveDropdownImplCopyWith(_$RemoveDropdownImpl value,
          $Res Function(_$RemoveDropdownImpl) then) =
      __$$RemoveDropdownImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveDropdownImplCopyWithImpl<$Res>
    extends _$ComplainEventCopyWithImpl<$Res, _$RemoveDropdownImpl>
    implements _$$RemoveDropdownImplCopyWith<$Res> {
  __$$RemoveDropdownImplCopyWithImpl(
      _$RemoveDropdownImpl _value, $Res Function(_$RemoveDropdownImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RemoveDropdownImpl implements _RemoveDropdown {
  const _$RemoveDropdownImpl();

  @override
  String toString() {
    return 'ComplainEvent.removeOrderId()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RemoveDropdownImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() fetch,
    required TResult Function(String name, String email, String orderId,
            String complainContent, XFile? file)
        addComplain,
    required TResult Function() selectImage,
    required TResult Function() removeImage,
    required TResult Function(String value) selectOrderId,
    required TResult Function() removeOrderId,
  }) {
    return removeOrderId();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(String name, String email, String orderId,
            String complainContent, XFile? file)?
        addComplain,
    TResult? Function()? selectImage,
    TResult? Function()? removeImage,
    TResult? Function(String value)? selectOrderId,
    TResult? Function()? removeOrderId,
  }) {
    return removeOrderId?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(String name, String email, String orderId,
            String complainContent, XFile? file)?
        addComplain,
    TResult Function()? selectImage,
    TResult Function()? removeImage,
    TResult Function(String value)? selectOrderId,
    TResult Function()? removeOrderId,
    required TResult orElse(),
  }) {
    if (removeOrderId != null) {
      return removeOrderId();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_AddComplain value) addComplain,
    required TResult Function(_Select value) selectImage,
    required TResult Function(_Remove value) removeImage,
    required TResult Function(_SelectDropdown value) selectOrderId,
    required TResult Function(_RemoveDropdown value) removeOrderId,
  }) {
    return removeOrderId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_AddComplain value)? addComplain,
    TResult? Function(_Select value)? selectImage,
    TResult? Function(_Remove value)? removeImage,
    TResult? Function(_SelectDropdown value)? selectOrderId,
    TResult? Function(_RemoveDropdown value)? removeOrderId,
  }) {
    return removeOrderId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddComplain value)? addComplain,
    TResult Function(_Select value)? selectImage,
    TResult Function(_Remove value)? removeImage,
    TResult Function(_SelectDropdown value)? selectOrderId,
    TResult Function(_RemoveDropdown value)? removeOrderId,
    required TResult orElse(),
  }) {
    if (removeOrderId != null) {
      return removeOrderId(this);
    }
    return orElse();
  }
}

abstract class _RemoveDropdown implements ComplainEvent {
  const factory _RemoveDropdown() = _$RemoveDropdownImpl;
}

/// @nodoc
mixin _$ComplainState {
  List<Complain> get complains => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;
  XFile? get image => throw _privateConstructorUsedError;
  String? get orderId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ComplainStateCopyWith<ComplainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComplainStateCopyWith<$Res> {
  factory $ComplainStateCopyWith(
          ComplainState value, $Res Function(ComplainState) then) =
      _$ComplainStateCopyWithImpl<$Res, ComplainState>;
  @useResult
  $Res call(
      {List<Complain> complains,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
      bool isFetching,
      XFile? image,
      String? orderId});
}

/// @nodoc
class _$ComplainStateCopyWithImpl<$Res, $Val extends ComplainState>
    implements $ComplainStateCopyWith<$Res> {
  _$ComplainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? complains = null,
    Object? apiFailureOrSuccessOption = null,
    Object? isFetching = null,
    Object? image = freezed,
    Object? orderId = freezed,
  }) {
    return _then(_value.copyWith(
      complains: null == complains
          ? _value.complains
          : complains // ignore: cast_nullable_to_non_nullable
              as List<Complain>,
      apiFailureOrSuccessOption: null == apiFailureOrSuccessOption
          ? _value.apiFailureOrSuccessOption
          : apiFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ComplainStateImplCopyWith<$Res>
    implements $ComplainStateCopyWith<$Res> {
  factory _$$ComplainStateImplCopyWith(
          _$ComplainStateImpl value, $Res Function(_$ComplainStateImpl) then) =
      __$$ComplainStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Complain> complains,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
      bool isFetching,
      XFile? image,
      String? orderId});
}

/// @nodoc
class __$$ComplainStateImplCopyWithImpl<$Res>
    extends _$ComplainStateCopyWithImpl<$Res, _$ComplainStateImpl>
    implements _$$ComplainStateImplCopyWith<$Res> {
  __$$ComplainStateImplCopyWithImpl(
      _$ComplainStateImpl _value, $Res Function(_$ComplainStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? complains = null,
    Object? apiFailureOrSuccessOption = null,
    Object? isFetching = null,
    Object? image = freezed,
    Object? orderId = freezed,
  }) {
    return _then(_$ComplainStateImpl(
      complains: null == complains
          ? _value._complains
          : complains // ignore: cast_nullable_to_non_nullable
              as List<Complain>,
      apiFailureOrSuccessOption: null == apiFailureOrSuccessOption
          ? _value.apiFailureOrSuccessOption
          : apiFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ComplainStateImpl extends _ComplainState {
  const _$ComplainStateImpl(
      {required final List<Complain> complains,
      required this.apiFailureOrSuccessOption,
      required this.isFetching,
      required this.image,
      required this.orderId})
      : _complains = complains,
        super._();

  final List<Complain> _complains;
  @override
  List<Complain> get complains {
    if (_complains is EqualUnmodifiableListView) return _complains;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_complains);
  }

  @override
  final Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption;
  @override
  final bool isFetching;
  @override
  final XFile? image;
  @override
  final String? orderId;

  @override
  String toString() {
    return 'ComplainState(complains: $complains, apiFailureOrSuccessOption: $apiFailureOrSuccessOption, isFetching: $isFetching, image: $image, orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComplainStateImpl &&
            const DeepCollectionEquality()
                .equals(other._complains, _complains) &&
            (identical(other.apiFailureOrSuccessOption,
                    apiFailureOrSuccessOption) ||
                other.apiFailureOrSuccessOption == apiFailureOrSuccessOption) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_complains),
      apiFailureOrSuccessOption,
      isFetching,
      image,
      orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ComplainStateImplCopyWith<_$ComplainStateImpl> get copyWith =>
      __$$ComplainStateImplCopyWithImpl<_$ComplainStateImpl>(this, _$identity);
}

abstract class _ComplainState extends ComplainState {
  const factory _ComplainState(
      {required final List<Complain> complains,
      required final Option<Either<ApiFailure, dynamic>>
          apiFailureOrSuccessOption,
      required final bool isFetching,
      required final XFile? image,
      required final String? orderId}) = _$ComplainStateImpl;
  const _ComplainState._() : super._();

  @override
  List<Complain> get complains;
  @override
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption;
  @override
  bool get isFetching;
  @override
  XFile? get image;
  @override
  String? get orderId;
  @override
  @JsonKey(ignore: true)
  _$$ComplainStateImplCopyWith<_$ComplainStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
