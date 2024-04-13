abstract class PngImage {
  static const String _basePath = 'assets/png/';
  static const String _baseDemoPath = 'assets/demo/';

  static const String banner = '${_basePath}banner.png';
  static const String highlight1 = '${_basePath}highlight_1.png';
  static const String cartBannerLogo = '${_basePath}cart_banner_logo.png';
  static const String loginBackGround = '${_basePath}login_background.png';
  static const String planitLoginLogo = '${_basePath}planit_logo.png';

  static String generic(image) => '$_basePath$image';
  static String genericDemo(image) => '$_baseDemoPath$image';
}
