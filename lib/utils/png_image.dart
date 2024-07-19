abstract class PngImage {
  static const String _basePath = 'assets/png/';

  static const String placeholder = '${_basePath}placeholder.png';
  static const String cartBannerLogo = '${_basePath}cart_banner_logo.png';
  static const String loginBackGround = '${_basePath}login_background.png';
  static const String planitLoginLogo = '${_basePath}planit_logo.png';
  static const String appPngimageLogo = '${_basePath}appPngimage.png';
  static const String creditCard = '${_basePath}card.png';
  static const String orderStatusImage = '${_basePath}group.png';
  static const String orderItem1 = '${_basePath}orderItem1.png';
  static const String orderItem2 = '${_basePath}orderItem2.png';
  static const String dollar = '${_basePath}dollar.png';
  static const String coupon = '${_basePath}coupon.png';
  static const String orderItemIcon = '${_basePath}orderItemIcon.png';
  static const String location = '${_basePath}location.png';
  static const String oos = '${_basePath}oos.png';
  static const String stock = '${_basePath}stock.png';
  static String generic(image) => '$_basePath$image';
}
