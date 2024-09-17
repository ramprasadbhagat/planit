// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blog_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BlogEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchBlogs,
    required TResult Function() fetchFilterList,
    required TResult Function() updateFilter,
    required TResult Function(String title) tagCheckboxChange,
    required TResult Function() clearAllFilterClicked,
    required TResult Function() loadMoreBlogs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchBlogs,
    TResult? Function()? fetchFilterList,
    TResult? Function()? updateFilter,
    TResult? Function(String title)? tagCheckboxChange,
    TResult? Function()? clearAllFilterClicked,
    TResult? Function()? loadMoreBlogs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBlogs,
    TResult Function()? fetchFilterList,
    TResult Function()? updateFilter,
    TResult Function(String title)? tagCheckboxChange,
    TResult Function()? clearAllFilterClicked,
    TResult Function()? loadMoreBlogs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchBlogs value) fetchBlogs,
    required TResult Function(_FetchFilterList value) fetchFilterList,
    required TResult Function(_UpdateFilter value) updateFilter,
    required TResult Function(_TagCheckboxChange value) tagCheckboxChange,
    required TResult Function(_ClearAllFilterClicked value)
        clearAllFilterClicked,
    required TResult Function(_LoadMoreBlogs value) loadMoreBlogs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchBlogs value)? fetchBlogs,
    TResult? Function(_FetchFilterList value)? fetchFilterList,
    TResult? Function(_UpdateFilter value)? updateFilter,
    TResult? Function(_TagCheckboxChange value)? tagCheckboxChange,
    TResult? Function(_ClearAllFilterClicked value)? clearAllFilterClicked,
    TResult? Function(_LoadMoreBlogs value)? loadMoreBlogs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchBlogs value)? fetchBlogs,
    TResult Function(_FetchFilterList value)? fetchFilterList,
    TResult Function(_UpdateFilter value)? updateFilter,
    TResult Function(_TagCheckboxChange value)? tagCheckboxChange,
    TResult Function(_ClearAllFilterClicked value)? clearAllFilterClicked,
    TResult Function(_LoadMoreBlogs value)? loadMoreBlogs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogEventCopyWith<$Res> {
  factory $BlogEventCopyWith(BlogEvent value, $Res Function(BlogEvent) then) =
      _$BlogEventCopyWithImpl<$Res, BlogEvent>;
}

/// @nodoc
class _$BlogEventCopyWithImpl<$Res, $Val extends BlogEvent>
    implements $BlogEventCopyWith<$Res> {
  _$BlogEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchBlogsImplCopyWith<$Res> {
  factory _$$FetchBlogsImplCopyWith(
          _$FetchBlogsImpl value, $Res Function(_$FetchBlogsImpl) then) =
      __$$FetchBlogsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchBlogsImplCopyWithImpl<$Res>
    extends _$BlogEventCopyWithImpl<$Res, _$FetchBlogsImpl>
    implements _$$FetchBlogsImplCopyWith<$Res> {
  __$$FetchBlogsImplCopyWithImpl(
      _$FetchBlogsImpl _value, $Res Function(_$FetchBlogsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchBlogsImpl with DiagnosticableTreeMixin implements _FetchBlogs {
  const _$FetchBlogsImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlogEvent.fetchBlogs()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'BlogEvent.fetchBlogs'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchBlogsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchBlogs,
    required TResult Function() fetchFilterList,
    required TResult Function() updateFilter,
    required TResult Function(String title) tagCheckboxChange,
    required TResult Function() clearAllFilterClicked,
    required TResult Function() loadMoreBlogs,
  }) {
    return fetchBlogs();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchBlogs,
    TResult? Function()? fetchFilterList,
    TResult? Function()? updateFilter,
    TResult? Function(String title)? tagCheckboxChange,
    TResult? Function()? clearAllFilterClicked,
    TResult? Function()? loadMoreBlogs,
  }) {
    return fetchBlogs?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBlogs,
    TResult Function()? fetchFilterList,
    TResult Function()? updateFilter,
    TResult Function(String title)? tagCheckboxChange,
    TResult Function()? clearAllFilterClicked,
    TResult Function()? loadMoreBlogs,
    required TResult orElse(),
  }) {
    if (fetchBlogs != null) {
      return fetchBlogs();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchBlogs value) fetchBlogs,
    required TResult Function(_FetchFilterList value) fetchFilterList,
    required TResult Function(_UpdateFilter value) updateFilter,
    required TResult Function(_TagCheckboxChange value) tagCheckboxChange,
    required TResult Function(_ClearAllFilterClicked value)
        clearAllFilterClicked,
    required TResult Function(_LoadMoreBlogs value) loadMoreBlogs,
  }) {
    return fetchBlogs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchBlogs value)? fetchBlogs,
    TResult? Function(_FetchFilterList value)? fetchFilterList,
    TResult? Function(_UpdateFilter value)? updateFilter,
    TResult? Function(_TagCheckboxChange value)? tagCheckboxChange,
    TResult? Function(_ClearAllFilterClicked value)? clearAllFilterClicked,
    TResult? Function(_LoadMoreBlogs value)? loadMoreBlogs,
  }) {
    return fetchBlogs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchBlogs value)? fetchBlogs,
    TResult Function(_FetchFilterList value)? fetchFilterList,
    TResult Function(_UpdateFilter value)? updateFilter,
    TResult Function(_TagCheckboxChange value)? tagCheckboxChange,
    TResult Function(_ClearAllFilterClicked value)? clearAllFilterClicked,
    TResult Function(_LoadMoreBlogs value)? loadMoreBlogs,
    required TResult orElse(),
  }) {
    if (fetchBlogs != null) {
      return fetchBlogs(this);
    }
    return orElse();
  }
}

