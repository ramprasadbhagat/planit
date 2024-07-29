// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecipeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(String cuisine) cuisineCheckboxChange,
    required TResult Function(String course) courseCheckboxChange,
    required TResult Function() applyFilterClicked,
    required TResult Function() clearAllFilterClicked,
    required TResult Function() resetTempSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(String cuisine)? cuisineCheckboxChange,
    TResult? Function(String course)? courseCheckboxChange,
    TResult? Function()? applyFilterClicked,
    TResult? Function()? clearAllFilterClicked,
    TResult? Function()? resetTempSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String cuisine)? cuisineCheckboxChange,
    TResult Function(String course)? courseCheckboxChange,
    TResult Function()? applyFilterClicked,
    TResult Function()? clearAllFilterClicked,
    TResult Function()? resetTempSelection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_CuisineCheckboxChange value)
        cuisineCheckboxChange,
    required TResult Function(_CourseCheckboxChange value) courseCheckboxChange,
    required TResult Function(_ApplyFilterClicked value) applyFilterClicked,
    required TResult Function(_ClearAllFilterClicked value)
        clearAllFilterClicked,
    required TResult Function(_ResetTempSelection value) resetTempSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_CuisineCheckboxChange value)? cuisineCheckboxChange,
    TResult? Function(_CourseCheckboxChange value)? courseCheckboxChange,
    TResult? Function(_ApplyFilterClicked value)? applyFilterClicked,
    TResult? Function(_ClearAllFilterClicked value)? clearAllFilterClicked,
    TResult? Function(_ResetTempSelection value)? resetTempSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_CuisineCheckboxChange value)? cuisineCheckboxChange,
    TResult Function(_CourseCheckboxChange value)? courseCheckboxChange,
    TResult Function(_ApplyFilterClicked value)? applyFilterClicked,
    TResult Function(_ClearAllFilterClicked value)? clearAllFilterClicked,
    TResult Function(_ResetTempSelection value)? resetTempSelection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeEventCopyWith<$Res> {
  factory $RecipeEventCopyWith(
          RecipeEvent value, $Res Function(RecipeEvent) then) =
      _$RecipeEventCopyWithImpl<$Res, RecipeEvent>;
}

/// @nodoc
class _$RecipeEventCopyWithImpl<$Res, $Val extends RecipeEvent>
    implements $RecipeEventCopyWith<$Res> {
  _$RecipeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchImplCopyWith<$Res> {
  factory _$$FetchImplCopyWith(
          _$FetchImpl value, $Res Function(_$FetchImpl) then) =
      __$$FetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchImplCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res, _$FetchImpl>
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
    return 'RecipeEvent.fetch()';
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
    required TResult Function() fetch,
    required TResult Function(String cuisine) cuisineCheckboxChange,
    required TResult Function(String course) courseCheckboxChange,
    required TResult Function() applyFilterClicked,
    required TResult Function() clearAllFilterClicked,
    required TResult Function() resetTempSelection,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(String cuisine)? cuisineCheckboxChange,
    TResult? Function(String course)? courseCheckboxChange,
    TResult? Function()? applyFilterClicked,
    TResult? Function()? clearAllFilterClicked,
    TResult? Function()? resetTempSelection,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String cuisine)? cuisineCheckboxChange,
    TResult Function(String course)? courseCheckboxChange,
    TResult Function()? applyFilterClicked,
    TResult Function()? clearAllFilterClicked,
    TResult Function()? resetTempSelection,
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
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_CuisineCheckboxChange value)
        cuisineCheckboxChange,
    required TResult Function(_CourseCheckboxChange value) courseCheckboxChange,
    required TResult Function(_ApplyFilterClicked value) applyFilterClicked,
    required TResult Function(_ClearAllFilterClicked value)
        clearAllFilterClicked,
    required TResult Function(_ResetTempSelection value) resetTempSelection,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_CuisineCheckboxChange value)? cuisineCheckboxChange,
    TResult? Function(_CourseCheckboxChange value)? courseCheckboxChange,
    TResult? Function(_ApplyFilterClicked value)? applyFilterClicked,
    TResult? Function(_ClearAllFilterClicked value)? clearAllFilterClicked,
    TResult? Function(_ResetTempSelection value)? resetTempSelection,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_CuisineCheckboxChange value)? cuisineCheckboxChange,
    TResult Function(_CourseCheckboxChange value)? courseCheckboxChange,
    TResult Function(_ApplyFilterClicked value)? applyFilterClicked,
    TResult Function(_ClearAllFilterClicked value)? clearAllFilterClicked,
    TResult Function(_ResetTempSelection value)? resetTempSelection,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements RecipeEvent {
  const factory _Fetch() = _$FetchImpl;
}

