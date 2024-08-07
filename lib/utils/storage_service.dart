import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:planit/domain/auth/entities/auth.dart';
import 'package:planit/domain/auth/entities/user.dart';
import 'package:planit/domain/cart/entities/cart_product_local.dart';
import 'package:planit/utils/hive_constants.dart';

class StorageService {
  late Box<Auth> _authBox;
  late Box<CartProductLocal> _cartProductLocalBox;

  Future init() async {
    if (!kIsWeb) {
      final tempDir = await getTemporaryDirectory();
      final path = tempDir.path;
      Hive.init(path);
    }
    _registAdapters();
    await _openBox();
  }

  void _registAdapters() {
    Hive.registerAdapter(UserAdapter());
    Hive.registerAdapter(AuthAdapter());
    Hive.registerAdapter(CartAdapter());
  }

  Future<void> _openBox() async {
    _authBox = await Hive.openBox<Auth>(HiveConstants.authBox);
    _cartProductLocalBox =
        await Hive.openBox<CartProductLocal>(HiveConstants.cartBox);
  }

  Future<void> addAuthData(Auth auth) async {
    await _authBox.add(auth);
  }

  Future<Auth> getAuthData(int index) async {
    if (index < _authBox.length) {
      return _authBox.getAt(index) ?? Auth.empty();
    }
    return Auth.empty();
  }

  String getBearerToken() {
    if (_authBox.isNotEmpty) {
      final token = _authBox.getAt(0)!.token;
      return 'Bearer $token';
    }
    return '';
  }

  String getUserId() {
    final id = _authBox.getAt(0)!.user.id;
    return id;
  }

  Future<void> deleteAuthData(int index) async {
    await _authBox.deleteAt(index);
  }

  Future<void> clearAllAuthData() async {
    await _authBox.clear();
  }

  Future<void> addCartData(CartProductLocal cartProductLocal) async {
    final index = _cartProductLocalBox.values.toList().indexWhere(
          (element) =>
              element.productId == cartProductLocal.productId &&
              element.attributeItemId == cartProductLocal.attributeItemId,
        );
    if (index != -1) {
      await _cartProductLocalBox.putAt(index, cartProductLocal);
    } else {
      // Item does not exist, add it
      await _cartProductLocalBox.add(cartProductLocal);
    }
  }

  Future<List<CartProductLocal>> getCartData() async {
    final cartproduct = <CartProductLocal>[];
    if (_cartProductLocalBox.isNotEmpty) {
      for (final element in _cartProductLocalBox.values) {
        cartproduct.add(element);
      }
      return cartproduct;
    }
    return [];
  }

  Future<void> deleteCartData(int index) async {
    await _cartProductLocalBox.deleteAt(index);
  }

  Future<void> clearAllCartData() async {
    await _cartProductLocalBox.clear();
  }
}
