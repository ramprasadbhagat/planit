abstract class PngImage {
  static const String _basePath = 'assets/png/';
  static const String banner = '${_basePath}banner.png';
  static const String highlight1 = '${_basePath}highlight_1.png';
  static String generic(image) => '$_basePath$image';
}