/// @nodoc
abstract class _$$CuisineCheckboxChangeImplCopyWith<$Res> {
  factory _$$CuisineCheckboxChangeImplCopyWith(
          _$CuisineCheckboxChangeImpl value,
          $Res Function(_$CuisineCheckboxChangeImpl) then) =
      __$$CuisineCheckboxChangeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String cuisine});
}

/// @nodoc
class __$$CuisineCheckboxChangeImplCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res, _$CuisineCheckboxChangeImpl>
    implements _$$CuisineCheckboxChangeImplCopyWith<$Res> {
  __$$CuisineCheckboxChangeImplCopyWithImpl(_$CuisineCheckboxChangeImpl _value,
      $Res Function(_$CuisineCheckboxChangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cuisine = null,
  }) {
    return _then(_$CuisineCheckboxChangeImpl(
      null == cuisine
          ? _value.cuisine
          : cuisine // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CuisineCheckboxChangeImpl implements _CuisineCheckboxChange {
  const _$CuisineCheckboxChangeImpl(this.cuisine);

  @override
  final String cuisine;

  @override
  String toString() {
    return 'RecipeEvent.cuisineCheckboxChange(cuisine: $cuisine)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CuisineCheckboxChangeImpl &&
            (identical(other.cuisine, cuisine) || other.cuisine == cuisine));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cuisine);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CuisineCheckboxChangeImplCopyWith<_$CuisineCheckboxChangeImpl>
      get copyWith => __$$CuisineCheckboxChangeImplCopyWithImpl<
          _$CuisineCheckboxChangeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(String cuisine) cuisineCheckboxChange,
    required TResult Function(String course) courseCheckboxChange,
    required TResult Function() applyFilterClicked,
    required TResult Function() clearAllFilterClicked,
    required TResult Function() resetTempSelection,
  }) {
    return cuisineCheckboxChange(cuisine);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(String cuisine)? cuisineCheckboxChange,
    TResult? Function(String course)? courseCheckboxChange,
    TResult? Function()? applyFilterClicked,
    TResult? Function()? clearAllFilterClicked,
    TResult? Function()? resetTempSelection,
  }) {
    return cuisineCheckboxChange?.call(cuisine);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String cuisine)? cuisineCheckboxChange,
    TResult Function(String course)? courseCheckboxChange,
    TResult Function()? applyFilterClicked,
    TResult Function()? clearAllFilterClicked,
    TResult Function()? resetTempSelection,
    required TResult orElse(),
  }) {
    if (cuisineCheckboxChange != null) {
      return cuisineCheckboxChange(cuisine);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_CuisineCheckboxChange value)
        cuisineCheckboxChange,
    required TResult Function(_CourseCheckboxChange value) courseCheckboxChange,
    required TResult Function(_ApplyFilterClicked value) applyFilterClicked,
    required TResult Function(_ClearAllFilterClicked value)
        clearAllFilterClicked,
    required TResult Function(_ResetTempSelection value) resetTempSelection,
  }) {
    return cuisineCheckboxChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_CuisineCheckboxChange value)? cuisineCheckboxChange,
    TResult? Function(_CourseCheckboxChange value)? courseCheckboxChange,
    TResult? Function(_ApplyFilterClicked value)? applyFilterClicked,
    TResult? Function(_ClearAllFilterClicked value)? clearAllFilterClicked,
    TResult? Function(_ResetTempSelection value)? resetTempSelection,
  }) {
    return cuisineCheckboxChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_CuisineCheckboxChange value)? cuisineCheckboxChange,
    TResult Function(_CourseCheckboxChange value)? courseCheckboxChange,
    TResult Function(_ApplyFilterClicked value)? applyFilterClicked,
    TResult Function(_ClearAllFilterClicked value)? clearAllFilterClicked,
    TResult Function(_ResetTempSelection value)? resetTempSelection,
    required TResult orElse(),
  }) {
    if (cuisineCheckboxChange != null) {
      return cuisineCheckboxChange(this);
    }
    return orElse();
  }
}

