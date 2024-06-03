abstract class PngImage {
  static const String _basePath = 'assets/png/';

  static const String placeholder = '${_basePath}placeholder.png';
  static const String cartBannerLogo = '${_basePath}cart_banner_logo.png';
  static const String loginBackGround = '${_basePath}login_background.png';
  static const String planitLoginLogo = '${_basePath}planit_logo.png';
  static const String appPngimageLogo = '${_basePath}appPngimage.png';

  static String generic(image) => '$_basePath$image';
}
