// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quick_picks_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuickPicksDto _$QuickPicksDtoFromJson(Map<String, dynamic> json) {
  return _QuickPicksDto.fromJson(json);
}

/// @nodoc
mixin _$QuickPicksDto {
  @JsonKey(defaultValue: '')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get categoryId => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get subcategoryId => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get productName => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get productDescription => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get sku => throw _privateConstructorUsedError;
  @JsonKey(name: 'sku_price', defaultValue: '')
  String get skuPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'sku_packsize', defaultValue: '')
  String get skuPacksize => throw _privateConstructorUsedError;
  @JsonKey(name: 'sku_content', defaultValue: '')
  String get skuContent => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get startingPrice => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get productMRP => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get productReview => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get productRating => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<String> get ingredientsList => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get nutritionalInformation => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: false)
  bool get isDeleted => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: false)
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: false)
  bool get isHighlighted => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: false)
  bool get isQuickPick => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get discount => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get attributeName => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get attributeItem => throw _privateConstructorUsedError;
  PriceDto get price => throw _privateConstructorUsedError;
  List<String> get productImages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuickPicksDtoCopyWith<QuickPicksDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuickPicksDtoCopyWith<$Res> {
  factory $QuickPicksDtoCopyWith(
          QuickPicksDto value, $Res Function(QuickPicksDto) then) =
      _$QuickPicksDtoCopyWithImpl<$Res, QuickPicksDto>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: '') String id,
      @JsonKey(defaultValue: '') String categoryId,
      @JsonKey(defaultValue: '') String subcategoryId,
      @JsonKey(defaultValue: '') String productName,
      @JsonKey(defaultValue: '') String productDescription,
      @JsonKey(defaultValue: '') String sku,
      @JsonKey(name: 'sku_price', defaultValue: '') String skuPrice,
      @JsonKey(name: 'sku_packsize', defaultValue: '') String skuPacksize,
      @JsonKey(name: 'sku_content', defaultValue: '') String skuContent,
      @JsonKey(defaultValue: '') String startingPrice,
      @JsonKey(defaultValue: '') String productMRP,
      @JsonKey(defaultValue: '') String productReview,
      @JsonKey(defaultValue: '') String productRating,
      @JsonKey(defaultValue: []) List<String> ingredientsList,
      @JsonKey(defaultValue: '') String nutritionalInformation,
      @JsonKey(defaultValue: false) bool isDeleted,
      @JsonKey(defaultValue: false) bool isActive,
      @JsonKey(defaultValue: false) bool isHighlighted,
      @JsonKey(defaultValue: false) bool isQuickPick,
      @JsonKey(defaultValue: '') String discount,
      @JsonKey(defaultValue: '') String attributeName,
      @JsonKey(defaultValue: '') String attributeItem,
      PriceDto price,
      List<String> productImages});

  $PriceDtoCopyWith<$Res> get price;
}

