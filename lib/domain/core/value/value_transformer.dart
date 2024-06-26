import 'package:flutter/material.dart';

String naIfEmpty(String text) {
  return text.isEmpty ? 'NA' : text;
}

String getValidPhoneNumber(String text) {
  return text.replaceAll(RegExp(r'[^\d]+'), '').characters.take(16).toString();
}

String getValidOTP(String text) {
  return text.replaceAll(RegExp(r'[^\d]+'), '').characters.take(4).toString();
}

String capitalizeFirst(String text) {
  if (text.isEmpty) {
    return text;
  }
  return text[0].toUpperCase() + text.substring(1);
}