abstract class _FetchBlogs implements BlogEvent {
  const factory _FetchBlogs() = _$FetchBlogsImpl;
}

/// @nodoc
abstract class _$$FetchFilterListImplCopyWith<$Res> {
  factory _$$FetchFilterListImplCopyWith(_$FetchFilterListImpl value,
          $Res Function(_$FetchFilterListImpl) then) =
      __$$FetchFilterListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchFilterListImplCopyWithImpl<$Res>
    extends _$BlogEventCopyWithImpl<$Res, _$FetchFilterListImpl>
    implements _$$FetchFilterListImplCopyWith<$Res> {
  __$$FetchFilterListImplCopyWithImpl(
      _$FetchFilterListImpl _value, $Res Function(_$FetchFilterListImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchFilterListImpl
    with DiagnosticableTreeMixin
    implements _FetchFilterList {
  const _$FetchFilterListImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlogEvent.fetchFilterList()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'BlogEvent.fetchFilterList'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchFilterListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchBlogs,
    required TResult Function() fetchFilterList,
    required TResult Function() updateFilter,
    required TResult Function(String title) tagCheckboxChange,
    required TResult Function() clearAllFilterClicked,
    required TResult Function() loadMoreBlogs,
  }) {
    return fetchFilterList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchBlogs,
    TResult? Function()? fetchFilterList,
    TResult? Function()? updateFilter,
    TResult? Function(String title)? tagCheckboxChange,
    TResult? Function()? clearAllFilterClicked,
    TResult? Function()? loadMoreBlogs,
  }) {
    return fetchFilterList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBlogs,
    TResult Function()? fetchFilterList,
    TResult Function()? updateFilter,
    TResult Function(String title)? tagCheckboxChange,
    TResult Function()? clearAllFilterClicked,
    TResult Function()? loadMoreBlogs,
    required TResult orElse(),
  }) {
    if (fetchFilterList != null) {
      return fetchFilterList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchBlogs value) fetchBlogs,
    required TResult Function(_FetchFilterList value) fetchFilterList,
    required TResult Function(_UpdateFilter value) updateFilter,
    required TResult Function(_TagCheckboxChange value) tagCheckboxChange,
    required TResult Function(_ClearAllFilterClicked value)
        clearAllFilterClicked,
    required TResult Function(_LoadMoreBlogs value) loadMoreBlogs,
  }) {
    return fetchFilterList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchBlogs value)? fetchBlogs,
    TResult? Function(_FetchFilterList value)? fetchFilterList,
    TResult? Function(_UpdateFilter value)? updateFilter,
    TResult? Function(_TagCheckboxChange value)? tagCheckboxChange,
    TResult? Function(_ClearAllFilterClicked value)? clearAllFilterClicked,
    TResult? Function(_LoadMoreBlogs value)? loadMoreBlogs,
  }) {
    return fetchFilterList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchBlogs value)? fetchBlogs,
    TResult Function(_FetchFilterList value)? fetchFilterList,
    TResult Function(_UpdateFilter value)? updateFilter,
    TResult Function(_TagCheckboxChange value)? tagCheckboxChange,
    TResult Function(_ClearAllFilterClicked value)? clearAllFilterClicked,
    TResult Function(_LoadMoreBlogs value)? loadMoreBlogs,
    required TResult orElse(),
  }) {
    if (fetchFilterList != null) {
      return fetchFilterList(this);
    }
    return orElse();
  }
}

