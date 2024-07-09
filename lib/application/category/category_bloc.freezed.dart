// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() fetch,
    required TResult Function(Category category) select,
    required TResult Function(bool isSelected) selectOccasion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(Category category)? select,
    TResult? Function(bool isSelected)? selectOccasion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(Category category)? select,
    TResult Function(bool isSelected)? selectOccasion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Select value) select,
    required TResult Function(_SelectOccasion value) selectOccasion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Select value)? select,
    TResult? Function(_SelectOccasion value)? selectOccasion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Select value)? select,
    TResult Function(_SelectOccasion value)? selectOccasion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryEventCopyWith<$Res> {
  factory $CategoryEventCopyWith(
          CategoryEvent value, $Res Function(CategoryEvent) then) =
      _$CategoryEventCopyWithImpl<$Res, CategoryEvent>;
}

/// @nodoc
class _$CategoryEventCopyWithImpl<$Res, $Val extends CategoryEvent>
    implements $CategoryEventCopyWith<$Res> {
  _$CategoryEventCopyWithImpl(this._value, this._then);

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
    extends _$CategoryEventCopyWithImpl<$Res, _$InitializedImpl>
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
    return 'CategoryEvent.initialized()';
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
    required TResult Function(Category category) select,
    required TResult Function(bool isSelected) selectOccasion,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(Category category)? select,
    TResult? Function(bool isSelected)? selectOccasion,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(Category category)? select,
    TResult Function(bool isSelected)? selectOccasion,
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
    required TResult Function(_Select value) select,
    required TResult Function(_SelectOccasion value) selectOccasion,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Select value)? select,
    TResult? Function(_SelectOccasion value)? selectOccasion,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Select value)? select,
    TResult Function(_SelectOccasion value)? selectOccasion,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements CategoryEvent {
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
    extends _$CategoryEventCopyWithImpl<$Res, _$FetchImpl>
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
    return 'CategoryEvent.fetch()';
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
    required TResult Function(Category category) select,
    required TResult Function(bool isSelected) selectOccasion,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(Category category)? select,
    TResult? Function(bool isSelected)? selectOccasion,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(Category category)? select,
    TResult Function(bool isSelected)? selectOccasion,
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
    required TResult Function(_Select value) select,
    required TResult Function(_SelectOccasion value) selectOccasion,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Select value)? select,
    TResult? Function(_SelectOccasion value)? selectOccasion,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Select value)? select,
    TResult Function(_SelectOccasion value)? selectOccasion,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements CategoryEvent {
  const factory _Fetch() = _$FetchImpl;
}

/// @nodoc
abstract class _$$SelectImplCopyWith<$Res> {
  factory _$$SelectImplCopyWith(
          _$SelectImpl value, $Res Function(_$SelectImpl) then) =
      __$$SelectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Category category});

  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$SelectImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$SelectImpl>
    implements _$$SelectImplCopyWith<$Res> {
  __$$SelectImplCopyWithImpl(
      _$SelectImpl _value, $Res Function(_$SelectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$SelectImpl(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc

class _$SelectImpl implements _Select {
  const _$SelectImpl(this.category);

  @override
  final Category category;

  @override
  String toString() {
    return 'CategoryEvent.select(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectImplCopyWith<_$SelectImpl> get copyWith =>
      __$$SelectImplCopyWithImpl<_$SelectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() fetch,
    required TResult Function(Category category) select,
    required TResult Function(bool isSelected) selectOccasion,
  }) {
    return select(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(Category category)? select,
    TResult? Function(bool isSelected)? selectOccasion,
  }) {
    return select?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(Category category)? select,
    TResult Function(bool isSelected)? selectOccasion,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Select value) select,
    required TResult Function(_SelectOccasion value) selectOccasion,
  }) {
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Select value)? select,
    TResult? Function(_SelectOccasion value)? selectOccasion,
  }) {
    return select?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Select value)? select,
    TResult Function(_SelectOccasion value)? selectOccasion,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(this);
    }
    return orElse();
  }
}