abstract class _CuisineCheckboxChange implements RecipeEvent {
  const factory _CuisineCheckboxChange(final String cuisine) =
      _$CuisineCheckboxChangeImpl;

  String get cuisine;
  @JsonKey(ignore: true)
  _$$CuisineCheckboxChangeImplCopyWith<_$CuisineCheckboxChangeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CourseCheckboxChangeImplCopyWith<$Res> {
  factory _$$CourseCheckboxChangeImplCopyWith(_$CourseCheckboxChangeImpl value,
          $Res Function(_$CourseCheckboxChangeImpl) then) =
      __$$CourseCheckboxChangeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String course});
}

/// @nodoc
class __$$CourseCheckboxChangeImplCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res, _$CourseCheckboxChangeImpl>
    implements _$$CourseCheckboxChangeImplCopyWith<$Res> {
  __$$CourseCheckboxChangeImplCopyWithImpl(_$CourseCheckboxChangeImpl _value,
      $Res Function(_$CourseCheckboxChangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? course = null,
  }) {
    return _then(_$CourseCheckboxChangeImpl(
      null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CourseCheckboxChangeImpl implements _CourseCheckboxChange {
  const _$CourseCheckboxChangeImpl(this.course);

  @override
  final String course;

  @override
  String toString() {
    return 'RecipeEvent.courseCheckboxChange(course: $course)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseCheckboxChangeImpl &&
            (identical(other.course, course) || other.course == course));
  }

  @override
  int get hashCode => Object.hash(runtimeType, course);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseCheckboxChangeImplCopyWith<_$CourseCheckboxChangeImpl>
      get copyWith =>
          __$$CourseCheckboxChangeImplCopyWithImpl<_$CourseCheckboxChangeImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(String cuisine) cuisineCheckboxChange,
    required TResult Function(String course) courseCheckboxChange,
    required TResult Function() applyFilterClicked,
    required TResult Function() clearAllFilterClicked,
    required TResult Function() resetTempSelection,
  }) {
    return courseCheckboxChange(course);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(String cuisine)? cuisineCheckboxChange,
    TResult? Function(String course)? courseCheckboxChange,
    TResult? Function()? applyFilterClicked,
    TResult? Function()? clearAllFilterClicked,
    TResult? Function()? resetTempSelection,
  }) {
    return courseCheckboxChange?.call(course);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String cuisine)? cuisineCheckboxChange,
    TResult Function(String course)? courseCheckboxChange,
    TResult Function()? applyFilterClicked,
    TResult Function()? clearAllFilterClicked,
    TResult Function()? resetTempSelection,
    required TResult orElse(),
  }) {
    if (courseCheckboxChange != null) {
      return courseCheckboxChange(course);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_CuisineCheckboxChange value)
        cuisineCheckboxChange,
    required TResult Function(_CourseCheckboxChange value) courseCheckboxChange,
    required TResult Function(_ApplyFilterClicked value) applyFilterClicked,
    required TResult Function(_ClearAllFilterClicked value)
        clearAllFilterClicked,
    required TResult Function(_ResetTempSelection value) resetTempSelection,
  }) {
    return courseCheckboxChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_CuisineCheckboxChange value)? cuisineCheckboxChange,
    TResult? Function(_CourseCheckboxChange value)? courseCheckboxChange,
    TResult? Function(_ApplyFilterClicked value)? applyFilterClicked,
    TResult? Function(_ClearAllFilterClicked value)? clearAllFilterClicked,
    TResult? Function(_ResetTempSelection value)? resetTempSelection,
  }) {
    return courseCheckboxChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_CuisineCheckboxChange value)? cuisineCheckboxChange,
    TResult Function(_CourseCheckboxChange value)? courseCheckboxChange,
    TResult Function(_ApplyFilterClicked value)? applyFilterClicked,
    TResult Function(_ClearAllFilterClicked value)? clearAllFilterClicked,
    TResult Function(_ResetTempSelection value)? resetTempSelection,
    required TResult orElse(),
  }) {
    if (courseCheckboxChange != null) {
      return courseCheckboxChange(this);
    }
    return orElse();
  }
}

