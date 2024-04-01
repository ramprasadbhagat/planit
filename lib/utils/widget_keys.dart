import 'package:flutter/material.dart';

class WidgetKeys {
  //============================================================
  //  Generic Key
  //============================================================
  static Key genericKey({required String key}) => Key(key);

  //============================================================
  //  COMMON
  //============================================================

  static const Key homeTabBar = Key('homeTabBar');
  static const Key shopPage = Key('shopPage');
  static const Key readPage = Key('readPage');
  static const Key planPage = Key('planPage');
}
