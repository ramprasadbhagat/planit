// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecipeDto _$RecipeDtoFromJson(Map<String, dynamic> json) {
  return _RecipeDto.fromJson(json);
}

/// @nodoc
mixin _$RecipeDto {
  @JsonKey(defaultValue: '', readValue: parseId)
  String get id => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get cuisine => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get course => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get servingSize => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<String> get nutritionalTable => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get numRatings => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0.0)
  double get rating => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get writeup => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get difficultyLevel => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get numberServings => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<Map<String, dynamic>> get ingredient =>
      throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<Map<String, dynamic>> get equipment =>
      throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<Map<String, dynamic>> get step => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: false)
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<String> get recipeImages => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get timeRequired => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeDtoCopyWith<RecipeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeDtoCopyWith<$Res> {
  factory $RecipeDtoCopyWith(RecipeDto value, $Res Function(RecipeDto) then) =
      _$RecipeDtoCopyWithImpl<$Res, RecipeDto>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: '', readValue: parseId) String id,
      @JsonKey(defaultValue: '') String name,
      @JsonKey(defaultValue: '') String cuisine,
      @JsonKey(defaultValue: '') String course,
      @JsonKey(defaultValue: '') String servingSize,
      @JsonKey(defaultValue: []) List<String> nutritionalTable,
      @JsonKey(defaultValue: '') String numRatings,
      @JsonKey(defaultValue: 0.0) double rating,
      @JsonKey(defaultValue: '') String writeup,
      @JsonKey(defaultValue: '') String difficultyLevel,
      @JsonKey(defaultValue: '') String numberServings,
      @JsonKey(defaultValue: []) List<Map<String, dynamic>> ingredient,
      @JsonKey(defaultValue: []) List<Map<String, dynamic>> equipment,
      @JsonKey(defaultValue: []) List<Map<String, dynamic>> step,
      @JsonKey(defaultValue: false) bool isActive,
      @JsonKey(defaultValue: []) List<String> recipeImages,
      @JsonKey(defaultValue: '') String timeRequired});
}

/// @nodoc
class _$RecipeDtoCopyWithImpl<$Res, $Val extends RecipeDto>
    implements $RecipeDtoCopyWith<$Res> {
  _$RecipeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? cuisine = null,
    Object? course = null,
    Object? servingSize = null,
    Object? nutritionalTable = null,
    Object? numRatings = null,
    Object? rating = null,
    Object? writeup = null,
    Object? difficultyLevel = null,
    Object? numberServings = null,
    Object? ingredient = null,
    Object? equipment = null,
    Object? step = null,
    Object? isActive = null,
    Object? recipeImages = null,
    Object? timeRequired = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cuisine: null == cuisine
          ? _value.cuisine
          : cuisine // ignore: cast_nullable_to_non_nullable
              as String,
      course: null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as String,
      servingSize: null == servingSize
          ? _value.servingSize
          : servingSize // ignore: cast_nullable_to_non_nullable
              as String,
      nutritionalTable: null == nutritionalTable
          ? _value.nutritionalTable
          : nutritionalTable // ignore: cast_nullable_to_non_nullable
              as List<String>,
      numRatings: null == numRatings
          ? _value.numRatings
          : numRatings // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      writeup: null == writeup
          ? _value.writeup
          : writeup // ignore: cast_nullable_to_non_nullable
              as String,
      difficultyLevel: null == difficultyLevel
          ? _value.difficultyLevel
          : difficultyLevel // ignore: cast_nullable_to_non_nullable
              as String,
      numberServings: null == numberServings
          ? _value.numberServings
          : numberServings // ignore: cast_nullable_to_non_nullable
              as String,
      ingredient: null == ingredient
          ? _value.ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      equipment: null == equipment
          ? _value.equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      recipeImages: null == recipeImages
          ? _value.recipeImages
          : recipeImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      timeRequired: null == timeRequired
          ? _value.timeRequired
          : timeRequired // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipeDtoImplCopyWith<$Res>
    implements $RecipeDtoCopyWith<$Res> {
  factory _$$RecipeDtoImplCopyWith(
          _$RecipeDtoImpl value, $Res Function(_$RecipeDtoImpl) then) =
      __$$RecipeDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: '', readValue: parseId) String id,
      @JsonKey(defaultValue: '') String name,
      @JsonKey(defaultValue: '') String cuisine,
      @JsonKey(defaultValue: '') String course,
      @JsonKey(defaultValue: '') String servingSize,
      @JsonKey(defaultValue: []) List<String> nutritionalTable,
      @JsonKey(defaultValue: '') String numRatings,
      @JsonKey(defaultValue: 0.0) double rating,
      @JsonKey(defaultValue: '') String writeup,
      @JsonKey(defaultValue: '') String difficultyLevel,
      @JsonKey(defaultValue: '') String numberServings,
      @JsonKey(defaultValue: []) List<Map<String, dynamic>> ingredient,
      @JsonKey(defaultValue: []) List<Map<String, dynamic>> equipment,
      @JsonKey(defaultValue: []) List<Map<String, dynamic>> step,
      @JsonKey(defaultValue: false) bool isActive,
      @JsonKey(defaultValue: []) List<String> recipeImages,
      @JsonKey(defaultValue: '') String timeRequired});
}

