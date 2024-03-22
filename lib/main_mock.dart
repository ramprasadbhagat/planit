import 'package:flutter/material.dart';
import 'package:planit/app.dart';
import 'package:planit/config.dart';

void main() async {
  await initialSetup(flavor: Flavor.mock);
  runApp(const App());
}
