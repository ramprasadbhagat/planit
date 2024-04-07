import 'package:freezed_annotation/freezed_annotation.dart';

part 'quick_pick.freezed.dart';

@freezed
class QuickPick with _$QuickPick {
  factory QuickPick({
    required String title,
    required String image,
    required bool editable,
  }) = _QuickPick;
}
