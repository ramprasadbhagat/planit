class HiveConstants {
  HiveConstants._();

  /// Type Id Constants
  static const int userTypeId = 0;
  static const int authTypeId = 1;
  static const int cartTypeId = 2;
  static const int pinCodeId = 3;
  static const int inventoryId = 4;

  /// hive adapter constants
  static const String userAdapter = 'UserAdapter';
  static const String authAdapter = 'AuthAdapter';
  static const String cartAdapter = 'CartAdapter';
  static const String pinCodeAdapter = 'PinCodeAdapter';
  static const String inventoryAdapter = 'InventoryAdapter';

  /// hive box name constants
  static const String authBox = 'AuthBox';
  static const String cartBox = 'CartBox';
  static const String pinCodeBox = 'PinCodeBox';
}