/// @nodoc
class _$QuickPicksDtoCopyWithImpl<$Res, $Val extends QuickPicksDto>
    implements $QuickPicksDtoCopyWith<$Res> {
  _$QuickPicksDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryId = null,
    Object? subcategoryId = null,
    Object? productName = null,
    Object? productDescription = null,
    Object? sku = null,
    Object? skuPrice = null,
    Object? skuPacksize = null,
    Object? skuContent = null,
    Object? startingPrice = null,
    Object? productMRP = null,
    Object? productReview = null,
    Object? productRating = null,
    Object? ingredientsList = null,
    Object? nutritionalInformation = null,
    Object? isDeleted = null,
    Object? isActive = null,
    Object? isHighlighted = null,
    Object? isQuickPick = null,
    Object? discount = null,
    Object? attributeName = null,
    Object? attributeItem = null,
    Object? price = null,
    Object? productImages = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      subcategoryId: null == subcategoryId
          ? _value.subcategoryId
          : subcategoryId // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productDescription: null == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as String,
      sku: null == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String,
      skuPrice: null == skuPrice
          ? _value.skuPrice
          : skuPrice // ignore: cast_nullable_to_non_nullable
              as String,
      skuPacksize: null == skuPacksize
          ? _value.skuPacksize
          : skuPacksize // ignore: cast_nullable_to_non_nullable
              as String,
      skuContent: null == skuContent
          ? _value.skuContent
          : skuContent // ignore: cast_nullable_to_non_nullable
              as String,
      startingPrice: null == startingPrice
          ? _value.startingPrice
          : startingPrice // ignore: cast_nullable_to_non_nullable
              as String,
      productMRP: null == productMRP
          ? _value.productMRP
          : productMRP // ignore: cast_nullable_to_non_nullable
              as String,
      productReview: null == productReview
          ? _value.productReview
          : productReview // ignore: cast_nullable_to_non_nullable
              as String,
      productRating: null == productRating
          ? _value.productRating
          : productRating // ignore: cast_nullable_to_non_nullable
              as String,
      ingredientsList: null == ingredientsList
          ? _value.ingredientsList
          : ingredientsList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      nutritionalInformation: null == nutritionalInformation
          ? _value.nutritionalInformation
          : nutritionalInformation // ignore: cast_nullable_to_non_nullable
              as String,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isHighlighted: null == isHighlighted
          ? _value.isHighlighted
          : isHighlighted // ignore: cast_nullable_to_non_nullable
              as bool,
      isQuickPick: null == isQuickPick
          ? _value.isQuickPick
          : isQuickPick // ignore: cast_nullable_to_non_nullable
              as bool,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
      attributeName: null == attributeName
          ? _value.attributeName
          : attributeName // ignore: cast_nullable_to_non_nullable
              as String,
      attributeItem: null == attributeItem
          ? _value.attributeItem
          : attributeItem // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as PriceDto,
      productImages: null == productImages
          ? _value.productImages
          : productImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceDtoCopyWith<$Res> get price {
    return $PriceDtoCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuickPicksDtoImplCopyWith<$Res>
    implements $QuickPicksDtoCopyWith<$Res> {
  factory _$$QuickPicksDtoImplCopyWith(
          _$QuickPicksDtoImpl value, $Res Function(_$QuickPicksDtoImpl) then) =
      __$$QuickPicksDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: '') String id,
      @JsonKey(defaultValue: '') String categoryId,
      @JsonKey(defaultValue: '') String subcategoryId,
      @JsonKey(defaultValue: '') String productName,
      @JsonKey(defaultValue: '') String productDescription,
      @JsonKey(defaultValue: '') String sku,
      @JsonKey(name: 'sku_price', defaultValue: '') String skuPrice,
      @JsonKey(name: 'sku_packsize', defaultValue: '') String skuPacksize,
      @JsonKey(name: 'sku_content', defaultValue: '') String skuContent,
      @JsonKey(defaultValue: '') String startingPrice,
      @JsonKey(defaultValue: '') String productMRP,
      @JsonKey(defaultValue: '') String productReview,
      @JsonKey(defaultValue: '') String productRating,
      @JsonKey(defaultValue: []) List<String> ingredientsList,
      @JsonKey(defaultValue: '') String nutritionalInformation,
      @JsonKey(defaultValue: false) bool isDeleted,
      @JsonKey(defaultValue: false) bool isActive,
      @JsonKey(defaultValue: false) bool isHighlighted,
      @JsonKey(defaultValue: false) bool isQuickPick,
      @JsonKey(defaultValue: '') String discount,
      @JsonKey(defaultValue: '') String attributeName,
      @JsonKey(defaultValue: '') String attributeItem,
      PriceDto price,
      List<String> productImages});

  @override
  $PriceDtoCopyWith<$Res> get price;
}

