String naIfEmpty(String text) {
  return text.isEmpty ? 'NA' : text;
}

String capitalizeFirst(String text) {
  if (text.isEmpty) {
    return text;
  }
  return text[0].toUpperCase() + text.substring(1);
}

bool isMinCharacter({required String input, required int minLength}) =>
    input.length >= minLength;