/// @nodoc
class __$$RecipeDtoImplCopyWithImpl<$Res>
    extends _$RecipeDtoCopyWithImpl<$Res, _$RecipeDtoImpl>
    implements _$$RecipeDtoImplCopyWith<$Res> {
  __$$RecipeDtoImplCopyWithImpl(
      _$RecipeDtoImpl _value, $Res Function(_$RecipeDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? cuisine = null,
    Object? course = null,
    Object? servingSize = null,
    Object? nutritionalTable = null,
    Object? numRatings = null,
    Object? rating = null,
    Object? writeup = null,
    Object? difficultyLevel = null,
    Object? numberServings = null,
    Object? ingredient = null,
    Object? equipment = null,
    Object? step = null,
    Object? isActive = null,
    Object? recipeImages = null,
    Object? timeRequired = null,
  }) {
    return _then(_$RecipeDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cuisine: null == cuisine
          ? _value.cuisine
          : cuisine // ignore: cast_nullable_to_non_nullable
              as String,
      course: null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as String,
      servingSize: null == servingSize
          ? _value.servingSize
          : servingSize // ignore: cast_nullable_to_non_nullable
              as String,
      nutritionalTable: null == nutritionalTable
          ? _value._nutritionalTable
          : nutritionalTable // ignore: cast_nullable_to_non_nullable
              as List<String>,
      numRatings: null == numRatings
          ? _value.numRatings
          : numRatings // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      writeup: null == writeup
          ? _value.writeup
          : writeup // ignore: cast_nullable_to_non_nullable
              as String,
      difficultyLevel: null == difficultyLevel
          ? _value.difficultyLevel
          : difficultyLevel // ignore: cast_nullable_to_non_nullable
              as String,
      numberServings: null == numberServings
          ? _value.numberServings
          : numberServings // ignore: cast_nullable_to_non_nullable
              as String,
      ingredient: null == ingredient
          ? _value._ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      equipment: null == equipment
          ? _value._equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      step: null == step
          ? _value._step
          : step // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      recipeImages: null == recipeImages
          ? _value._recipeImages
          : recipeImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      timeRequired: null == timeRequired
          ? _value.timeRequired
          : timeRequired // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$RecipeDtoImpl extends _RecipeDto {
  const _$RecipeDtoImpl(
      {@JsonKey(defaultValue: '', readValue: parseId) required this.id,
      @JsonKey(defaultValue: '') required this.name,
      @JsonKey(defaultValue: '') required this.cuisine,
      @JsonKey(defaultValue: '') required this.course,
      @JsonKey(defaultValue: '') required this.servingSize,
      @JsonKey(defaultValue: []) required final List<String> nutritionalTable,
      @JsonKey(defaultValue: '') required this.numRatings,
      @JsonKey(defaultValue: 0.0) required this.rating,
      @JsonKey(defaultValue: '') required this.writeup,
      @JsonKey(defaultValue: '') required this.difficultyLevel,
      @JsonKey(defaultValue: '') required this.numberServings,
      @JsonKey(defaultValue: [])
      required final List<Map<String, dynamic>> ingredient,
      @JsonKey(defaultValue: [])
      required final List<Map<String, dynamic>> equipment,
      @JsonKey(defaultValue: []) required final List<Map<String, dynamic>> step,
      @JsonKey(defaultValue: false) required this.isActive,
      @JsonKey(defaultValue: []) required final List<String> recipeImages,
      @JsonKey(defaultValue: '') required this.timeRequired})
      : _nutritionalTable = nutritionalTable,
        _ingredient = ingredient,
        _equipment = equipment,
        _step = step,
        _recipeImages = recipeImages,
        super._();

  factory _$RecipeDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipeDtoImplFromJson(json);

  @override
  @JsonKey(defaultValue: '', readValue: parseId)
  final String id;
  @override
  @JsonKey(defaultValue: '')
  final String name;
  @override
  @JsonKey(defaultValue: '')
  final String cuisine;
  @override
  @JsonKey(defaultValue: '')
  final String course;
  @override
  @JsonKey(defaultValue: '')
  final String servingSize;
  final List<String> _nutritionalTable;
  @override
  @JsonKey(defaultValue: [])
  List<String> get nutritionalTable {
    if (_nutritionalTable is EqualUnmodifiableListView)
      return _nutritionalTable;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nutritionalTable);
  }

  @override
  @JsonKey(defaultValue: '')
  final String numRatings;
  @override
  @JsonKey(defaultValue: 0.0)
  final double rating;
  @override
  @JsonKey(defaultValue: '')
  final String writeup;
  @override
  @JsonKey(defaultValue: '')
  final String difficultyLevel;
  @override
  @JsonKey(defaultValue: '')
  final String numberServings;
  final List<Map<String, dynamic>> _ingredient;
  @override
  @JsonKey(defaultValue: [])
  List<Map<String, dynamic>> get ingredient {
    if (_ingredient is EqualUnmodifiableListView) return _ingredient;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredient);
  }

  final List<Map<String, dynamic>> _equipment;
  @override
  @JsonKey(defaultValue: [])
  List<Map<String, dynamic>> get equipment {
    if (_equipment is EqualUnmodifiableListView) return _equipment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_equipment);
  }

  final List<Map<String, dynamic>> _step;
  @override
  @JsonKey(defaultValue: [])
  List<Map<String, dynamic>> get step {
    if (_step is EqualUnmodifiableListView) return _step;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_step);
  }

  @override
  @JsonKey(defaultValue: false)
  final bool isActive;
  final List<String> _recipeImages;
  @override
  @JsonKey(defaultValue: [])
  List<String> get recipeImages {
    if (_recipeImages is EqualUnmodifiableListView) return _recipeImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipeImages);
  }

  @override
  @JsonKey(defaultValue: '')
  final String timeRequired;

  @override
  String toString() {
    return 'RecipeDto(id: $id, name: $name, cuisine: $cuisine, course: $course, servingSize: $servingSize, nutritionalTable: $nutritionalTable, numRatings: $numRatings, rating: $rating, writeup: $writeup, difficultyLevel: $difficultyLevel, numberServings: $numberServings, ingredient: $ingredient, equipment: $equipment, step: $step, isActive: $isActive, recipeImages: $recipeImages, timeRequired: $timeRequired)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cuisine, cuisine) || other.cuisine == cuisine) &&
            (identical(other.course, course) || other.course == course) &&
            (identical(other.servingSize, servingSize) ||
                other.servingSize == servingSize) &&
            const DeepCollectionEquality()
                .equals(other._nutritionalTable, _nutritionalTable) &&
            (identical(other.numRatings, numRatings) ||
                other.numRatings == numRatings) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.writeup, writeup) || other.writeup == writeup) &&
            (identical(other.difficultyLevel, difficultyLevel) ||
                other.difficultyLevel == difficultyLevel) &&
            (identical(other.numberServings, numberServings) ||
                other.numberServings == numberServings) &&
            const DeepCollectionEquality()
                .equals(other._ingredient, _ingredient) &&
            const DeepCollectionEquality()
                .equals(other._equipment, _equipment) &&
            const DeepCollectionEquality().equals(other._step, _step) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality()
                .equals(other._recipeImages, _recipeImages) &&
            (identical(other.timeRequired, timeRequired) ||
                other.timeRequired == timeRequired));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      cuisine,
      course,
      servingSize,
      const DeepCollectionEquality().hash(_nutritionalTable),
      numRatings,
      rating,
      writeup,
      difficultyLevel,
      numberServings,
      const DeepCollectionEquality().hash(_ingredient),
      const DeepCollectionEquality().hash(_equipment),
      const DeepCollectionEquality().hash(_step),
      isActive,
      const DeepCollectionEquality().hash(_recipeImages),
      timeRequired);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeDtoImplCopyWith<_$RecipeDtoImpl> get copyWith =>
      __$$RecipeDtoImplCopyWithImpl<_$RecipeDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipeDtoImplToJson(
      this,
    );
  }
}