abstract class _CourseCheckboxChange implements RecipeEvent {
  const factory _CourseCheckboxChange(final String course) =
      _$CourseCheckboxChangeImpl;

  String get course;
  @JsonKey(ignore: true)
  _$$CourseCheckboxChangeImplCopyWith<_$CourseCheckboxChangeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApplyFilterClickedImplCopyWith<$Res> {
  factory _$$ApplyFilterClickedImplCopyWith(_$ApplyFilterClickedImpl value,
          $Res Function(_$ApplyFilterClickedImpl) then) =
      __$$ApplyFilterClickedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ApplyFilterClickedImplCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res, _$ApplyFilterClickedImpl>
    implements _$$ApplyFilterClickedImplCopyWith<$Res> {
  __$$ApplyFilterClickedImplCopyWithImpl(_$ApplyFilterClickedImpl _value,
      $Res Function(_$ApplyFilterClickedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ApplyFilterClickedImpl implements _ApplyFilterClicked {
  const _$ApplyFilterClickedImpl();

  @override
  String toString() {
    return 'RecipeEvent.applyFilterClicked()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ApplyFilterClickedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(String cuisine) cuisineCheckboxChange,
    required TResult Function(String course) courseCheckboxChange,
    required TResult Function() applyFilterClicked,
    required TResult Function() clearAllFilterClicked,
    required TResult Function() resetTempSelection,
  }) {
    return applyFilterClicked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(String cuisine)? cuisineCheckboxChange,
    TResult? Function(String course)? courseCheckboxChange,
    TResult? Function()? applyFilterClicked,
    TResult? Function()? clearAllFilterClicked,
    TResult? Function()? resetTempSelection,
  }) {
    return applyFilterClicked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String cuisine)? cuisineCheckboxChange,
    TResult Function(String course)? courseCheckboxChange,
    TResult Function()? applyFilterClicked,
    TResult Function()? clearAllFilterClicked,
    TResult Function()? resetTempSelection,
    required TResult orElse(),
  }) {
    if (applyFilterClicked != null) {
      return applyFilterClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_CuisineCheckboxChange value)
        cuisineCheckboxChange,
    required TResult Function(_CourseCheckboxChange value) courseCheckboxChange,
    required TResult Function(_ApplyFilterClicked value) applyFilterClicked,
    required TResult Function(_ClearAllFilterClicked value)
        clearAllFilterClicked,
    required TResult Function(_ResetTempSelection value) resetTempSelection,
  }) {
    return applyFilterClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_CuisineCheckboxChange value)? cuisineCheckboxChange,
    TResult? Function(_CourseCheckboxChange value)? courseCheckboxChange,
    TResult? Function(_ApplyFilterClicked value)? applyFilterClicked,
    TResult? Function(_ClearAllFilterClicked value)? clearAllFilterClicked,
    TResult? Function(_ResetTempSelection value)? resetTempSelection,
  }) {
    return applyFilterClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_CuisineCheckboxChange value)? cuisineCheckboxChange,
    TResult Function(_CourseCheckboxChange value)? courseCheckboxChange,
    TResult Function(_ApplyFilterClicked value)? applyFilterClicked,
    TResult Function(_ClearAllFilterClicked value)? clearAllFilterClicked,
    TResult Function(_ResetTempSelection value)? resetTempSelection,
    required TResult orElse(),
  }) {
    if (applyFilterClicked != null) {
      return applyFilterClicked(this);
    }
    return orElse();
  }
}

abstract class _ApplyFilterClicked implements RecipeEvent {
  const factory _ApplyFilterClicked() = _$ApplyFilterClickedImpl;
}

