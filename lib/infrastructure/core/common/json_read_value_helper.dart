class JsonReadValueHelper {
  static Map<String, dynamic> readValueMapDynamic(Map json, String key) =>
      json[key] ?? <String, dynamic>{};

  static List<dynamic> readList(Map json, String key) => json[key] ?? [];

  static double roundToTwoDecimalPlaces(Map json, String key) {
    return double.tryParse(json[key].toStringAsFixed(2)) ?? 0.0;
  }
}