abstract class _FetchFilterList implements BlogEvent {
  const factory _FetchFilterList() = _$FetchFilterListImpl;
}

/// @nodoc
abstract class _$$UpdateFilterImplCopyWith<$Res> {
  factory _$$UpdateFilterImplCopyWith(
          _$UpdateFilterImpl value, $Res Function(_$UpdateFilterImpl) then) =
      __$$UpdateFilterImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateFilterImplCopyWithImpl<$Res>
    extends _$BlogEventCopyWithImpl<$Res, _$UpdateFilterImpl>
    implements _$$UpdateFilterImplCopyWith<$Res> {
  __$$UpdateFilterImplCopyWithImpl(
      _$UpdateFilterImpl _value, $Res Function(_$UpdateFilterImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateFilterImpl with DiagnosticableTreeMixin implements _UpdateFilter {
  const _$UpdateFilterImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlogEvent.updateFilter()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'BlogEvent.updateFilter'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateFilterImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchBlogs,
    required TResult Function() fetchFilterList,
    required TResult Function() updateFilter,
    required TResult Function(String title) tagCheckboxChange,
    required TResult Function() clearAllFilterClicked,
    required TResult Function() loadMoreBlogs,
  }) {
    return updateFilter();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchBlogs,
    TResult? Function()? fetchFilterList,
    TResult? Function()? updateFilter,
    TResult? Function(String title)? tagCheckboxChange,
    TResult? Function()? clearAllFilterClicked,
    TResult? Function()? loadMoreBlogs,
  }) {
    return updateFilter?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBlogs,
    TResult Function()? fetchFilterList,
    TResult Function()? updateFilter,
    TResult Function(String title)? tagCheckboxChange,
    TResult Function()? clearAllFilterClicked,
    TResult Function()? loadMoreBlogs,
    required TResult orElse(),
  }) {
    if (updateFilter != null) {
      return updateFilter();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchBlogs value) fetchBlogs,
    required TResult Function(_FetchFilterList value) fetchFilterList,
    required TResult Function(_UpdateFilter value) updateFilter,
    required TResult Function(_TagCheckboxChange value) tagCheckboxChange,
    required TResult Function(_ClearAllFilterClicked value)
        clearAllFilterClicked,
    required TResult Function(_LoadMoreBlogs value) loadMoreBlogs,
  }) {
    return updateFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchBlogs value)? fetchBlogs,
    TResult? Function(_FetchFilterList value)? fetchFilterList,
    TResult? Function(_UpdateFilter value)? updateFilter,
    TResult? Function(_TagCheckboxChange value)? tagCheckboxChange,
    TResult? Function(_ClearAllFilterClicked value)? clearAllFilterClicked,
    TResult? Function(_LoadMoreBlogs value)? loadMoreBlogs,
  }) {
    return updateFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchBlogs value)? fetchBlogs,
    TResult Function(_FetchFilterList value)? fetchFilterList,
    TResult Function(_UpdateFilter value)? updateFilter,
    TResult Function(_TagCheckboxChange value)? tagCheckboxChange,
    TResult Function(_ClearAllFilterClicked value)? clearAllFilterClicked,
    TResult Function(_LoadMoreBlogs value)? loadMoreBlogs,
    required TResult orElse(),
  }) {
    if (updateFilter != null) {
      return updateFilter(this);
    }
    return orElse();
  }
}

abstract class _UpdateFilter implements BlogEvent {
  const factory _UpdateFilter() = _$UpdateFilterImpl;
}