/// @nodoc
abstract class _$$ClearAllFilterClickedImplCopyWith<$Res> {
  factory _$$ClearAllFilterClickedImplCopyWith(
          _$ClearAllFilterClickedImpl value,
          $Res Function(_$ClearAllFilterClickedImpl) then) =
      __$$ClearAllFilterClickedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearAllFilterClickedImplCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res, _$ClearAllFilterClickedImpl>
    implements _$$ClearAllFilterClickedImplCopyWith<$Res> {
  __$$ClearAllFilterClickedImplCopyWithImpl(_$ClearAllFilterClickedImpl _value,
      $Res Function(_$ClearAllFilterClickedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearAllFilterClickedImpl implements _ClearAllFilterClicked {
  const _$ClearAllFilterClickedImpl();

  @override
  String toString() {
    return 'RecipeEvent.clearAllFilterClicked()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearAllFilterClickedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(String cuisine) cuisineCheckboxChange,
    required TResult Function(String course) courseCheckboxChange,
    required TResult Function() applyFilterClicked,
    required TResult Function() clearAllFilterClicked,
    required TResult Function() resetTempSelection,
  }) {
    return clearAllFilterClicked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(String cuisine)? cuisineCheckboxChange,
    TResult? Function(String course)? courseCheckboxChange,
    TResult? Function()? applyFilterClicked,
    TResult? Function()? clearAllFilterClicked,
    TResult? Function()? resetTempSelection,
  }) {
    return clearAllFilterClicked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String cuisine)? cuisineCheckboxChange,
    TResult Function(String course)? courseCheckboxChange,
    TResult Function()? applyFilterClicked,
    TResult Function()? clearAllFilterClicked,
    TResult Function()? resetTempSelection,
    required TResult orElse(),
  }) {
    if (clearAllFilterClicked != null) {
      return clearAllFilterClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_CuisineCheckboxChange value)
        cuisineCheckboxChange,
    required TResult Function(_CourseCheckboxChange value) courseCheckboxChange,
    required TResult Function(_ApplyFilterClicked value) applyFilterClicked,
    required TResult Function(_ClearAllFilterClicked value)
        clearAllFilterClicked,
    required TResult Function(_ResetTempSelection value) resetTempSelection,
  }) {
    return clearAllFilterClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_CuisineCheckboxChange value)? cuisineCheckboxChange,
    TResult? Function(_CourseCheckboxChange value)? courseCheckboxChange,
    TResult? Function(_ApplyFilterClicked value)? applyFilterClicked,
    TResult? Function(_ClearAllFilterClicked value)? clearAllFilterClicked,
    TResult? Function(_ResetTempSelection value)? resetTempSelection,
  }) {
    return clearAllFilterClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_CuisineCheckboxChange value)? cuisineCheckboxChange,
    TResult Function(_CourseCheckboxChange value)? courseCheckboxChange,
    TResult Function(_ApplyFilterClicked value)? applyFilterClicked,
    TResult Function(_ClearAllFilterClicked value)? clearAllFilterClicked,
    TResult Function(_ResetTempSelection value)? resetTempSelection,
    required TResult orElse(),
  }) {
    if (clearAllFilterClicked != null) {
      return clearAllFilterClicked(this);
    }
    return orElse();
  }
}

abstract class _ClearAllFilterClicked implements RecipeEvent {
  const factory _ClearAllFilterClicked() = _$ClearAllFilterClickedImpl;
}

