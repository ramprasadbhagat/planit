import 'dart:ui';

import 'package:flutter/material.dart';
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
    'Order Received': AppColors.skyBlueColor,
    'Processing': AppColors.orange,
    'Dispatched': AppColors.orange,
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