/// @nodoc
abstract class _$$TagCheckboxChangeImplCopyWith<$Res> {
  factory _$$TagCheckboxChangeImplCopyWith(_$TagCheckboxChangeImpl value,
          $Res Function(_$TagCheckboxChangeImpl) then) =
      __$$TagCheckboxChangeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$TagCheckboxChangeImplCopyWithImpl<$Res>
    extends _$BlogEventCopyWithImpl<$Res, _$TagCheckboxChangeImpl>
    implements _$$TagCheckboxChangeImplCopyWith<$Res> {
  __$$TagCheckboxChangeImplCopyWithImpl(_$TagCheckboxChangeImpl _value,
      $Res Function(_$TagCheckboxChangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$TagCheckboxChangeImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TagCheckboxChangeImpl
    with DiagnosticableTreeMixin
    implements _TagCheckboxChange {
  const _$TagCheckboxChangeImpl(this.title);

  @override
  final String title;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlogEvent.tagCheckboxChange(title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlogEvent.tagCheckboxChange'))
      ..add(DiagnosticsProperty('title', title));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagCheckboxChangeImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TagCheckboxChangeImplCopyWith<_$TagCheckboxChangeImpl> get copyWith =>
      __$$TagCheckboxChangeImplCopyWithImpl<_$TagCheckboxChangeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchBlogs,
    required TResult Function() fetchFilterList,
    required TResult Function() updateFilter,
    required TResult Function(String title) tagCheckboxChange,
    required TResult Function() clearAllFilterClicked,
    required TResult Function() loadMoreBlogs,
  }) {
    return tagCheckboxChange(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchBlogs,
    TResult? Function()? fetchFilterList,
    TResult? Function()? updateFilter,
    TResult? Function(String title)? tagCheckboxChange,
    TResult? Function()? clearAllFilterClicked,
    TResult? Function()? loadMoreBlogs,
  }) {
    return tagCheckboxChange?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBlogs,
    TResult Function()? fetchFilterList,
    TResult Function()? updateFilter,
    TResult Function(String title)? tagCheckboxChange,
    TResult Function()? clearAllFilterClicked,
    TResult Function()? loadMoreBlogs,
    required TResult orElse(),
  }) {
    if (tagCheckboxChange != null) {
      return tagCheckboxChange(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchBlogs value) fetchBlogs,
    required TResult Function(_FetchFilterList value) fetchFilterList,
    required TResult Function(_UpdateFilter value) updateFilter,
    required TResult Function(_TagCheckboxChange value) tagCheckboxChange,
    required TResult Function(_ClearAllFilterClicked value)
        clearAllFilterClicked,
    required TResult Function(_LoadMoreBlogs value) loadMoreBlogs,
  }) {
    return tagCheckboxChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchBlogs value)? fetchBlogs,
    TResult? Function(_FetchFilterList value)? fetchFilterList,
    TResult? Function(_UpdateFilter value)? updateFilter,
    TResult? Function(_TagCheckboxChange value)? tagCheckboxChange,
    TResult? Function(_ClearAllFilterClicked value)? clearAllFilterClicked,
    TResult? Function(_LoadMoreBlogs value)? loadMoreBlogs,
  }) {
    return tagCheckboxChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchBlogs value)? fetchBlogs,
    TResult Function(_FetchFilterList value)? fetchFilterList,
    TResult Function(_UpdateFilter value)? updateFilter,
    TResult Function(_TagCheckboxChange value)? tagCheckboxChange,
    TResult Function(_ClearAllFilterClicked value)? clearAllFilterClicked,
    TResult Function(_LoadMoreBlogs value)? loadMoreBlogs,
    required TResult orElse(),
  }) {
    if (tagCheckboxChange != null) {
      return tagCheckboxChange(this);
    }
    return orElse();
  }
}

abstract class _TagCheckboxChange implements BlogEvent {
  const factory _TagCheckboxChange(final String title) =
      _$TagCheckboxChangeImpl;