/// @nodoc
abstract class _$$ResetTempSelectionImplCopyWith<$Res> {
  factory _$$ResetTempSelectionImplCopyWith(_$ResetTempSelectionImpl value,
          $Res Function(_$ResetTempSelectionImpl) then) =
      __$$ResetTempSelectionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetTempSelectionImplCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res, _$ResetTempSelectionImpl>
    implements _$$ResetTempSelectionImplCopyWith<$Res> {
  __$$ResetTempSelectionImplCopyWithImpl(_$ResetTempSelectionImpl _value,
      $Res Function(_$ResetTempSelectionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetTempSelectionImpl implements _ResetTempSelection {
  const _$ResetTempSelectionImpl();

  @override
  String toString() {
    return 'RecipeEvent.resetTempSelection()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetTempSelectionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(String cuisine) cuisineCheckboxChange,
    required TResult Function(String course) courseCheckboxChange,
    required TResult Function() applyFilterClicked,
    required TResult Function() clearAllFilterClicked,
    required TResult Function() resetTempSelection,
  }) {
    return resetTempSelection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(String cuisine)? cuisineCheckboxChange,
    TResult? Function(String course)? courseCheckboxChange,
    TResult? Function()? applyFilterClicked,
    TResult? Function()? clearAllFilterClicked,
    TResult? Function()? resetTempSelection,
  }) {
    return resetTempSelection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(String cuisine)? cuisineCheckboxChange,
    TResult Function(String course)? courseCheckboxChange,
    TResult Function()? applyFilterClicked,
    TResult Function()? clearAllFilterClicked,
    TResult Function()? resetTempSelection,
    required TResult orElse(),
  }) {
    if (resetTempSelection != null) {
      return resetTempSelection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_CuisineCheckboxChange value)
        cuisineCheckboxChange,
    required TResult Function(_CourseCheckboxChange value) courseCheckboxChange,
    required TResult Function(_ApplyFilterClicked value) applyFilterClicked,
    required TResult Function(_ClearAllFilterClicked value)
        clearAllFilterClicked,
    required TResult Function(_ResetTempSelection value) resetTempSelection,
  }) {
    return resetTempSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_CuisineCheckboxChange value)? cuisineCheckboxChange,
    TResult? Function(_CourseCheckboxChange value)? courseCheckboxChange,
    TResult? Function(_ApplyFilterClicked value)? applyFilterClicked,
    TResult? Function(_ClearAllFilterClicked value)? clearAllFilterClicked,
    TResult? Function(_ResetTempSelection value)? resetTempSelection,
  }) {
    return resetTempSelection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_CuisineCheckboxChange value)? cuisineCheckboxChange,
    TResult Function(_CourseCheckboxChange value)? courseCheckboxChange,
    TResult Function(_ApplyFilterClicked value)? applyFilterClicked,
    TResult Function(_ClearAllFilterClicked value)? clearAllFilterClicked,
    TResult Function(_ResetTempSelection value)? resetTempSelection,
    required TResult orElse(),
  }) {
    if (resetTempSelection != null) {
      return resetTempSelection(this);
    }
    return orElse();
  }
}

abstract class _ResetTempSelection implements RecipeEvent {
  const factory _ResetTempSelection() = _$ResetTempSelectionImpl;
}

/// @nodoc
mixin _$RecipeState {
  List<Recipe> get recipes => throw _privateConstructorUsedError;
  List<Recipe> get filteredRecipes => throw _privateConstructorUsedError;
  List<String> get selectedCuisineFilter => throw _privateConstructorUsedError;
  List<String> get selectedCourseFilter => throw _privateConstructorUsedError;
  List<String> get tempSelectedCuisineFilter =>
      throw _privateConstructorUsedError;
  List<String> get tempSelectedCourseFilter =>
      throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeStateCopyWith<RecipeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeStateCopyWith<$Res> {
  factory $RecipeStateCopyWith(
          RecipeState value, $Res Function(RecipeState) then) =
      _$RecipeStateCopyWithImpl<$Res, RecipeState>;
  @useResult
  $Res call(
      {List<Recipe> recipes,
      List<Recipe> filteredRecipes,
      List<String> selectedCuisineFilter,
      List<String> selectedCourseFilter,
      List<String> tempSelectedCuisineFilter,
      List<String> tempSelectedCourseFilter,
      bool isFetching,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption});
}

/// @nodoc
class _$RecipeStateCopyWithImpl<$Res, $Val extends RecipeState>
    implements $RecipeStateCopyWith<$Res> {
  _$RecipeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
    Object? filteredRecipes = null,
    Object? selectedCuisineFilter = null,
    Object? selectedCourseFilter = null,
    Object? tempSelectedCuisineFilter = null,
    Object? tempSelectedCourseFilter = null,
    Object? isFetching = null,
    Object? apiFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      recipes: null == recipes
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
      filteredRecipes: null == filteredRecipes
          ? _value.filteredRecipes
          : filteredRecipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
      selectedCuisineFilter: null == selectedCuisineFilter
          ? _value.selectedCuisineFilter
          : selectedCuisineFilter // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedCourseFilter: null == selectedCourseFilter
          ? _value.selectedCourseFilter
          : selectedCourseFilter // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tempSelectedCuisineFilter: null == tempSelectedCuisineFilter
          ? _value.tempSelectedCuisineFilter
          : tempSelectedCuisineFilter // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tempSelectedCourseFilter: null == tempSelectedCourseFilter
          ? _value.tempSelectedCourseFilter
          : tempSelectedCourseFilter // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      apiFailureOrSuccessOption: null == apiFailureOrSuccessOption
          ? _value.apiFailureOrSuccessOption
          : apiFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipeStateImplCopyWith<$Res>
    implements $RecipeStateCopyWith<$Res> {
  factory _$$RecipeStateImplCopyWith(
          _$RecipeStateImpl value, $Res Function(_$RecipeStateImpl) then) =
      __$$RecipeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Recipe> recipes,
      List<Recipe> filteredRecipes,
      List<String> selectedCuisineFilter,
      List<String> selectedCourseFilter,
      List<String> tempSelectedCuisineFilter,
      List<String> tempSelectedCourseFilter,
      bool isFetching,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption});
}

