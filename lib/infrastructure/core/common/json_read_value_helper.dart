class JsonReadValueHelper {
  static Map<String, dynamic> readValueMapDynamic(Map json, String key) =>
      json[key] ?? <String, dynamic>{};

  static List<dynamic> readList(Map json, String key) => json[key] ?? [];
}