/// @nodoc
class __$$QuickPicksDtoImplCopyWithImpl<$Res>
    extends _$QuickPicksDtoCopyWithImpl<$Res, _$QuickPicksDtoImpl>
    implements _$$QuickPicksDtoImplCopyWith<$Res> {
  __$$QuickPicksDtoImplCopyWithImpl(
      _$QuickPicksDtoImpl _value, $Res Function(_$QuickPicksDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryId = null,
    Object? subcategoryId = null,
    Object? productName = null,
    Object? productDescription = null,
    Object? sku = null,
    Object? skuPrice = null,
    Object? skuPacksize = null,
    Object? skuContent = null,
    Object? startingPrice = null,
    Object? productMRP = null,
    Object? productReview = null,
    Object? productRating = null,
    Object? ingredientsList = null,
    Object? nutritionalInformation = null,
    Object? isDeleted = null,
    Object? isActive = null,
    Object? isHighlighted = null,
    Object? isQuickPick = null,
    Object? discount = null,
    Object? attributeName = null,
    Object? attributeItem = null,
    Object? price = null,
    Object? productImages = null,
  }) {
    return _then(_$QuickPicksDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      subcategoryId: null == subcategoryId
          ? _value.subcategoryId
          : subcategoryId // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productDescription: null == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as String,
      sku: null == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String,
      skuPrice: null == skuPrice
          ? _value.skuPrice
          : skuPrice // ignore: cast_nullable_to_non_nullable
              as String,
      skuPacksize: null == skuPacksize
          ? _value.skuPacksize
          : skuPacksize // ignore: cast_nullable_to_non_nullable
              as String,
      skuContent: null == skuContent
          ? _value.skuContent
          : skuContent // ignore: cast_nullable_to_non_nullable
              as String,
      startingPrice: null == startingPrice
          ? _value.startingPrice
          : startingPrice // ignore: cast_nullable_to_non_nullable
              as String,
      productMRP: null == productMRP
          ? _value.productMRP
          : productMRP // ignore: cast_nullable_to_non_nullable
              as String,
      productReview: null == productReview
          ? _value.productReview
          : productReview // ignore: cast_nullable_to_non_nullable
              as String,
      productRating: null == productRating
          ? _value.productRating
          : productRating // ignore: cast_nullable_to_non_nullable
              as String,
      ingredientsList: null == ingredientsList
          ? _value._ingredientsList
          : ingredientsList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      nutritionalInformation: null == nutritionalInformation
          ? _value.nutritionalInformation
          : nutritionalInformation // ignore: cast_nullable_to_non_nullable
              as String,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isHighlighted: null == isHighlighted
          ? _value.isHighlighted
          : isHighlighted // ignore: cast_nullable_to_non_nullable
              as bool,
      isQuickPick: null == isQuickPick
          ? _value.isQuickPick
          : isQuickPick // ignore: cast_nullable_to_non_nullable
              as bool,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
      attributeName: null == attributeName
          ? _value.attributeName
          : attributeName // ignore: cast_nullable_to_non_nullable
              as String,
      attributeItem: null == attributeItem
          ? _value.attributeItem
          : attributeItem // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as PriceDto,
      productImages: null == productImages
          ? _value._productImages
          : productImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuickPicksDtoImpl extends _QuickPicksDto {
  const _$QuickPicksDtoImpl(
      {@JsonKey(defaultValue: '') required this.id,
      @JsonKey(defaultValue: '') required this.categoryId,
      @JsonKey(defaultValue: '') required this.subcategoryId,
      @JsonKey(defaultValue: '') required this.productName,
      @JsonKey(defaultValue: '') required this.productDescription,
      @JsonKey(defaultValue: '') required this.sku,
      @JsonKey(name: 'sku_price', defaultValue: '') required this.skuPrice,
      @JsonKey(name: 'sku_packsize', defaultValue: '')
      required this.skuPacksize,
      @JsonKey(name: 'sku_content', defaultValue: '') required this.skuContent,
      @JsonKey(defaultValue: '') required this.startingPrice,
      @JsonKey(defaultValue: '') required this.productMRP,
      @JsonKey(defaultValue: '') required this.productReview,
      @JsonKey(defaultValue: '') required this.productRating,
      @JsonKey(defaultValue: []) required final List<String> ingredientsList,
      @JsonKey(defaultValue: '') required this.nutritionalInformation,
      @JsonKey(defaultValue: false) required this.isDeleted,
      @JsonKey(defaultValue: false) required this.isActive,
      @JsonKey(defaultValue: false) required this.isHighlighted,
      @JsonKey(defaultValue: false) required this.isQuickPick,
      @JsonKey(defaultValue: '') required this.discount,
      @JsonKey(defaultValue: '') required this.attributeName,
      @JsonKey(defaultValue: '') required this.attributeItem,
      required this.price,
      required final List<String> productImages})
      : _ingredientsList = ingredientsList,
        _productImages = productImages,
        super._();

  factory _$QuickPicksDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuickPicksDtoImplFromJson(json);

  @override
  @JsonKey(defaultValue: '')
  final String id;
  @override
  @JsonKey(defaultValue: '')
  final String categoryId;
  @override
  @JsonKey(defaultValue: '')
  final String subcategoryId;
  @override
  @JsonKey(defaultValue: '')
  final String productName;
  @override
  @JsonKey(defaultValue: '')
  final String productDescription;
  @override
  @JsonKey(defaultValue: '')
  final String sku;
  @override
  @JsonKey(name: 'sku_price', defaultValue: '')
  final String skuPrice;
  @override
  @JsonKey(name: 'sku_packsize', defaultValue: '')
  final String skuPacksize;
  @override
  @JsonKey(name: 'sku_content', defaultValue: '')
  final String skuContent;
  @override
  @JsonKey(defaultValue: '')
  final String startingPrice;
  @override
  @JsonKey(defaultValue: '')
  final String productMRP;
  @override
  @JsonKey(defaultValue: '')
  final String productReview;
  @override
  @JsonKey(defaultValue: '')
  final String productRating;
  final List<String> _ingredientsList;
  @override
  @JsonKey(defaultValue: [])
  List<String> get ingredientsList {
    if (_ingredientsList is EqualUnmodifiableListView) return _ingredientsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredientsList);
  }

  @override
  @JsonKey(defaultValue: '')
  final String nutritionalInformation;
  @override
  @JsonKey(defaultValue: false)
  final bool isDeleted;
  @override
  @JsonKey(defaultValue: false)
  final bool isActive;
  @override
  @JsonKey(defaultValue: false)
  final bool isHighlighted;
  @override
  @JsonKey(defaultValue: false)
  final bool isQuickPick;
  @override
  @JsonKey(defaultValue: '')
  final String discount;
  @override
  @JsonKey(defaultValue: '')
  final String attributeName;
  @override
  @JsonKey(defaultValue: '')
  final String attributeItem;
  @override
  final PriceDto price;
  final List<String> _productImages;
  @override
  List<String> get productImages {
    if (_productImages is EqualUnmodifiableListView) return _productImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productImages);
  }

  @override
  String toString() {
    return 'QuickPicksDto(id: $id, categoryId: $categoryId, subcategoryId: $subcategoryId, productName: $productName, productDescription: $productDescription, sku: $sku, skuPrice: $skuPrice, skuPacksize: $skuPacksize, skuContent: $skuContent, startingPrice: $startingPrice, productMRP: $productMRP, productReview: $productReview, productRating: $productRating, ingredientsList: $ingredientsList, nutritionalInformation: $nutritionalInformation, isDeleted: $isDeleted, isActive: $isActive, isHighlighted: $isHighlighted, isQuickPick: $isQuickPick, discount: $discount, attributeName: $attributeName, attributeItem: $attributeItem, price: $price, productImages: $productImages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuickPicksDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.subcategoryId, subcategoryId) ||
                other.subcategoryId == subcategoryId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productDescription, productDescription) ||
                other.productDescription == productDescription) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.skuPrice, skuPrice) ||
                other.skuPrice == skuPrice) &&
            (identical(other.skuPacksize, skuPacksize) ||
                other.skuPacksize == skuPacksize) &&
            (identical(other.skuContent, skuContent) ||
                other.skuContent == skuContent) &&
            (identical(other.startingPrice, startingPrice) ||
                other.startingPrice == startingPrice) &&
            (identical(other.productMRP, productMRP) ||
                other.productMRP == productMRP) &&
            (identical(other.productReview, productReview) ||
                other.productReview == productReview) &&
            (identical(other.productRating, productRating) ||
                other.productRating == productRating) &&
            const DeepCollectionEquality()
                .equals(other._ingredientsList, _ingredientsList) &&
            (identical(other.nutritionalInformation, nutritionalInformation) ||
                other.nutritionalInformation == nutritionalInformation) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isHighlighted, isHighlighted) ||
                other.isHighlighted == isHighlighted) &&
            (identical(other.isQuickPick, isQuickPick) ||
                other.isQuickPick == isQuickPick) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.attributeName, attributeName) ||
                other.attributeName == attributeName) &&
            (identical(other.attributeItem, attributeItem) ||
                other.attributeItem == attributeItem) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality()
                .equals(other._productImages, _productImages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        categoryId,
        subcategoryId,
        productName,
        productDescription,
        sku,
        skuPrice,
        skuPacksize,
        skuContent,
        startingPrice,
        productMRP,
        productReview,
        productRating,
        const DeepCollectionEquality().hash(_ingredientsList),
        nutritionalInformation,
        isDeleted,
        isActive,
        isHighlighted,
        isQuickPick,
        discount,
        attributeName,
        attributeItem,
        price,
        const DeepCollectionEquality().hash(_productImages)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuickPicksDtoImplCopyWith<_$QuickPicksDtoImpl> get copyWith =>
      __$$QuickPicksDtoImplCopyWithImpl<_$QuickPicksDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuickPicksDtoImplToJson(
      this,
    );
  }
}