/// @nodoc
class __$$RecipeStateImplCopyWithImpl<$Res>
    extends _$RecipeStateCopyWithImpl<$Res, _$RecipeStateImpl>
    implements _$$RecipeStateImplCopyWith<$Res> {
  __$$RecipeStateImplCopyWithImpl(
      _$RecipeStateImpl _value, $Res Function(_$RecipeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
    Object? filteredRecipes = null,
    Object? selectedCuisineFilter = null,
    Object? selectedCourseFilter = null,
    Object? tempSelectedCuisineFilter = null,
    Object? tempSelectedCourseFilter = null,
    Object? isFetching = null,
    Object? apiFailureOrSuccessOption = null,
  }) {
    return _then(_$RecipeStateImpl(
      recipes: null == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
      filteredRecipes: null == filteredRecipes
          ? _value._filteredRecipes
          : filteredRecipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
      selectedCuisineFilter: null == selectedCuisineFilter
          ? _value._selectedCuisineFilter
          : selectedCuisineFilter // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedCourseFilter: null == selectedCourseFilter
          ? _value._selectedCourseFilter
          : selectedCourseFilter // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tempSelectedCuisineFilter: null == tempSelectedCuisineFilter
          ? _value._tempSelectedCuisineFilter
          : tempSelectedCuisineFilter // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tempSelectedCourseFilter: null == tempSelectedCourseFilter
          ? _value._tempSelectedCourseFilter
          : tempSelectedCourseFilter // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      apiFailureOrSuccessOption: null == apiFailureOrSuccessOption
          ? _value.apiFailureOrSuccessOption
          : apiFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
    ));
  }
}

/// @nodoc

class _$RecipeStateImpl extends _RecipeState {
  const _$RecipeStateImpl(
      {required final List<Recipe> recipes,
      required final List<Recipe> filteredRecipes,
      required final List<String> selectedCuisineFilter,
      required final List<String> selectedCourseFilter,
      required final List<String> tempSelectedCuisineFilter,
      required final List<String> tempSelectedCourseFilter,
      required this.isFetching,
      required this.apiFailureOrSuccessOption})
      : _recipes = recipes,
        _filteredRecipes = filteredRecipes,
        _selectedCuisineFilter = selectedCuisineFilter,
        _selectedCourseFilter = selectedCourseFilter,
        _tempSelectedCuisineFilter = tempSelectedCuisineFilter,
        _tempSelectedCourseFilter = tempSelectedCourseFilter,
        super._();