abstract class _Select implements CategoryEvent {
  const factory _Select(final Category category) = _$SelectImpl;

  Category get category;
  @JsonKey(ignore: true)
  _$$SelectImplCopyWith<_$SelectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectOccasionImplCopyWith<$Res> {
  factory _$$SelectOccasionImplCopyWith(_$SelectOccasionImpl value,
          $Res Function(_$SelectOccasionImpl) then) =
      __$$SelectOccasionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isSelected});
}

/// @nodoc
class __$$SelectOccasionImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$SelectOccasionImpl>
    implements _$$SelectOccasionImplCopyWith<$Res> {
  __$$SelectOccasionImplCopyWithImpl(
      _$SelectOccasionImpl _value, $Res Function(_$SelectOccasionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSelected = null,
  }) {
    return _then(_$SelectOccasionImpl(
      null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SelectOccasionImpl implements _SelectOccasion {
  const _$SelectOccasionImpl(this.isSelected);

  @override
  final bool isSelected;

  @override
  String toString() {
    return 'CategoryEvent.selectOccasion(isSelected: $isSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectOccasionImpl &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectOccasionImplCopyWith<_$SelectOccasionImpl> get copyWith =>
      __$$SelectOccasionImplCopyWithImpl<_$SelectOccasionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() fetch,
    required TResult Function(Category category) select,
    required TResult Function(bool isSelected) selectOccasion,
  }) {
    return selectOccasion(isSelected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(Category category)? select,
    TResult? Function(bool isSelected)? selectOccasion,
  }) {
    return selectOccasion?.call(isSelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(Category category)? select,
    TResult Function(bool isSelected)? selectOccasion,
    required TResult orElse(),
  }) {
    if (selectOccasion != null) {
      return selectOccasion(isSelected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Select value) select,
    required TResult Function(_SelectOccasion value) selectOccasion,
  }) {
    return selectOccasion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Select value)? select,
    TResult? Function(_SelectOccasion value)? selectOccasion,
  }) {
    return selectOccasion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Select value)? select,
    TResult Function(_SelectOccasion value)? selectOccasion,
    required TResult orElse(),
  }) {
    if (selectOccasion != null) {
      return selectOccasion(this);
    }
    return orElse();
  }
}

abstract class _SelectOccasion implements CategoryEvent {
  const factory _SelectOccasion(final bool isSelected) = _$SelectOccasionImpl;

