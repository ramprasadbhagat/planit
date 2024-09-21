import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:planit/domain/core/value/constant.dart';
import 'package:planit/presentation/theme/colors.dart';

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

bool isEqualsIgnoreCase(String value, String matcher) =>
    value.trim().toLowerCase() == matcher.trim().toLowerCase();

String getOrderStatusText(String status) {
  switch (status) {
    case 'Order_Received':
      return 'Order Received';
    case 'In_Process':
      return 'Processing';
    case 'Dispatched':
      return 'Dispatched';
    case 'Delivered':
      return 'Delivered';
    case 'Cancelled':
      return 'Cancelled';
    default:
      return 'Order Received';
  }
}

Color getOrderStatusTagColor(String status) {
  const statusColors = {
    'Order Received': AppColors.blue,
    'Processing': AppColors.orange,
    'Dispatched': AppColors.purple,
    'Delivered': AppColors.green,
    'Cancelled': AppColors.red,
  };

  return statusColors[status] ?? AppColors.grey;
}

int getOrderStatusTrackIndex(String status) {
  const statusColors = {
    'Order Received': 0,
    'Processing': 1,
    'Dispatched': 2,
    'Delivered': 3,
    'Cancelled': 4,
  };

  return statusColors[status] ?? 0;
}

Color getOrderStatusTagLabelColor(String status) {
  const statusColors = {
    'Order Received': AppColors.white,
    'Processing': AppColors.white,
    'Dispatched': AppColors.white,
    'Delivered': AppColors.white,
    'Cancelled': AppColors.white,
  };

  return statusColors[status] ?? AppColors.black;
}

Icon getOrderStatusOrderListIcon(String status) {
  switch (status) {
    case 'Delivered':
      return const Icon(
        Icons.circle,
        color: AppColors.green,
        size: 10,
      );
    case 'Order Received':
    case 'Processing':
    case 'Dispatched':
    case 'Cancelled':
      return const Icon(
        Icons.local_shipping_outlined,
        color: AppColors.black,
        size: 20,
      );
    default:
      return const Icon(
        Icons.local_shipping_outlined,
        color: AppColors.black,
        size: 20,
      );
  }
}

bool hasLengthN(String text, int n) {
  final pattern = RegExp('^.{$n}\$'); // matches any string of length n

  return pattern.hasMatch(text);
}

bool isNotEmpty(String text) {
  final pattern =
      RegExp(r'^\s*$'); // matches any string is not empty or white space

  return !pattern.hasMatch(text);
}

bool isNumericOnly(String text) => RegExp(r'^\d+$').hasMatch(text);
int getDateTimeIntValue(String value) =>
    isNumericOnly(value) ? int.parse(value) : 0;

DateTime? tryParseDateTime(String input) {
  if (isNotEmpty(input)) {
    try {
      //Case 'date|time' example: '20230905|1693894295'
      if (RegExp(r'^\d{8}\|\d*$').hasMatch(input)) {
        final parts = input.split('|');
        final dateStr = parts.first;
        final date = DateTime.parse(dateStr);

        final timeStr = parts[1];
        if (timeStr.isEmpty) {
          return DateTime.utc(
            date.year,
            date.month,
            date.day,
          ).toLocal();
        } else {
          final timestamp = int.parse(timeStr);
          final time = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);

          return DateTime.utc(
            date.year,
            date.month,
            date.day,
            time.hour,
            time.minute,
            time.second,
          ).toLocal();
        }
      }

      //Case Date and Time(YYYY-MM-DD HH:mm:ss)example: '2023-11-20 07:36:33'
      if (RegExp(r'^\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2}$').hasMatch(input)) {
        return DateFormat('yyyy-MM-dd HH:mm:ss').parse(input, true);
      }

      //Case Date and Time(MM/dd/yyyy HH:mm)example: '01/30/2024 04:32'
      if (RegExp(r'^\d{1,2}/\d{1,2}/\d{4} \d{1,2}:\d{1,2}$').hasMatch(input)) {
        return DateFormat(DateTimeFormatString.announcementDateFormat)
            .parse(input, false)
            .toLocal();
      }

      //Case Date and Time and(MM/dd/yyyy HH:mm a)example: '01/30/2024 04:32 PM'
      if (RegExp(r'^\d{1,2}/\d{1,2}/\d{4} \d{1,2}:\d{1,2} (AM|PM)$')
          .hasMatch(input)) {
        return DateFormat(DateTimeFormatString.announcementDateFormat)
            .parse(input, false)
            .toLocal();
      }

      //input with format yyyyddmmhh
      final intVal = getDateTimeIntValue(input);
      if (intVal > 0) {
        final standardInput = input.padRight(14, '0');
        final year =
            int.parse(standardInput.characters.getRange(0, 4).toString());
        final month =
            int.parse(standardInput.characters.getRange(4, 6).toString());
        final day =
            int.parse(standardInput.characters.getRange(6, 8).toString());
        final hour =
            int.parse(standardInput.characters.getRange(8, 10).toString());
        final minute =
            int.parse(standardInput.characters.getRange(10, 12).toString());
        final second =
            int.parse(standardInput.characters.getRange(12, 14).toString());

        //if length is 10, then it convert dateTime till hour
        //yyyyddmmhh (only for principal Date)
        if (hasLengthN(input, 10)) {
          return DateTime.utc(year, month, day, hour).toLocal();
        }

        return DateTime(year, month, day, hour, minute, second).toLocal();
      } else {
        try {
          //input for announcement date
          return DateFormat.yMd().add_jm().parse(input);
        } catch (_) {
          //input for invoices date string with format yyyy-MM-dd
          return input.replaceAll(RegExp(r'^0+(?=.)'), '') == '0'
              ? null
              : DateTime.parse(input).toLocal();
        }
      }
    } on FormatException {
      return null;
    }
  }

  return null;
}

String convertHoursIn12HrsFormat(
  String text,
  String format,
) {
  var amPm = 'AM';
  final parsedDate = tryParseDateTime(text);
  if (parsedDate == null) {
    return text;
  }

  var hours = int.tryParse(
        DateFormat(format)
            .format(parsedDate)
            //remove time part if time is 00:00:00
            .replaceFirst(' 00:00:00', ''),
      ) ??
      0;
  if (hours >= 12) {
    if (hours > 12) hours -= 12;
    amPm = 'PM';
  } else if (hours == 0) {
    hours = 12;
    amPm = 'AM';
  }
  return '$hours $amPm';
}

String displayDateTimeString(
  String text,
  String format,
) {
  final parsedDate = tryParseDateTime(text);
  if (parsedDate == null) {
    return text;
  }

  return DateFormat(format)
      .format(parsedDate)
      //remove time part if time is 00:00:00
      .replaceFirst(' 00:00:00', '');
}

bool getIsGretharThanZero(int quantity) => quantity <= 0;