abstract class _RecipeDto extends RecipeDto {
  const factory _RecipeDto(
      {@JsonKey(defaultValue: '', readValue: parseId) required final String id,
      @JsonKey(defaultValue: '') required final String name,
      @JsonKey(defaultValue: '') required final String cuisine,
      @JsonKey(defaultValue: '') required final String course,
      @JsonKey(defaultValue: '') required final String servingSize,
      @JsonKey(defaultValue: []) required final List<String> nutritionalTable,
      @JsonKey(defaultValue: '') required final String numRatings,
      @JsonKey(defaultValue: 0.0) required final double rating,
      @JsonKey(defaultValue: '') required final String writeup,
      @JsonKey(defaultValue: '') required final String difficultyLevel,
      @JsonKey(defaultValue: '') required final String numberServings,
      @JsonKey(defaultValue: [])
      required final List<Map<String, dynamic>> ingredient,
      @JsonKey(defaultValue: [])
      required final List<Map<String, dynamic>> equipment,
      @JsonKey(defaultValue: []) required final List<Map<String, dynamic>> step,
      @JsonKey(defaultValue: false) required final bool isActive,
      @JsonKey(defaultValue: []) required final List<String> recipeImages,
      @JsonKey(defaultValue: '')
      required final String timeRequired}) = _$RecipeDtoImpl;
  const _RecipeDto._() : super._();