  final List<Recipe> _recipes;
  @override
  List<Recipe> get recipes {
    if (_recipes is EqualUnmodifiableListView) return _recipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipes);
  }

  final List<Recipe> _filteredRecipes;
  @override
  List<Recipe> get filteredRecipes {
    if (_filteredRecipes is EqualUnmodifiableListView) return _filteredRecipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredRecipes);
  }

  final List<String> _selectedCuisineFilter;
  @override
  List<String> get selectedCuisineFilter {
    if (_selectedCuisineFilter is EqualUnmodifiableListView)
      return _selectedCuisineFilter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedCuisineFilter);
  }

  final List<String> _selectedCourseFilter;
  @override
  List<String> get selectedCourseFilter {
    if (_selectedCourseFilter is EqualUnmodifiableListView)
      return _selectedCourseFilter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedCourseFilter);
  }

  final List<String> _tempSelectedCuisineFilter;
  @override
  List<String> get tempSelectedCuisineFilter {
    if (_tempSelectedCuisineFilter is EqualUnmodifiableListView)
      return _tempSelectedCuisineFilter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tempSelectedCuisineFilter);
  }

  final List<String> _tempSelectedCourseFilter;
  @override
  List<String> get tempSelectedCourseFilter {
    if (_tempSelectedCourseFilter is EqualUnmodifiableListView)
      return _tempSelectedCourseFilter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tempSelectedCourseFilter);
  }

  @override
  final bool isFetching;
  @override
  final Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption;

  @override
  String toString() {
    return 'RecipeState(recipes: $recipes, filteredRecipes: $filteredRecipes, selectedCuisineFilter: $selectedCuisineFilter, selectedCourseFilter: $selectedCourseFilter, tempSelectedCuisineFilter: $tempSelectedCuisineFilter, tempSelectedCourseFilter: $tempSelectedCourseFilter, isFetching: $isFetching, apiFailureOrSuccessOption: $apiFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeStateImpl &&
            const DeepCollectionEquality().equals(other._recipes, _recipes) &&
            const DeepCollectionEquality()
                .equals(other._filteredRecipes, _filteredRecipes) &&
            const DeepCollectionEquality()
                .equals(other._selectedCuisineFilter, _selectedCuisineFilter) &&
            const DeepCollectionEquality()
                .equals(other._selectedCourseFilter, _selectedCourseFilter) &&
            const DeepCollectionEquality().equals(
                other._tempSelectedCuisineFilter, _tempSelectedCuisineFilter) &&
            const DeepCollectionEquality().equals(
                other._tempSelectedCourseFilter, _tempSelectedCourseFilter) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching) &&
            (identical(other.apiFailureOrSuccessOption,
                    apiFailureOrSuccessOption) ||
                other.apiFailureOrSuccessOption == apiFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_recipes),
      const DeepCollectionEquality().hash(_filteredRecipes),
      const DeepCollectionEquality().hash(_selectedCuisineFilter),
      const DeepCollectionEquality().hash(_selectedCourseFilter),
      const DeepCollectionEquality().hash(_tempSelectedCuisineFilter),
      const DeepCollectionEquality().hash(_tempSelectedCourseFilter),
      isFetching,
      apiFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeStateImplCopyWith<_$RecipeStateImpl> get copyWith =>
      __$$RecipeStateImplCopyWithImpl<_$RecipeStateImpl>(this, _$identity);
}

abstract class _RecipeState extends RecipeState {
  const factory _RecipeState(
      {required final List<Recipe> recipes,
      required final List<Recipe> filteredRecipes,
      required final List<String> selectedCuisineFilter,
      required final List<String> selectedCourseFilter,
      required final List<String> tempSelectedCuisineFilter,
      required final List<String> tempSelectedCourseFilter,
      required final bool isFetching,
      required final Option<Either<ApiFailure, dynamic>>
          apiFailureOrSuccessOption}) = _$RecipeStateImpl;
  const _RecipeState._() : super._();

  @override
  List<Recipe> get recipes;
  @override
  List<Recipe> get filteredRecipes;
  @override
  List<String> get selectedCuisineFilter;
  @override
  List<String> get selectedCourseFilter;
  @override
  List<String> get tempSelectedCuisineFilter;
  @override
  List<String> get tempSelectedCourseFilter;
  @override
  bool get isFetching;
  @override
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$RecipeStateImplCopyWith<_$RecipeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
