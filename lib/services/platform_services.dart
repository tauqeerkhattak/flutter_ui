import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PlatformServices {
  static const platform = MethodChannel('DEFAULT_CHANNEL');

  static void showToast(BuildContext context) {
    try {
      platform.invokeMethod('showToast');
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Can get Data'),
        ),
      );
    }
  }
}