abstract class _QuickPicksDto extends QuickPicksDto {
  const factory _QuickPicksDto(
      {@JsonKey(defaultValue: '') required final String id,
      @JsonKey(defaultValue: '') required final String categoryId,
      @JsonKey(defaultValue: '') required final String subcategoryId,
      @JsonKey(defaultValue: '') required final String productName,
      @JsonKey(defaultValue: '') required final String productDescription,
      @JsonKey(defaultValue: '') required final String sku,
      @JsonKey(name: 'sku_price', defaultValue: '')
      required final String skuPrice,
      @JsonKey(name: 'sku_packsize', defaultValue: '')
      required final String skuPacksize,
      @JsonKey(name: 'sku_content', defaultValue: '')
      required final String skuContent,
      @JsonKey(defaultValue: '') required final String startingPrice,
      @JsonKey(defaultValue: '') required final String productMRP,
      @JsonKey(defaultValue: '') required final String productReview,
      @JsonKey(defaultValue: '') required final String productRating,
      @JsonKey(defaultValue: []) required final List<String> ingredientsList,
      @JsonKey(defaultValue: '') required final String nutritionalInformation,
      @JsonKey(defaultValue: false) required final bool isDeleted,
      @JsonKey(defaultValue: false) required final bool isActive,
      @JsonKey(defaultValue: false) required final bool isHighlighted,
      @JsonKey(defaultValue: false) required final bool isQuickPick,
      @JsonKey(defaultValue: '') required final String discount,
      @JsonKey(defaultValue: '') required final String attributeName,
      @JsonKey(defaultValue: '') required final String attributeItem,
      required final PriceDto price,
      required final List<String> productImages}) = _$QuickPicksDtoImpl;
  const _QuickPicksDto._() : super._();