  String get title;
  @JsonKey(ignore: true)
  _$$TagCheckboxChangeImplCopyWith<_$TagCheckboxChangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$BlogEventCopyWithImpl<$Res, _$ClearAllFilterClickedImpl>
    implements _$$ClearAllFilterClickedImplCopyWith<$Res> {
  __$$ClearAllFilterClickedImplCopyWithImpl(_$ClearAllFilterClickedImpl _value,
      $Res Function(_$ClearAllFilterClickedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearAllFilterClickedImpl
    with DiagnosticableTreeMixin
    implements _ClearAllFilterClicked {
  const _$ClearAllFilterClickedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlogEvent.clearAllFilterClicked()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'BlogEvent.clearAllFilterClicked'));
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
    required TResult Function() fetchBlogs,
    required TResult Function() fetchFilterList,
    required TResult Function() updateFilter,
    required TResult Function(String title) tagCheckboxChange,
    required TResult Function() clearAllFilterClicked,
    required TResult Function() loadMoreBlogs,
  }) {
    return clearAllFilterClicked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchBlogs,
    TResult? Function()? fetchFilterList,
    TResult? Function()? updateFilter,
    TResult? Function(String title)? tagCheckboxChange,
    TResult? Function()? clearAllFilterClicked,
    TResult? Function()? loadMoreBlogs,
  }) {
    return clearAllFilterClicked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBlogs,
    TResult Function()? fetchFilterList,
    TResult Function()? updateFilter,
    TResult Function(String title)? tagCheckboxChange,
    TResult Function()? clearAllFilterClicked,
    TResult Function()? loadMoreBlogs,
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
    required TResult Function(_FetchBlogs value) fetchBlogs,
    required TResult Function(_FetchFilterList value) fetchFilterList,
    required TResult Function(_UpdateFilter value) updateFilter,
    required TResult Function(_TagCheckboxChange value) tagCheckboxChange,
    required TResult Function(_ClearAllFilterClicked value)
        clearAllFilterClicked,
    required TResult Function(_LoadMoreBlogs value) loadMoreBlogs,
  }) {
    return clearAllFilterClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchBlogs value)? fetchBlogs,
    TResult? Function(_FetchFilterList value)? fetchFilterList,
    TResult? Function(_UpdateFilter value)? updateFilter,
    TResult? Function(_TagCheckboxChange value)? tagCheckboxChange,
    TResult? Function(_ClearAllFilterClicked value)? clearAllFilterClicked,
    TResult? Function(_LoadMoreBlogs value)? loadMoreBlogs,
  }) {
    return clearAllFilterClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchBlogs value)? fetchBlogs,
    TResult Function(_FetchFilterList value)? fetchFilterList,
    TResult Function(_UpdateFilter value)? updateFilter,
    TResult Function(_TagCheckboxChange value)? tagCheckboxChange,
    TResult Function(_ClearAllFilterClicked value)? clearAllFilterClicked,
    TResult Function(_LoadMoreBlogs value)? loadMoreBlogs,
    required TResult orElse(),
  }) {
    if (clearAllFilterClicked != null) {
      return clearAllFilterClicked(this);
    }
    return orElse();
  }
}

abstract class _ClearAllFilterClicked implements BlogEvent {
  const factory _ClearAllFilterClicked() = _$ClearAllFilterClickedImpl;
}

/// @nodoc
abstract class _$$LoadMoreBlogsImplCopyWith<$Res> {
  factory _$$LoadMoreBlogsImplCopyWith(
          _$LoadMoreBlogsImpl value, $Res Function(_$LoadMoreBlogsImpl) then) =
      __$$LoadMoreBlogsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMoreBlogsImplCopyWithImpl<$Res>
    extends _$BlogEventCopyWithImpl<$Res, _$LoadMoreBlogsImpl>
    implements _$$LoadMoreBlogsImplCopyWith<$Res> {
  __$$LoadMoreBlogsImplCopyWithImpl(
      _$LoadMoreBlogsImpl _value, $Res Function(_$LoadMoreBlogsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadMoreBlogsImpl
    with DiagnosticableTreeMixin
    implements _LoadMoreBlogs {
  const _$LoadMoreBlogsImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlogEvent.loadMoreBlogs()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'BlogEvent.loadMoreBlogs'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadMoreBlogsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchBlogs,
    required TResult Function() fetchFilterList,
    required TResult Function() updateFilter,
    required TResult Function(String title) tagCheckboxChange,
    required TResult Function() clearAllFilterClicked,
    required TResult Function() loadMoreBlogs,
  }) {
    return loadMoreBlogs();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchBlogs,
    TResult? Function()? fetchFilterList,
    TResult? Function()? updateFilter,
    TResult? Function(String title)? tagCheckboxChange,
    TResult? Function()? clearAllFilterClicked,
    TResult? Function()? loadMoreBlogs,
  }) {
    return loadMoreBlogs?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBlogs,
    TResult Function()? fetchFilterList,
    TResult Function()? updateFilter,
    TResult Function(String title)? tagCheckboxChange,
    TResult Function()? clearAllFilterClicked,
    TResult Function()? loadMoreBlogs,
    required TResult orElse(),
  }) {
    if (loadMoreBlogs != null) {
      return loadMoreBlogs();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchBlogs value) fetchBlogs,
    required TResult Function(_FetchFilterList value) fetchFilterList,
    required TResult Function(_UpdateFilter value) updateFilter,
    required TResult Function(_TagCheckboxChange value) tagCheckboxChange,
    required TResult Function(_ClearAllFilterClicked value)
        clearAllFilterClicked,
    required TResult Function(_LoadMoreBlogs value) loadMoreBlogs,
  }) {
    return loadMoreBlogs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchBlogs value)? fetchBlogs,
    TResult? Function(_FetchFilterList value)? fetchFilterList,
    TResult? Function(_UpdateFilter value)? updateFilter,
    TResult? Function(_TagCheckboxChange value)? tagCheckboxChange,
    TResult? Function(_ClearAllFilterClicked value)? clearAllFilterClicked,
    TResult? Function(_LoadMoreBlogs value)? loadMoreBlogs,
  }) {
    return loadMoreBlogs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchBlogs value)? fetchBlogs,
    TResult Function(_FetchFilterList value)? fetchFilterList,
    TResult Function(_UpdateFilter value)? updateFilter,
    TResult Function(_TagCheckboxChange value)? tagCheckboxChange,
    TResult Function(_ClearAllFilterClicked value)? clearAllFilterClicked,
    TResult Function(_LoadMoreBlogs value)? loadMoreBlogs,
    required TResult orElse(),
  }) {
    if (loadMoreBlogs != null) {
      return loadMoreBlogs(this);
    }
    return orElse();
  }
}