  bool get isSelected;
  @JsonKey(ignore: true)
  _$$SelectOccasionImplCopyWith<_$SelectOccasionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoryState {
  Category get selectedCategory => throw _privateConstructorUsedError;
  List<Category> get categories => throw _privateConstructorUsedError;
  List<Category> get occasionCategory => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;
  bool get isOcassionSelected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryStateCopyWith<CategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res, CategoryState>;
  @useResult
  $Res call(
      {Category selectedCategory,
      List<Category> categories,
      List<Category> occasionCategory,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
      bool isFetching,
      bool isOcassionSelected});

  $CategoryCopyWith<$Res> get selectedCategory;
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res, $Val extends CategoryState>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCategory = null,
    Object? categories = null,
    Object? occasionCategory = null,
    Object? apiFailureOrSuccessOption = null,
    Object? isFetching = null,
    Object? isOcassionSelected = null,
  }) {
    return _then(_value.copyWith(
      selectedCategory: null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as Category,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      occasionCategory: null == occasionCategory
          ? _value.occasionCategory
          : occasionCategory // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      apiFailureOrSuccessOption: null == apiFailureOrSuccessOption
          ? _value.apiFailureOrSuccessOption
          : apiFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      isOcassionSelected: null == isOcassionSelected
          ? _value.isOcassionSelected
          : isOcassionSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get selectedCategory {
    return $CategoryCopyWith<$Res>(_value.selectedCategory, (value) {
      return _then(_value.copyWith(selectedCategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CustomerCodeStateImplCopyWith<$Res>
    implements $CategoryStateCopyWith<$Res> {
  factory _$$CustomerCodeStateImplCopyWith(_$CustomerCodeStateImpl value,
          $Res Function(_$CustomerCodeStateImpl) then) =
      __$$CustomerCodeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Category selectedCategory,
      List<Category> categories,
      List<Category> occasionCategory,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
      bool isFetching,
      bool isOcassionSelected});

  @override
  $CategoryCopyWith<$Res> get selectedCategory;
}

/// @nodoc
class __$$CustomerCodeStateImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$CustomerCodeStateImpl>
    implements _$$CustomerCodeStateImplCopyWith<$Res> {
  __$$CustomerCodeStateImplCopyWithImpl(_$CustomerCodeStateImpl _value,
      $Res Function(_$CustomerCodeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCategory = null,
    Object? categories = null,
    Object? occasionCategory = null,
    Object? apiFailureOrSuccessOption = null,
    Object? isFetching = null,
    Object? isOcassionSelected = null,
  }) {
    return _then(_$CustomerCodeStateImpl(
      selectedCategory: null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as Category,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      occasionCategory: null == occasionCategory
          ? _value._occasionCategory
          : occasionCategory // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      apiFailureOrSuccessOption: null == apiFailureOrSuccessOption
          ? _value.apiFailureOrSuccessOption
          : apiFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      isOcassionSelected: null == isOcassionSelected
          ? _value.isOcassionSelected
          : isOcassionSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CustomerCodeStateImpl extends _CustomerCodeState {
  const _$CustomerCodeStateImpl(
      {required this.selectedCategory,
      required final List<Category> categories,
      required final List<Category> occasionCategory,
      required this.apiFailureOrSuccessOption,
      required this.isFetching,
      required this.isOcassionSelected})
      : _categories = categories,
        _occasionCategory = occasionCategory,
        super._();

  @override
  final Category selectedCategory;
  final List<Category> _categories;
  @override
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<Category> _occasionCategory;
  @override
  List<Category> get occasionCategory {
    if (_occasionCategory is EqualUnmodifiableListView)
      return _occasionCategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_occasionCategory);
  }

  @override
  final Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption;
  @override
  final bool isFetching;
  @override
  final bool isOcassionSelected;

  @override
  String toString() {
    return 'CategoryState(selectedCategory: $selectedCategory, categories: $categories, occasionCategory: $occasionCategory, apiFailureOrSuccessOption: $apiFailureOrSuccessOption, isFetching: $isFetching, isOcassionSelected: $isOcassionSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerCodeStateImpl &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other._occasionCategory, _occasionCategory) &&
            (identical(other.apiFailureOrSuccessOption,
                    apiFailureOrSuccessOption) ||
                other.apiFailureOrSuccessOption == apiFailureOrSuccessOption) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching) &&
            (identical(other.isOcassionSelected, isOcassionSelected) ||
                other.isOcassionSelected == isOcassionSelected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedCategory,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_occasionCategory),
      apiFailureOrSuccessOption,
      isFetching,
      isOcassionSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerCodeStateImplCopyWith<_$CustomerCodeStateImpl> get copyWith =>
      __$$CustomerCodeStateImplCopyWithImpl<_$CustomerCodeStateImpl>(
          this, _$identity);
}

abstract class _CustomerCodeState extends CategoryState {
  const factory _CustomerCodeState(
      {required final Category selectedCategory,
      required final List<Category> categories,
      required final List<Category> occasionCategory,
      required final Option<Either<ApiFailure, dynamic>>
          apiFailureOrSuccessOption,
      required final bool isFetching,
      required final bool isOcassionSelected}) = _$CustomerCodeStateImpl;
  const _CustomerCodeState._() : super._();

  @override
  Category get selectedCategory;
  @override
  List<Category> get categories;
  @override
  List<Category> get occasionCategory;
  @override
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption;
  @override
  bool get isFetching;
  @override
  bool get isOcassionSelected;
  @override
  @JsonKey(ignore: true)
  _$$CustomerCodeStateImplCopyWith<_$CustomerCodeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