  factory _RecipeDto.fromJson(Map<String, dynamic> json) =
      _$RecipeDtoImpl.fromJson;

  @override
  @JsonKey(defaultValue: '', readValue: parseId)
  String get id;
  @override
  @JsonKey(defaultValue: '')
  String get name;
  @override
  @JsonKey(defaultValue: '')
  String get cuisine;
  @override
  @JsonKey(defaultValue: '')
  String get course;
  @override
  @JsonKey(defaultValue: '')
  String get servingSize;
  @override
  @JsonKey(defaultValue: [])
  List<String> get nutritionalTable;
  @override
  @JsonKey(defaultValue: '')
  String get numRatings;
  @override
  @JsonKey(defaultValue: 0.0)
  double get rating;
  @override
  @JsonKey(defaultValue: '')
  String get writeup;
  @override
  @JsonKey(defaultValue: '')
  String get difficultyLevel;
  @override
  @JsonKey(defaultValue: '')
  String get numberServings;
  @override
  @JsonKey(defaultValue: [])
  List<Map<String, dynamic>> get ingredient;
  @override
  @JsonKey(defaultValue: [])
  List<Map<String, dynamic>> get equipment;
  @override
  @JsonKey(defaultValue: [])
  List<Map<String, dynamic>> get step;
  @override
  @JsonKey(defaultValue: false)
  bool get isActive;
  @override
  @JsonKey(defaultValue: [])
  List<String> get recipeImages;
  @override
  @JsonKey(defaultValue: '')
  String get timeRequired;
  @override
  @JsonKey(ignore: true)
  _$$RecipeDtoImplCopyWith<_$RecipeDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IngredientDto _$IngredientDtoFromJson(Map<String, dynamic> json) {
  return _IngredientDto.fromJson(json);
}

/// @nodoc
mixin _$IngredientDto {
  @JsonKey(defaultValue: '')
  String get ingredientNumber => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get ingredientName => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get ingredientQuantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IngredientDtoCopyWith<IngredientDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientDtoCopyWith<$Res> {
  factory $IngredientDtoCopyWith(
          IngredientDto value, $Res Function(IngredientDto) then) =
      _$IngredientDtoCopyWithImpl<$Res, IngredientDto>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: '') String ingredientNumber,
      @JsonKey(defaultValue: '') String ingredientName,
      @JsonKey(defaultValue: '') String ingredientQuantity});
}