abstract class _LoadMoreBlogs implements BlogEvent {
  const factory _LoadMoreBlogs() = _$LoadMoreBlogsImpl;
}

/// @nodoc
mixin _$BlogState {
  List<Blog> get blogs => throw _privateConstructorUsedError;
  List<BlogsFilterTag> get filterList => throw _privateConstructorUsedError;
  List<String> get tempFilterList => throw _privateConstructorUsedError;
  int get pageNumber => throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BlogStateCopyWith<BlogState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogStateCopyWith<$Res> {
  factory $BlogStateCopyWith(BlogState value, $Res Function(BlogState) then) =
      _$BlogStateCopyWithImpl<$Res, BlogState>;
  @useResult
  $Res call(
      {List<Blog> blogs,
      List<BlogsFilterTag> filterList,
      List<String> tempFilterList,
      int pageNumber,
      bool isFetching,
      bool hasMore,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption});
}

/// @nodoc
class _$BlogStateCopyWithImpl<$Res, $Val extends BlogState>
    implements $BlogStateCopyWith<$Res> {
  _$BlogStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blogs = null,
    Object? filterList = null,
    Object? tempFilterList = null,
    Object? pageNumber = null,
    Object? isFetching = null,
    Object? hasMore = null,
    Object? apiFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      blogs: null == blogs
          ? _value.blogs
          : blogs // ignore: cast_nullable_to_non_nullable
              as List<Blog>,
      filterList: null == filterList
          ? _value.filterList
          : filterList // ignore: cast_nullable_to_non_nullable
              as List<BlogsFilterTag>,
      tempFilterList: null == tempFilterList
          ? _value.tempFilterList
          : tempFilterList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      apiFailureOrSuccessOption: null == apiFailureOrSuccessOption
          ? _value.apiFailureOrSuccessOption
          : apiFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlogStateImplCopyWith<$Res>
    implements $BlogStateCopyWith<$Res> {
  factory _$$BlogStateImplCopyWith(
          _$BlogStateImpl value, $Res Function(_$BlogStateImpl) then) =
      __$$BlogStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Blog> blogs,
      List<BlogsFilterTag> filterList,
      List<String> tempFilterList,
      int pageNumber,
      bool isFetching,
      bool hasMore,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption});
}