  factory _QuickPicksDto.fromJson(Map<String, dynamic> json) =
      _$QuickPicksDtoImpl.fromJson;

  @override
  @JsonKey(defaultValue: '')
  String get id;
  @override
  @JsonKey(defaultValue: '')
  String get categoryId;
  @override
  @JsonKey(defaultValue: '')
  String get subcategoryId;
  @override
  @JsonKey(defaultValue: '')
  String get productName;
  @override
  @JsonKey(defaultValue: '')
  String get productDescription;
  @override
  @JsonKey(defaultValue: '')
  String get sku;
  @override
  @JsonKey(name: 'sku_price', defaultValue: '')
  String get skuPrice;
  @override
  @JsonKey(name: 'sku_packsize', defaultValue: '')
  String get skuPacksize;
  @override
  @JsonKey(name: 'sku_content', defaultValue: '')
  String get skuContent;
  @override
  @JsonKey(defaultValue: '')
  String get startingPrice;
  @override
  @JsonKey(defaultValue: '')
  String get productMRP;
  @override
  @JsonKey(defaultValue: '')
  String get productReview;
  @override
  @JsonKey(defaultValue: '')
  String get productRating;
  @override
  @JsonKey(defaultValue: [])
  List<String> get ingredientsList;
  @override
  @JsonKey(defaultValue: '')
  String get nutritionalInformation;
  @override
  @JsonKey(defaultValue: false)
  bool get isDeleted;
  @override
  @JsonKey(defaultValue: false)
  bool get isActive;
  @override
  @JsonKey(defaultValue: false)
  bool get isHighlighted;
  @override
  @JsonKey(defaultValue: false)
  bool get isQuickPick;
  @override
  @JsonKey(defaultValue: '')
  String get discount;
  @override
  @JsonKey(defaultValue: '')
  String get attributeName;
  @override
  @JsonKey(defaultValue: '')
  String get attributeItem;
  @override
  PriceDto get price;
  @override
  List<String> get productImages;
  @override
  @JsonKey(ignore: true)
  _$$QuickPicksDtoImplCopyWith<_$QuickPicksDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