/// @nodoc
class _$IngredientDtoCopyWithImpl<$Res, $Val extends IngredientDto>
    implements $IngredientDtoCopyWith<$Res> {
  _$IngredientDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredientNumber = null,
    Object? ingredientName = null,
    Object? ingredientQuantity = null,
  }) {
    return _then(_value.copyWith(
      ingredientNumber: null == ingredientNumber
          ? _value.ingredientNumber
          : ingredientNumber // ignore: cast_nullable_to_non_nullable
              as String,
      ingredientName: null == ingredientName
          ? _value.ingredientName
          : ingredientName // ignore: cast_nullable_to_non_nullable
              as String,
      ingredientQuantity: null == ingredientQuantity
          ? _value.ingredientQuantity
          : ingredientQuantity // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IngredientDtoImplCopyWith<$Res>
    implements $IngredientDtoCopyWith<$Res> {
  factory _$$IngredientDtoImplCopyWith(
          _$IngredientDtoImpl value, $Res Function(_$IngredientDtoImpl) then) =
      __$$IngredientDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: '') String ingredientNumber,
      @JsonKey(defaultValue: '') String ingredientName,
      @JsonKey(defaultValue: '') String ingredientQuantity});
}

/// @nodoc
class __$$IngredientDtoImplCopyWithImpl<$Res>
    extends _$IngredientDtoCopyWithImpl<$Res, _$IngredientDtoImpl>
    implements _$$IngredientDtoImplCopyWith<$Res> {
  __$$IngredientDtoImplCopyWithImpl(
      _$IngredientDtoImpl _value, $Res Function(_$IngredientDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredientNumber = null,
    Object? ingredientName = null,
    Object? ingredientQuantity = null,
  }) {
    return _then(_$IngredientDtoImpl(
      ingredientNumber: null == ingredientNumber
          ? _value.ingredientNumber
          : ingredientNumber // ignore: cast_nullable_to_non_nullable
              as String,
      ingredientName: null == ingredientName
          ? _value.ingredientName
          : ingredientName // ignore: cast_nullable_to_non_nullable
              as String,
      ingredientQuantity: null == ingredientQuantity
          ? _value.ingredientQuantity
          : ingredientQuantity // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$IngredientDtoImpl extends _IngredientDto {
  const _$IngredientDtoImpl(
      {@JsonKey(defaultValue: '') required this.ingredientNumber,
      @JsonKey(defaultValue: '') required this.ingredientName,
      @JsonKey(defaultValue: '') required this.ingredientQuantity})
      : super._();

  factory _$IngredientDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$IngredientDtoImplFromJson(json);

  @override
  @JsonKey(defaultValue: '')
  final String ingredientNumber;
  @override
  @JsonKey(defaultValue: '')
  final String ingredientName;
  @override
  @JsonKey(defaultValue: '')
  final String ingredientQuantity;

  @override
  String toString() {
    return 'IngredientDto(ingredientNumber: $ingredientNumber, ingredientName: $ingredientName, ingredientQuantity: $ingredientQuantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IngredientDtoImpl &&
            (identical(other.ingredientNumber, ingredientNumber) ||
                other.ingredientNumber == ingredientNumber) &&
            (identical(other.ingredientName, ingredientName) ||
                other.ingredientName == ingredientName) &&
            (identical(other.ingredientQuantity, ingredientQuantity) ||
                other.ingredientQuantity == ingredientQuantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, ingredientNumber, ingredientName, ingredientQuantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IngredientDtoImplCopyWith<_$IngredientDtoImpl> get copyWith =>
      __$$IngredientDtoImplCopyWithImpl<_$IngredientDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IngredientDtoImplToJson(
      this,
    );
  }
}

abstract class _IngredientDto extends IngredientDto {
  const factory _IngredientDto(
      {@JsonKey(defaultValue: '') required final String ingredientNumber,
      @JsonKey(defaultValue: '') required final String ingredientName,
      @JsonKey(defaultValue: '')
      required final String ingredientQuantity}) = _$IngredientDtoImpl;
  const _IngredientDto._() : super._();

  factory _IngredientDto.fromJson(Map<String, dynamic> json) =
      _$IngredientDtoImpl.fromJson;

  @override
  @JsonKey(defaultValue: '')
  String get ingredientNumber;
  @override
  @JsonKey(defaultValue: '')
  String get ingredientName;
  @override
  @JsonKey(defaultValue: '')
  String get ingredientQuantity;
  @override
  @JsonKey(ignore: true)
  _$$IngredientDtoImplCopyWith<_$IngredientDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EquipmentDto _$EquipmentDtoFromJson(Map<String, dynamic> json) {
  return _EquipmentDto.fromJson(json);
}

/// @nodoc
mixin _$EquipmentDto {
  @JsonKey(defaultValue: '')
  String get equipmentName => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get equipmentNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EquipmentDtoCopyWith<EquipmentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EquipmentDtoCopyWith<$Res> {
  factory $EquipmentDtoCopyWith(
          EquipmentDto value, $Res Function(EquipmentDto) then) =
      _$EquipmentDtoCopyWithImpl<$Res, EquipmentDto>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: '') String equipmentName,
      @JsonKey(defaultValue: '') String equipmentNumber});
}

/// @nodoc
class _$EquipmentDtoCopyWithImpl<$Res, $Val extends EquipmentDto>
    implements $EquipmentDtoCopyWith<$Res> {
  _$EquipmentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equipmentName = null,
    Object? equipmentNumber = null,
  }) {
    return _then(_value.copyWith(
      equipmentName: null == equipmentName
          ? _value.equipmentName
          : equipmentName // ignore: cast_nullable_to_non_nullable
              as String,
      equipmentNumber: null == equipmentNumber
          ? _value.equipmentNumber
          : equipmentNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EquipmentDtoImplCopyWith<$Res>
    implements $EquipmentDtoCopyWith<$Res> {
  factory _$$EquipmentDtoImplCopyWith(
          _$EquipmentDtoImpl value, $Res Function(_$EquipmentDtoImpl) then) =
      __$$EquipmentDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: '') String equipmentName,
      @JsonKey(defaultValue: '') String equipmentNumber});
}

/// @nodoc
class __$$EquipmentDtoImplCopyWithImpl<$Res>
    extends _$EquipmentDtoCopyWithImpl<$Res, _$EquipmentDtoImpl>
    implements _$$EquipmentDtoImplCopyWith<$Res> {
  __$$EquipmentDtoImplCopyWithImpl(
      _$EquipmentDtoImpl _value, $Res Function(_$EquipmentDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equipmentName = null,
    Object? equipmentNumber = null,
  }) {
    return _then(_$EquipmentDtoImpl(
      equipmentName: null == equipmentName
          ? _value.equipmentName
          : equipmentName // ignore: cast_nullable_to_non_nullable
              as String,
      equipmentNumber: null == equipmentNumber
          ? _value.equipmentNumber
          : equipmentNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$EquipmentDtoImpl extends _EquipmentDto {
  const _$EquipmentDtoImpl(
      {@JsonKey(defaultValue: '') required this.equipmentName,
      @JsonKey(defaultValue: '') required this.equipmentNumber})
      : super._();

  factory _$EquipmentDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$EquipmentDtoImplFromJson(json);

  @override
  @JsonKey(defaultValue: '')
  final String equipmentName;
  @override
  @JsonKey(defaultValue: '')
  final String equipmentNumber;

  @override
  String toString() {
    return 'EquipmentDto(equipmentName: $equipmentName, equipmentNumber: $equipmentNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EquipmentDtoImpl &&
            (identical(other.equipmentName, equipmentName) ||
                other.equipmentName == equipmentName) &&
            (identical(other.equipmentNumber, equipmentNumber) ||
                other.equipmentNumber == equipmentNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, equipmentName, equipmentNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EquipmentDtoImplCopyWith<_$EquipmentDtoImpl> get copyWith =>
      __$$EquipmentDtoImplCopyWithImpl<_$EquipmentDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EquipmentDtoImplToJson(
      this,
    );
  }
}

abstract class _EquipmentDto extends EquipmentDto {
  const factory _EquipmentDto(
          {@JsonKey(defaultValue: '') required final String equipmentName,
          @JsonKey(defaultValue: '') required final String equipmentNumber}) =
      _$EquipmentDtoImpl;
  const _EquipmentDto._() : super._();

  factory _EquipmentDto.fromJson(Map<String, dynamic> json) =
      _$EquipmentDtoImpl.fromJson;

  @override
  @JsonKey(defaultValue: '')
  String get equipmentName;
  @override
  @JsonKey(defaultValue: '')
  String get equipmentNumber;
  @override
  @JsonKey(ignore: true)
  _$$EquipmentDtoImplCopyWith<_$EquipmentDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RecipeStepDto _$RecipeStepDtoFromJson(Map<String, dynamic> json) {
  return _RecipeStepDto.fromJson(json);
}

/// @nodoc
mixin _$RecipeStepDto {
  @JsonKey(defaultValue: 0)
  int get stepNumber => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get stepDescription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeStepDtoCopyWith<RecipeStepDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeStepDtoCopyWith<$Res> {
  factory $RecipeStepDtoCopyWith(
          RecipeStepDto value, $Res Function(RecipeStepDto) then) =
      _$RecipeStepDtoCopyWithImpl<$Res, RecipeStepDto>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: 0) int stepNumber,
      @JsonKey(defaultValue: '') String stepDescription});
}

/// @nodoc
class _$RecipeStepDtoCopyWithImpl<$Res, $Val extends RecipeStepDto>
    implements $RecipeStepDtoCopyWith<$Res> {
  _$RecipeStepDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stepNumber = null,
    Object? stepDescription = null,
  }) {
    return _then(_value.copyWith(
      stepNumber: null == stepNumber
          ? _value.stepNumber
          : stepNumber // ignore: cast_nullable_to_non_nullable
              as int,
      stepDescription: null == stepDescription
          ? _value.stepDescription
          : stepDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipeStepDtoImplCopyWith<$Res>
    implements $RecipeStepDtoCopyWith<$Res> {
  factory _$$RecipeStepDtoImplCopyWith(
          _$RecipeStepDtoImpl value, $Res Function(_$RecipeStepDtoImpl) then) =
      __$$RecipeStepDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: 0) int stepNumber,
      @JsonKey(defaultValue: '') String stepDescription});
}

/// @nodoc
class __$$RecipeStepDtoImplCopyWithImpl<$Res>
    extends _$RecipeStepDtoCopyWithImpl<$Res, _$RecipeStepDtoImpl>
    implements _$$RecipeStepDtoImplCopyWith<$Res> {
  __$$RecipeStepDtoImplCopyWithImpl(
      _$RecipeStepDtoImpl _value, $Res Function(_$RecipeStepDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stepNumber = null,
    Object? stepDescription = null,
  }) {
    return _then(_$RecipeStepDtoImpl(
      stepNumber: null == stepNumber
          ? _value.stepNumber
          : stepNumber // ignore: cast_nullable_to_non_nullable
              as int,
      stepDescription: null == stepDescription
          ? _value.stepDescription
          : stepDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$RecipeStepDtoImpl extends _RecipeStepDto {
  const _$RecipeStepDtoImpl(
      {@JsonKey(defaultValue: 0) required this.stepNumber,
      @JsonKey(defaultValue: '') required this.stepDescription})
      : super._();

  factory _$RecipeStepDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipeStepDtoImplFromJson(json);

  @override
  @JsonKey(defaultValue: 0)
  final int stepNumber;
  @override
  @JsonKey(defaultValue: '')
  final String stepDescription;

  @override
  String toString() {
    return 'RecipeStepDto(stepNumber: $stepNumber, stepDescription: $stepDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeStepDtoImpl &&
            (identical(other.stepNumber, stepNumber) ||
                other.stepNumber == stepNumber) &&
            (identical(other.stepDescription, stepDescription) ||
                other.stepDescription == stepDescription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, stepNumber, stepDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeStepDtoImplCopyWith<_$RecipeStepDtoImpl> get copyWith =>
      __$$RecipeStepDtoImplCopyWithImpl<_$RecipeStepDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipeStepDtoImplToJson(
      this,
    );
  }
}

abstract class _RecipeStepDto extends RecipeStepDto {
  const factory _RecipeStepDto(
          {@JsonKey(defaultValue: 0) required final int stepNumber,
          @JsonKey(defaultValue: '') required final String stepDescription}) =
      _$RecipeStepDtoImpl;
  const _RecipeStepDto._() : super._();

  factory _RecipeStepDto.fromJson(Map<String, dynamic> json) =
      _$RecipeStepDtoImpl.fromJson;

  @override
  @JsonKey(defaultValue: 0)
  int get stepNumber;
  @override
  @JsonKey(defaultValue: '')
  String get stepDescription;
  @override
  @JsonKey(ignore: true)
  _$$RecipeStepDtoImplCopyWith<_$RecipeStepDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