/// @nodoc
class __$$BlogStateImplCopyWithImpl<$Res>
    extends _$BlogStateCopyWithImpl<$Res, _$BlogStateImpl>
    implements _$$BlogStateImplCopyWith<$Res> {
  __$$BlogStateImplCopyWithImpl(
      _$BlogStateImpl _value, $Res Function(_$BlogStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blogs = null,
    Object? filterList = null,
    Object? tempFilterList = null,
    Object? pageNumber = null,
    Object? isFetching = null,
    Object? hasMore = null,
    Object? apiFailureOrSuccessOption = null,
  }) {
    return _then(_$BlogStateImpl(
      blogs: null == blogs
          ? _value._blogs
          : blogs // ignore: cast_nullable_to_non_nullable
              as List<Blog>,
      filterList: null == filterList
          ? _value._filterList
          : filterList // ignore: cast_nullable_to_non_nullable
              as List<BlogsFilterTag>,
      tempFilterList: null == tempFilterList
          ? _value._tempFilterList
          : tempFilterList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      apiFailureOrSuccessOption: null == apiFailureOrSuccessOption
          ? _value.apiFailureOrSuccessOption
          : apiFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
    ));
  }
}

/// @nodoc

class _$BlogStateImpl extends _BlogState with DiagnosticableTreeMixin {
  const _$BlogStateImpl(
      {required final List<Blog> blogs,
      required final List<BlogsFilterTag> filterList,
      required final List<String> tempFilterList,
      required this.pageNumber,
      required this.isFetching,
      required this.hasMore,
      required this.apiFailureOrSuccessOption})
      : _blogs = blogs,
        _filterList = filterList,
        _tempFilterList = tempFilterList,
        super._();

  final List<Blog> _blogs;
  @override
  List<Blog> get blogs {
    if (_blogs is EqualUnmodifiableListView) return _blogs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blogs);
  }

  final List<BlogsFilterTag> _filterList;
  @override
  List<BlogsFilterTag> get filterList {
    if (_filterList is EqualUnmodifiableListView) return _filterList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filterList);
  }

  final List<String> _tempFilterList;
  @override
  List<String> get tempFilterList {
    if (_tempFilterList is EqualUnmodifiableListView) return _tempFilterList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tempFilterList);
  }

  @override
  final int pageNumber;
  @override
  final bool isFetching;
  @override
  final bool hasMore;
  @override
  final Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlogState(blogs: $blogs, filterList: $filterList, tempFilterList: $tempFilterList, pageNumber: $pageNumber, isFetching: $isFetching, hasMore: $hasMore, apiFailureOrSuccessOption: $apiFailureOrSuccessOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlogState'))
      ..add(DiagnosticsProperty('blogs', blogs))
      ..add(DiagnosticsProperty('filterList', filterList))
      ..add(DiagnosticsProperty('tempFilterList', tempFilterList))
      ..add(DiagnosticsProperty('pageNumber', pageNumber))
      ..add(DiagnosticsProperty('isFetching', isFetching))
      ..add(DiagnosticsProperty('hasMore', hasMore))
      ..add(DiagnosticsProperty(
          'apiFailureOrSuccessOption', apiFailureOrSuccessOption));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogStateImpl &&
            const DeepCollectionEquality().equals(other._blogs, _blogs) &&
            const DeepCollectionEquality()
                .equals(other._filterList, _filterList) &&
            const DeepCollectionEquality()
                .equals(other._tempFilterList, _tempFilterList) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.apiFailureOrSuccessOption,
                    apiFailureOrSuccessOption) ||
                other.apiFailureOrSuccessOption == apiFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_blogs),
      const DeepCollectionEquality().hash(_filterList),
      const DeepCollectionEquality().hash(_tempFilterList),
      pageNumber,
      isFetching,
      hasMore,
      apiFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogStateImplCopyWith<_$BlogStateImpl> get copyWith =>
      __$$BlogStateImplCopyWithImpl<_$BlogStateImpl>(this, _$identity);
}

abstract class _BlogState extends BlogState {
  const factory _BlogState(
      {required final List<Blog> blogs,
      required final List<BlogsFilterTag> filterList,
      required final List<String> tempFilterList,
      required final int pageNumber,
      required final bool isFetching,
      required final bool hasMore,
      required final Option<Either<ApiFailure, dynamic>>
          apiFailureOrSuccessOption}) = _$BlogStateImpl;
  const _BlogState._() : super._();

  @override
  List<Blog> get blogs;
  @override
  List<BlogsFilterTag> get filterList;
  @override
  List<String> get tempFilterList;
  @override
  int get pageNumber;
  @override
  bool get isFetching;
  @override
  bool get hasMore;
  @override
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$BlogStateImplCopyWith<_$BlogStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
